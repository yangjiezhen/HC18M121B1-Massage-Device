/*  ************************************************************************************
*								上海芯圣电子股份有限公司
*								    www.holychip.cn
*	************************************************************************************
*/
#ifndef __HOLYCHIP_DEFINE__
#define __HOLYCHIP_DEFINE__
#include <hc18m121b1.h>
#define LOW		0
#define HIGH	1
#define FALSE	0
#define TRUE	1
#define asm(szCmd) __asm__(#szCmd);
typedef unsigned char BOOL;
//c: LOW/HIGH
#define SBIT(a, b, c) a = ( c ? (a|(0x01<<b)) : (a&(0xff-(0x01<<b))) )
//		SBIT(a, b, c)此函数是用来对PORT口单独位操作，
//		a=portX口（X=A/B/C/D/E/F）
//		b=PORT口（0、1、2、3、4、5、6、7）
//		c=输出电平（0、1对应低电平和高电平）
#define GBIT(a, b) (a&(0x01<<b))
//		GBIT(a, b)   此函数是用来得到PORT口电平变化
//		a=portX口（X=A/B/C/D/E/F）
//		b=PORT口（0、1、2、3、4、5、6、7）

//	__asm						//C语言内嵌汇编语句格式
//	sleep
//	__endasm;					//C语言内嵌汇编语句格式
#endif