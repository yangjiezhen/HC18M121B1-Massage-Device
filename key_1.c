#include <hc18m121b1.h>
#include "holychip_define.h"
#include "key_1.h"
#include "PWM.h"
unsigned char key = 0;         // 按键扫描值临时存储
unsigned char final_key = 0;   // 按键处理后的最终有效值
unsigned char key_mode = 0; 
void keymode0_configuration(void)
{
	ANSELL=0X00;		//1=AD模拟模式 0=I/O数字模式
//	ANSELH=0X00;		//1=AD模拟模式 0=I/O数字模式
	
	TRISA=0XFF;			//1=输入 0=输出
				//1=输入 0=输出
	
	
	PORTA=0XFF;			//1=高电平 , 0=低电平             
				//1=高电平 , 0=低电平

	
	PHCON1=0X00;			//1=禁用上拉 ,0=启用上拉 
	PHCON=0XFF;			//1=禁用上拉 ,0=启用上拉
	
	
	PDCON1=0XFF;			//1=禁用下拉 ,0=启用下拉
	PDCON=0XFF;			//1=禁用下拉 ,0=启用下拉

	
	IOCA=0X00;			//0=禁用弱上拉 	,1=启用弱上拉 
	IOCB=0X00;			//0=禁用弱上拉 	,1=启用弱上拉 

//	PAIE=0;			//0=禁用端口电平变化中断 ,1=启用端口电平变化中断
}
void keymode1_configuration(void)
{
//   拉高PA4（Button1）  Button2 Button3为下拉输入

	TRISA=0XEF;			//PA口：IO配置 1110 1111 PA4输出1 
				
	
	
	PORTA=0XFF;			//1=高电平 , 0=低电平             
				

	
	PHCON1=0XFF;		//1=禁用上拉 ,0=启用上拉 

	
	
	PDCON1=0x00;			//1=禁用下拉 ,0=启用下拉

}
void keymode2_configuration(void)
{
//   拉高PA7（Button3）Button1 Button2为下拉输入

	TRISA=0X7F;			//PA口：1=输入 0=输出  
				
	
	
	PORTA=0XFF;			//1=高电平 , 0=低电平             
				

	
	PHCON1=0XFF;		//1=禁用上拉 ,0=启用上拉 0000 1111

	
	
	PDCON1=0x00;			//1=禁用下拉 ,0=启用下拉

}
void keymode3_configuration(void)
{
//   拉高PA6（Button2）Button1 Button3为下拉输入

	
	TRISA=0XBF;			//PA口：1=输入 0=输出  1011 1111
				
	
	
	PORTA=0XFF;			//1=高电平 , 0=低电平             
				

	
	PHCON1=0XFF;		//1=禁用上拉 ,0=启用上拉 

	
	
	PDCON1=0x00;			//1=禁用下拉 ,0=启用下拉
}
void DelayUs2x(unsigned char t)
{   
 while(--t);
}

void key_scan(void)
{
		
		 key=0;
		 if(key_mode==0)
		 {
			 keymode0_configuration();			
			 DelayUs2x(10);
			 if(PORTA7==0)//检测按键10
			 {
			 	key=10;key_mode=0;return;
			 }
		   	 if(PORTA6==0)//检测按键12
			 {
			 	key=12;key_mode=0;return;
			 }
		 	 if(PORTA4==0)//检测按键5
			 {
			 	key=5;key_mode=0;return;
			 }
			 else 
			 {
			 	key_mode=1;
			 }
		 }
		 if(key_mode==1)
		 {
			keymode1_configuration();
		    DelayUs2x(10);
			if(PORTA7==1)
			{
				key=1;key_mode=0;return;//s1模式
			}
			else
			{
				key_mode=2;
			}	
		 }
		if(key_mode==2)
		{
			keymode3_configuration();
			DelayUs2x(10);
			
			if (PORTA4==1)
			{
				key=2;key_mode=0;return;//s2节能
			}
			else
			{
				key_mode=3;
			}
			
		}
		if(key_mode==3)
		{
			key_mode=0;
			keymode2_configuration();
			DelayUs2x(10);
			if(PORTA6==1)
			{
				key=8;return;//s8调速
			}

		}


	


		
}


// 按键消抖处理函数，建议每1ms调用一次

void key_tick(void)
{
    static unsigned char stable_cnt = 0;  // 按键稳定计数器
    static unsigned char last_key = 0;    // 上一次按键值
    static unsigned char key_released = 1; // 按键释放标志(1=已释放,0=未释放)
    
    key_scan(); // 扫描按键
    
    if (key == last_key)
    {
        // 按键状态稳定计数,累计到40(约40ms)认为状态稳定
        if (stable_cnt < 40)
            stable_cnt++;
        else
        {
            // 按键按下且之前处于释放状态时,更新最终按键值并标记为未释放
            if (key != 0 && key_released == 1)
            {
                final_key = key;
                key_released = 0; // 标记按键未释放
            }
            // 按键释放时,清除最终按键值并标记为已释放
            else if (key == 0)
            {
                final_key = 0;
                key_released = 1;
            }
        }
    }
    else
    {
        // 按键状态变化,重置稳定计数器并更新上一次按键值
        stable_cnt = 0;
        last_key = key;
    }
}

    