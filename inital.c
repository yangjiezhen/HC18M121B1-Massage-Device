	/*  ************************************************************************************
*								濞戞挸锕ラ幑锝夋嚍椤栨碍鏀婚柣銏ゆ涧閻℃瑩鎳栭垾鎻掓暅闁哄牆顦靛娲礂椤掆偓瀵帮拷
*								    www.holychip.cn
*	************************************************************************************
*/
#include "holychip_define.h"
#include "inital.h"
 

////////////////////////////////////////////////////////////////////////
////////////////////////////	  闁告帗绻傞～鎰板礌閿燂拷	////////////////////////////
//////////////////////////////////////////////////////////////////////
void inital(void)
{
	ANSELL=0X00;		//1=AD闁跨喐鏋婚幏绌漣mulation models闁跨喐鏋婚幏锟�0=I/O闁跨喐鏋婚幏绌宨gital models闁跨喐鏋婚幏锟�
//	ANSELH=0X00;		//1=AD闁跨喐鏋婚幏绌漣mulation models闁跨喐鏋婚幏锟�0=I/O闁跨喐鏋婚幏绌宨gital models闁跨喐鏋婚幏锟�
	
	TRISA=0XFF;			//1 input闁跨喐鏋婚幏锟�0 output
	TRISB=0X00;			//1 input闁跨喐鏋婚幏锟�0 output
	
	
	PORTA=0XFF;			//1	high , 0 low             
	PORTB=0X00;			//1	high , 0 low

	
	PHCON1=0X00;			//1 disenable high pull ,0 enable high pull 0000 1111
	PHCON=0XFF;			//1 disenable high pull ,0 enable high pull
	
	
	PDCON1=0xFF;			//1 disenable down pull ,0 enable down pull
	PDCON=0xFF;			//1 disenable down pull ,0 enable down pull

	
	IOCA=0X00;			//0 disenable weak up 	,1 enable weak up 
	IOCB=0X00;			//0 disenable weak up 	,1 enable weak up 

//	PAIE=0;			//0	disenable Port level change interrupt , 1 enable Port level change interrupt
}


void sysinitial(void)
{

	OPTION=0X07;		//闁告帒妫濋。鍓佲偓闈涘閻°劑宕抽妸鈺佸赋缂傚喛鎷�	
				
	
	SBIT(INTECON, 0, HIGH);	//BSF T0IE
	SBIT(INTECON, 3, LOW);	//BCF T0IF
	SBIT(INTECON, 7, HIGH);	//BSF GIE
		
	SBIT(T1CON, 5, HIGH);	//BSF T0OSCEN
	SBIT(OPTION, 5, HIGH);	//BSF T0CS
	SBIT(OPTION, 4, LOW);	//BCF T0SE	
	
}
void T0_sysinitial(void)	//0.1ms閺夆晜绋愮粩鏉戔枎閳ヨ尪鍘柡鍌︽嫹
{
//	SBIT(INTECON, 0, 0);	//BCF T0IE
//	OPTION=0X00;			//闁告帒妫濋。鍓佲偓闈涘閻°劑宕抽妸鈺佸赋缂傚喛鎷�	
//	T0=0;					//T0閻犙冾儏閸ㄧ敻宕愰敓锟�
//	SBIT(INTECON, 0, 1);	//BSF T0IE
//	SBIT(INTECON, 3, 0);	//BCF T0IF
//	SBIT(INTECON, 7, 1);	//BSF GIE
	
	OPTION=0x07;//闁告帒妫濋。鍓佸寲缂佹ɑ娈�1/8
	T0=0xF0;
	T0IE=1;
	T0IF=0;
	GIE=1;	
		
}

void ramInitial(void)
{
	FSR=0X3f;				//bank0闁告牗妞介埀顒佹皑閺併倗鈧潧瀚悺銊╁闯閳湝ITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x0f);
	
	FSR=0Xdf;				//bank1闁告牗妞介埀顒佹皑閺併倗鈧潧瀚悺銊╁闯閳湝ITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x8f);
}