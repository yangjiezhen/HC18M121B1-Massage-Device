
#ifndef __key_1__
#define __key_1__
#include <hc18m121b1.h>
#include "holychip_define.h"

/* Key Definitions - Map S1~S12 to Functional Names */

#define KEY_S1_MODE       1   // 模式键 (Mode)
#define KEY_S2_ENERGY_SAVE 2  // 节能键 (Energy Save)
#define KEY_S5_HEAT       5   // 加热键 (Heat)
#define KEY_S8_SPEED      8   // 调速键 (Speed Control, 暂不使用)
#define KEY_S10_REVERSE   10  // 正反转键 (Reverse)
#define KEY_S12_POWER     12  // 开关机键 (Power On/Off)
extern unsigned char final_key;

extern unsigned char key;
void keymode0_configuration(void);
void keymode1_configuration(void);
void keymode2_configuration(void);
void key_weiread(void);
void key_tick(void);
void DelayUs2x(unsigned char t);
unsigned char key_check(unsigned char n);

#endif