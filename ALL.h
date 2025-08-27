#ifndef __ALL__
#define __ALL__

// 1. 先定义基础类型和枚举（被其他模块依赖）
typedef unsigned int uint16_t;
typedef unsigned char uint8_t;

typedef enum {
    SYSTEM_OFF,
    SYSTEM_ON
} SystemState;

extern SystemState sys_state;
SystemState System_GetState(void);

// 3. 最后包含其他头文件（此时已定义基础类型）
#include "holychip_define.h"
#include "inital.h"
#include <hc18m121b1.h>
#include "key_1.h"
#include "PWM.h"
#include "motor1.h"
#include "main.h"
#include"heat.h"

#endif