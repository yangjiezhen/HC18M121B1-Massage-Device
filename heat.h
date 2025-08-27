#ifndef HEAT_H
#define HEAT_H



// 加热模式枚举
typedef enum 
{
    HEAT_MODE_OFF,        // 全功率加热
    HEAT_MODE_HALF,       // 半功率加热（PWM模式）
    HEAT_MODE_ON
} HeatMode;

// 加热功率等级枚举



// 外部可访问的全局变量声明（实际定义在.c文件中）
extern HeatMode current_heat_mode;     // 当前加热模式


// 函数声明
void hardware_set_heat(HeatMode mode);
void hardware_pwm_control(uint8_t enable);
void hardware_set_half_power(void);
void hardware_stop_heat(void);
void Heat_Init(void);
void Heat_Start(void);
void Heat_Stop(void);
void Heat_SetMode(HeatMode mode);
void Heat_Toggle(void);
void HEAT_EnergySave(void);


#endif // HEAT_H
    