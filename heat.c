#include "ALL.h"
#include "heat.h"
// 全局变量定义
static uint8_t pwm_enabled = 0; // 0: 关闭PWM, 1: 开启PWM
HeatMode current_heat_mode;     // 当前加热模式

/**
 * @brief 硬件层：设置加热器的工作模式
 * @param mode 加热模式（HEAT_MODE_ON/HEAT_MODE_HALF/HEAT_MODE_OFF等）
 * @note 该函数直接操作硬件
 */
void hardware_set_heat(HeatMode current_heat_mode)
{
    // 根据模式设置加热器
    switch (current_heat_mode)
    {
        case HEAT_MODE_ON:
            hardware_pwm_control(0); // 关闭PWM
            PORTB0 = 1;   // 设置全功率加热
            break;
            
        case HEAT_MODE_HALF:
            hardware_pwm_control(1); // 开启PWM
            break;
            
        case HEAT_MODE_OFF:
            hardware_pwm_control(0);
            hardware_stop_heat();
            break;
    }
}

// 控制PWM开关的函数
void hardware_pwm_control(uint8_t enable)
{
    pwm_enabled = enable;
    if (!enable)
    {
        PORTB0 = 0; // 关闭时确保输出低电平
    }
}

// 设置半功率模式，在T0（1ms）中调用来模拟pwm，频率为100HZ
void hardware_set_half_power(void)
{
    static uint8_t pwm_value = 0;
    
    // 如果PWM未启用，直接返回
    if (!pwm_enabled)
        return;
    
    if (pwm_value >= 10) 
    {
        pwm_value = 0;  // 重置PWM计数
    }
    
    // 占空比50%的PWM控制
    if (pwm_value < 5)
    {
        PORTB0 = 1;  // 输出高电平
    }
    else
    {
        PORTB0 = 0;  // 输出低电平
    }
    
    pwm_value++; 
}

/**
 * @brief 硬件层：停止加热器工作
 */
void hardware_stop_heat(void)
{
    TRISB=0X00;
    PORTB0 = 0; // 确保输出低电平
}

/**
 * @brief 初始化加热器模块
 */
void Heat_Init(void)
{
    // 初始化加热器状态为关闭
    current_heat_mode = HEAT_MODE_OFF;

    // 可添加硬件初始化代码（如GPIO配置为输出）
    PORTB0 = 0; // 初始输出低电平
}

/**
 * @brief 启动加热器（根据当前模式和等级）
 */
void Heat_Start(void)
{
    hardware_set_heat(current_heat_mode);
}

/**
 * @brief 停止加热器
 */
void Heat_Stop(void)
{
    hardware_stop_heat();
    hardware_pwm_control(0);
    current_heat_mode = HEAT_MODE_OFF;
}

/**
 * @brief 设置加热器工作模式
 * @param mode 目标加热模式
 */
void Heat_SetMode(HeatMode newmode)
{
    // 更新当前模式
    current_heat_mode = newmode;
}

/**
 * @brief 切换加热器的开关状态，用户层
 */
void Heat_Toggle(void)
{
    // 切换加热器状态
    if (current_heat_mode == HEAT_MODE_OFF)
    {
        Heat_SetMode(HEAT_MODE_ON);
        hardware_set_heat(current_heat_mode); // 更新硬件状态  // 当前关闭则切换为开启
    }
    else if (current_heat_mode == HEAT_MODE_ON)
    {
        Heat_SetMode(HEAT_MODE_OFF);
        hardware_set_heat(current_heat_mode); // 更新硬件状态  // 当前开启则切换为关闭
    }
    else if (current_heat_mode == HEAT_MODE_HALF)
    {
        Heat_SetMode(HEAT_MODE_OFF); // 当前半功率则切换为关闭
        hardware_set_heat(current_heat_mode); // 更新硬件状态
    }
 
}
/**
 * @brief 用户层，控制节能模式的开和关
 */
void HEAT_EnergySave(void)
{
    // 根据节能模式状态设置加热器
    if (current_heat_mode == HEAT_MODE_ON)
    {
        Heat_SetMode(HEAT_MODE_HALF); // 切换到半功率模式
        hardware_set_heat(current_heat_mode);
    }
    else if (current_heat_mode == HEAT_MODE_HALF)
    {
        Heat_SetMode(HEAT_MODE_ON); // 切换到全功率模式
        hardware_set_heat(current_heat_mode);
    }

}

