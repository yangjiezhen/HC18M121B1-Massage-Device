#include "ALL.h"



void DelayMs(unsigned int t)
{
     
 while(t--)
 {
     //大致延时1mS
     DelayUs2x(120);
	 DelayUs2x(125);
 }
}

//////////////////////////////////////////////////////////////////////
//////////////////////////    变量定义    ////////////////////////////
//////////////////////////////////////////////////////////////////////

typedef unsigned char uchar;
typedef unsigned int uint; 

// 全局变量声明（保持原有，不额外添加）
SystemState sys_state = SYSTEM_OFF;  // 系统状态默认关闭
uint shutdown_timer = 15 * 60;       // 15分钟定时关机（秒）

//////////////////////////////////////////////////////////////////////
//////////////////////////    主程序    //////////////////////////////
//////////////////////////////////////////////////////////////////////
void main(void)
{

	ramInitial();		//清RAM							
	inital();
	T0_sysinitial();
//	sysinitial();		//系统初始化(需要T0中断再打开)
		
	DelayMs(100);		//延时等待系统供电稳定
	
    while(1)
    {
        if (final_key != 0)
        {
            // 处理按键动作
            switch(final_key)
            { 
              	case KEY_S12_POWER: 
				if (sys_state==SYSTEM_OFF)//关机状态时按下
				{
					sys_state=SYSTEM_ON;//设为开机
					Motor_Init();
                    Motor_Start();//写电机，加热模块 初始代码
					Heat_Init(); // 初始化加热器模块	
                    Heat_Start(); // 启动加热器
				}
				else 
				{
					sys_state=SYSTEM_OFF;//关机
					Motor_Stop();	//各个外设stop
                    Heat_Stop();	//停止加热器
				}
				break; 
               case KEY_S5_HEAT:
				    if (sys_state == SYSTEM_ON) 
					{
                       Heat_Toggle();
                    }
                    break; 
                case KEY_S10_REVERSE: 
                    if (sys_state == SYSTEM_ON) 
					{
                        Motor_ToggleDirection();			 //电机反转
                        
                        if (Motor_GetMode() != MODE_INITIAL) // 如果在A/B/C模式，回到初始模式
						{
                            Motor_SetMode(MODE_INITIAL);
                        }
                        Motor_Start(); // 确保电机启动
                    }
                    break; 
                case KEY_S2_ENERGY_SAVE://控制节能的开关
                    if (sys_state == SYSTEM_ON)
                    {
                        HEAT_EnergySave();
                    }break;

                case KEY_S8_SPEED:  	 
                    if (sys_state == SYSTEM_ON) 
                        {
                            // 直接调用电机模块的公开接口切换速度
                            Motor_ToggleSpeed();
                        }
                        break;
                    					 
                case KEY_S1_MODE:
                    if (sys_state == SYSTEM_ON) 
                        {
                            // 1. 模式切换前先停止电机（增强安全性）
                            Motor_Stop();
                            
                            // 2. 保留原有核心切换逻辑：A→B→C→A循环（跳过初始模式）
                            MotorMode current = Motor_GetMode();
                            current = (MotorMode)((current + 1) % 4);
                            if (current == MODE_INITIAL) 
                            {
                                current = MODE_A; // 跳过初始模式
                            }
                            
                            // 3. 应用新模式
                            Motor_SetMode(current);
                            
                            // 4. 增加用户感知反馈：停1s并切换方向
                            DelayMs(1000);                // 停
                            Motor_ToggleDirection();     // 切换方向
                            Motor_Start();               // 以新模式和新方向启动电机
                        }
                        break; 	
            }
            final_key=0;
        }
    }
}
// 获取当前系统状态
SystemState System_GetState(void) 
{
    return sys_state;
}

// 系统定时处理（1秒调用一次）
void System_TimerHandler(void) 
{	static unsigned int i ;
    if (sys_state == SYSTEM_ON) 
	{	
		i++;
        // 处理15分钟定时关机
		if (i>=1000)
		{
			i=0;        
			if (shutdown_timer > 0)
		 {
            shutdown_timer--;
            if (shutdown_timer == 0) 
			{
                // 定时时间到，关机
                sys_state = SYSTEM_OFF;
                Motor_Stop();
             	Heat_Stop();
            }
         }
		}
    }
}

//*****************************中断服务程序*****************************

void interrupt Timer0_Isr(void)//1ms一次
{
	
	if(T0IF)
	{
		T0IF=0;				//清除T0IF
		T0=0xF0;			//重置T0值,延时5ms,理论值为0XCE，由于需要补偿其他语句的延时所以需要试凑为0XD9
		key_tick();
		System_TimerHandler();
		Motor_Process(); // 处理电机逻辑
        hardware_set_half_power(); // 设置半功率加热
        

	}
		if		(T1IF)			//等待T1溢出
	{
			T1IF=0;			//清除中断标志
			T1IE=1;
			TRISB2=0;		//输出
	}
			if		(T2IF)			//等待T2溢出
	{
			T2IF=0;			//清除中断标志
			T2IE=1;
			TRISB3=0;		//输出
	}
}
