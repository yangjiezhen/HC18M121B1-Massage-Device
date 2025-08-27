#ifndef __motor1__
#define __motor1__

typedef unsigned int uint16_t;
typedef unsigned char uint8_t;
#include "ALL.h"
#include <stdint.h>

// 电机方向枚举
typedef enum 
{
    DIRECTION_FORWARD,  // 正转
    DIRECTION_REVERSE   // 反转
} MotorDirection;

// 电机模式枚举
typedef enum 
{
    MODE_INITIAL,       // 初始模式
    MODE_A,             // 模式A
    MODE_B,             // 模式B
    MODE_C              // 模式C
} MotorMode;

// 电机速度档位枚举
typedef enum
{
    SPEED_85,           // 85%速度
    SPEED_70,           // 70%速度
    SPEED_100,          // 100%速度
    SPEED_COUNT         // 速度档位总数（用于循环切换）
} MotorSpeed;



// 模式运行状态枚举（内部使用，头文件中声明便于调试）
typedef enum 
{
    MODE_STATE_RUNNING,  // 运行中
    MODE_STATE_STOPPED   // 停止中
} ModeState;

// 模式参数结构体（内部使用）
typedef struct
{
    uint16_t work_duration;        // 工作时长(ms) 
    uint16_t stop_duration;        // 停止时长(ms)
    uint8_t  auto_dir_switch;      // 是否自动切换方向(1=是/0=否)
    uint16_t dir_switch_interval;  // 自动切换方向的间隔(ms)
} ModeParams;

// 模式运行时状态结构体（内部使用）
typedef struct 
{
    ModeState state;               // 当前状态
    uint16_t timer;                // 计时计数器(ms)
    uint16_t dir_switch_timer;     // 换向间隔计时(ms)
} ModeRuntime;

// 公开接口声明
void Motor_Init(void);
void Motor_Start(void);
void Motor_Stop(void);
void Motor_ToggleDirection(void);
void Motor_ToggleSpeed(void);
void Motor_ToggleMode(void);
MotorMode Motor_GetMode(void);
void Motor_SetMode(MotorMode new_mode);
MotorDirection Motor_GetDir(void);
MotorSpeed Motor_GetSpeed(void);
void Motor_Process(void);         // 电机运行逻辑处理（每1ms调用）

#endif
    