#include "motor1.h"
#include "ALL.h"


// 全局状态变量（仅模块内部可见）
static MotorDirection current_dir;    // 当前电机方向
static MotorMode current_mode;        // 当前工作模式
static MotorSpeed current_speed;      // 当前速度档位

// 模式参数和运行时状态（模块内部变量）
static ModeParams mode_params;
static ModeRuntime mode_runtime;

// 速度值映射表（内部参数，关联档位与PWM硬件参数）
static const uint16_t pwm_map[SPEED_COUNT] = 
{
    PWM_85,   // SPEED_85对应PWM_85
    PWM_70,   // SPEED_70对应PWM_70
    PWM_100   // SPEED_100对应PWM_100
};


// -------------------------- 内部接口（模块私有） --------------------------

/**
 * @brief 硬件层：停止电机
 * @note 内部函数，通过同时开启两个PWM通道使电机停止
 */
static void hardware_stop_motor(void)
{
    nPWM1(PWM_0);  // 通道1全导通
    nPWM2(PWM_0);  // 通道2全导通
}

/**
 * @brief 硬件层：设置电机运行参数
 * @param dir 电机方向（正转/反转）
 * @param speed 速度档位（SPEED_85/SPEED_70/SPEED_100）
 * @note 内部函数，直接操作PWM硬件，根据方向选择输出通道
 */
static void hardware_set_motor(MotorDirection dir, MotorSpeed speed)
{
    if (dir == DIRECTION_FORWARD) 
    {
        nPWM1(pwm_map[speed]);  // 正转：通道1输出PWM，通道2关闭
        nPWM2(PWM_0);
    } 
    else 
    {
        nPWM1(PWM_0);           // 反转：通道2输出PWM，通道1关闭
        nPWM2(pwm_map[speed]);
    }
}


// -------------------------- 公开接口实现 --------------------------

/**
 * @brief 电机初始化
 * @note 公开接口，初始化电机状态为默认值并停止电机
 */
void Motor_Init(void) 
{
    // 初始化默认状态
    current_dir = DIRECTION_FORWARD;  // 默认正转
    current_mode = MODE_INITIAL;      // 默认初始模式
    current_speed = SPEED_85;         // 默认85%速度
    
    // 初始化模式参数和运行时状态
    mode_runtime.state = MODE_STATE_STOPPED;
    mode_runtime.timer = 0;
    mode_runtime.dir_switch_timer = 0;
    
    // 初始化初始模式的参数
    Motor_SetMode(MODE_INITIAL);
    
    hardware_stop_motor();  // 初始化时确保电机处于停止状态
}

/**
 * @brief 启动电机
 * @note 公开接口，使用当前设置的方向和速度参数启动电机
 */
void Motor_Start(void)
{
    hardware_set_motor(current_dir, current_speed);
}

/**
 * @brief 停止电机
 * @note 公开接口，通过硬件层函数停止电机运行
 */
void Motor_Stop(void)
{
    hardware_stop_motor();
}

/**
 * @brief 切换电机方向（正转→反转/反转→正转）
 * @note 公开接口，切换前会先停止电机，确保安全切换
 */
void Motor_ToggleDirection(void)
{
    Motor_Stop();  // 切换方向前先停止电机
    
    // 切换方向状态
    current_dir = (current_dir == DIRECTION_FORWARD) ? 
                  DIRECTION_REVERSE : DIRECTION_FORWARD;
}

/**
 * @brief 循环切换速度档位
 * @note 公开接口，切换后实时更新电机速度
 */
void Motor_ToggleSpeed(void)
{
    // 循环切换档位（取模运算实现循环）
    current_speed = (current_speed + 1) % SPEED_COUNT;
    
    // 实时更新速度（无需停止电机，直接切换PWM）
    hardware_set_motor(current_dir, current_speed);
}

/**
 * @brief 循环切换工作模式（初始模式→A→B→C→初始模式...）
 * @note 公开接口，模式切换前会先停止电机
 */
void Motor_ToggleMode(void)
{
    Motor_Stop();  // 模式切换前先停止电机
    
    // 循环切换模式（0-3循环，对应4种模式）
    current_mode = (current_mode + 1) % 4;    
    // 应用新模式参数
    Motor_SetMode(current_mode);
}

/**
 * @brief 获取当前工作模式
 * @return 当前模式（MODE_INITIAL/MODE_A/MODE_B/MODE_C）
 * @note 公开接口，供外部模块查询当前模式
 */
MotorMode Motor_GetMode(void)
{
    return current_mode;
}

/**
 * @brief 设置电机工作模式并初始化对应参数
 * @param new_mode 目标模式（MODE_INITIAL/MODE_A/MODE_B/MODE_C）
 * @note 被模式按键调用，负责更新模式状态并配置模式专属时序
 */
void Motor_SetMode(MotorMode new_mode)
{
    // 1. 记录新模式（覆盖当前模式）
    current_mode = new_mode;
    
    // 2. 重置计时参数
    mode_runtime.timer = 0;
    mode_runtime.dir_switch_timer = 0;
    
    // 3. 根据新模式初始化时序参数（与模式特性匹配）
    switch (new_mode)
    {
        case MODE_INITIAL:
            // 初始模式：工作1分钟，停1秒，60秒切换方向
            mode_params.work_duration = 60000;
            mode_params.stop_duration = 1000;
            mode_params.auto_dir_switch = 1;
            mode_params.dir_switch_interval = 60000;
            break;
            
        case MODE_A:
            // 模式A：工作1.5秒，停0.5秒，60秒切换一次方向
            mode_params.work_duration = 1500;
            mode_params.stop_duration = 500;
            mode_params.auto_dir_switch = 1;
            mode_params.dir_switch_interval = 60000;
            break;
            
        case MODE_B:
            // 模式B：工作2秒，停0.5秒，每次停后切换方向
            mode_params.work_duration = 2000;
            mode_params.stop_duration = 500;
            mode_params.auto_dir_switch = 1;
            mode_params.dir_switch_interval = 0;  // 0表示每次停止后切换
            break;
            
        case MODE_C:
            // 模式C：工作1秒，停0.5秒，保持方向不切换
            mode_params.work_duration = 1000;
            mode_params.stop_duration = 500;
            mode_params.auto_dir_switch = 0;      // 禁止自动切换方向
            mode_params.dir_switch_interval = 0;
            break;
    }
    
    // 4. 重置模式运行状态（确保从初始阶段开始）
    mode_runtime.state = MODE_STATE_STOPPED;
}

/**
 * @brief 电机运行逻辑处理（每1ms调用一次）
 * @note 处理工作/停止状态切换和自动换向逻辑，需在定时器中断中调用
 */
void Motor_Process(void)
{
    // 系统关机时不处理
    if (System_GetState() != SYSTEM_ON) return;

    // 1. 累加换向间隔计时（仅在需要自动换向的模式下）
    if (mode_params.auto_dir_switch && mode_params.dir_switch_interval > 0)
    {
        if (mode_runtime.dir_switch_timer < 65535)  // 防止16位溢出
        {
            mode_runtime.dir_switch_timer++;
        }
        else
        {
            mode_runtime.dir_switch_timer = 0;  // 溢出后重置
        }
    }

    // 2. 处理工作/停止状态切换
    if (mode_runtime.state == MODE_STATE_RUNNING)
    {
        // 工作时间到，进入停止状态
        if (mode_runtime.timer >= mode_params.work_duration)
        {
            Motor_Stop();
            mode_runtime.state = MODE_STATE_STOPPED;
            mode_runtime.timer = 0;

            // 模式B特殊处理：每次停止后立即换向
            if (current_mode == MODE_B && mode_params.auto_dir_switch)
            {
                Motor_ToggleDirection();
            }
        }
        else
        {
            if (mode_runtime.timer < 65535)  // 防止溢出
            {
                mode_runtime.timer++;
            }
        }
    }
    else  // MODE_STATE_STOPPED
    {
        // 停止时间到，进入运行状态
        if (mode_runtime.timer >= mode_params.stop_duration)
        {
            Motor_Start();
            mode_runtime.state = MODE_STATE_RUNNING;
            mode_runtime.timer = 0;
        }
        else
        {
            if (mode_runtime.timer < 65535)  // 防止溢出
            {
                mode_runtime.timer++;
            }
        }
    }

    // 3. 检测换向间隔是否到达（适用于初始模式和模式A）
    if (mode_params.auto_dir_switch && 
        mode_params.dir_switch_interval > 0 &&
        mode_runtime.dir_switch_timer >= mode_params.dir_switch_interval)
    {
        Motor_ToggleDirection();
        mode_runtime.dir_switch_timer = 0;  // 重置换向计时
        Motor_Start();  // 换向后重启电机
    }
}

/**
 * @brief 获取当前电机方向
 * @return 当前方向（DIRECTION_FORWARD/DIRECTION_REVERSE）
 */
MotorDirection Motor_GetDir(void)
{
    return current_dir;
}

/**
 * @brief 获取当前速度档位
 * @return 当前档位（SPEED_85/SPEED_70/SPEED_100）
 */
MotorSpeed Motor_GetSpeed(void)
{
    return current_speed;
}
    