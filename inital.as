	global	?___awmod
	global	DelayMs@t
	global	DelayUs2x@t
	global	Motor_SetMode@new_mode
	global	PL2
	global	System_TimerHandler@i
	global	_ADCON0
	global	_ADCON1
	global	_ADCS0
	global	_ADCS1
	global	_ADCS2
	global	_ADEN
	global	_ADON
	global	_ADREF
	global	_ADRESH
	global	_ADRESL
	global	_ANSEL0
	global	_ANSEL1
	global	_ANSEL10
	global	_ANSEL11
	global	_ANSEL14
	global	_ANSEL15
	global	_ANSEL2
	global	_ANSEL3
	global	_ANSEL4
	global	_ANSEL5
	global	_ANSEL6
	global	_ANSEL7
	global	_ANSEL8
	global	_ANSEL9
	global	_ANSELH
	global	_ANSELL
	global	_BOR
	global	_BOREN
	global	_CHS0
	global	_CHS1
	global	_CHS2
	global	_CHS3
	global	_DelayMs
	signat	_DelayMs,4217
	FNCALL	_DelayMs,_DelayUs2x
	global	_DelayUs2x
	signat	_DelayUs2x,4217
	global	_FSR
	global	_GIE
	global	_INDF
	global	_INTEDG
	global	_IOCA
	global	_IOCB
	global	_MTP_CLEN
	global	_Motor_GetMode
	signat	_Motor_GetMode,89
	global	_Motor_Init
	signat	_Motor_Init,89
	FNCALL	_Motor_Init,_Motor_SetMode
	FNCALL	_Motor_Init,_hardware_stop_motor
	global	_Motor_Process
	signat	_Motor_Process,89
	FNCALL	_Motor_Process,i1_Motor_Stop
	FNCALL	_Motor_Process,_System_GetState
	FNCALL	_Motor_Process,i1_Motor_Start
	FNCALL	_Motor_Process,i1_Motor_ToggleDirection
	global	_Motor_SetMode
	signat	_Motor_SetMode,4217
	global	_Motor_Start
	signat	_Motor_Start,89
	FNCALL	_Motor_Start,_hardware_set_motor
	global	_Motor_Stop
	signat	_Motor_Stop,89
	FNCALL	_Motor_Stop,_hardware_stop_motor
	global	_Motor_ToggleDirection
	signat	_Motor_ToggleDirection,89
	FNCALL	_Motor_ToggleDirection,_Motor_Stop
	global	_Motor_ToggleSpeed
	signat	_Motor_ToggleSpeed,89
	FNCALL	_Motor_ToggleSpeed,___awmod
	FNCALL	_Motor_ToggleSpeed,_hardware_set_motor
	global	_OCCUPY0BE
	global	_OCCUPY0BF
	global	_OPTION
_OPTION	equ	65
	global	_PDA0
	global	_PDA1
	global	_PDA2
	global	_PDA3
	global	_PDA4
	global	_PDA5
	global	_PDA6
	global	_PDA7
	global	_PDCON
	global	_PDCON1
	global	_PHA0
	global	_PHA1
	global	_PHA2
	global	_PHA3
	global	_PHA4
	global	_PHA5
	global	_PHA6
	global	_PHA7
	global	_PHCON
	global	_PHCON1
	global	_PMADRH
	global	_PMADRL
	global	_PMCON
	global	_PMDATH
	global	_PMDATL
	global	_POR
	global	_PORTA
	global	_PORTA4
	global	_PORTA6
	global	_PORTA7
	global	_PORTB
	global	_PS0
	global	_PS1
	global	_PS2
	global	_PSA
	global	_PWM0E
	global	_PWM0P
	global	_PWM1E
	global	_PWM1P
	global	_PWM1_8
	global	_PWM1_9
	global	_PWMM
	global	_PWMS0
	global	_PWMS1
	global	_PWMSET
	global	_RD_FLAG
	global	_SCS
	global	_System_GetState
	signat	_System_GetState,89
	global	_System_TimerHandler
	signat	_System_TimerHandler,89
	FNCALL	_System_TimerHandler,i1_Motor_Stop
	global	_T0
	global	_T0CK
	global	_T0CS
	global	_T0IE
	global	_T0IF
	global	_T0OSCEN
	global	_T0SE
	global	_T0_sysinitial
	signat	_T0_sysinitial,89
	global	_T1
	global	_T1CK0
	global	_T1CK1
	global	_T1CON
	global	_T1CR_AUXR
	global	_T1EN
	global	_T1IE
	global	_T1IF
	global	_T1LOAD
	global	_T1PR0
	global	_T1PR1
	global	_T1PR2
	global	_T2
	global	_T2CK0
	global	_T2CK1
	global	_T2CON
	global	_T2EN
	global	_T2IE
	global	_T2IF
	global	_T2LOAD
	global	_T2LOAD_8
	global	_T2LOAD_9
	global	_T2PR0
	global	_T2PR1
	global	_T2PR2
	global	_TIMER2_8
	global	_TIMER2_9
	global	_TMR2H
	global	_TRISA
	global	_TRISA0
	global	_TRISA1
	global	_TRISA2
	global	_TRISA3
	global	_TRISA4
	global	_TRISA5
	global	_TRISA6
	global	_TRISA7
	global	_TRISB
	global	_TRISB0
	global	_TRISB1
	global	_TRISB2
	global	_TRISB3
	global	_TRISB4
	global	_TRISB5
	global	_TRISB6
	global	_TRISB7
	global	_Timer0_Isr
	signat	_Timer0_Isr,89
	FNCALL	_Timer0_Isr,_Motor_Process
	FNCALL	_Timer0_Isr,_System_TimerHandler
	FNCALL	_Timer0_Isr,_key_tick
	global	_VHS0
	global	_VHS1
	global	_VHS2
	global	_WDTEN
	global	___awmod
	signat	___awmod,8314
	global	___awmod@counter
	global	___awmod@dividend
	global	___awmod@divisor
	global	___awmod@sign
	global	___latbits
___latbits	equ	0
	global	__end_ofPL2
	global	__end_of_DelayMs
	global	__end_of_DelayUs2x
	global	__end_of_Motor_GetMode
	global	__end_of_Motor_Init
	global	__end_of_Motor_Process
	global	__end_of_Motor_SetMode
	global	__end_of_Motor_Start
	global	__end_of_Motor_Stop
	global	__end_of_Motor_ToggleDirection
	global	__end_of_Motor_ToggleSpeed
	global	__end_of_System_GetState
	global	__end_of_System_TimerHandler
	global	__end_of_T0_sysinitial
	global	__end_of_Timer0_Isr
	global	__end_of___awmod
	global	__end_of__initialization
	global	__end_of__stringtab
	global	__end_of_hardware_set_motor
	global	__end_of_hardware_stop_motor
	global	__end_of_inital
	global	__end_of_key_scan
	global	__end_of_key_tick
	global	__end_of_keymode0_configuration
	global	__end_of_keymode1_configuration
	global	__end_of_keymode2_configuration
	global	__end_of_main
	global	__end_of_nPWM1
	global	__end_of_nPWM2
	global	__end_of_pwm_map
	global	__end_of_ramInitial
	global	__end_ofi1_DelayUs2x
	global	__end_ofi1_Motor_Start
	global	__end_ofi1_Motor_Stop
	global	__end_ofi1_Motor_ToggleDirection
	global	__end_ofi1_hardware_set_motor
	global	__end_ofi1_hardware_stop_motor
	global	__end_ofi1_nPWM1
	global	__end_ofi1_nPWM2
	global	__initialization
	global	__pbssBANK0
	global	__pcstackBANK0
	global	__pcstackCOMMON
	global	__pdataBANK0
	global	__pidataBANK0
	global	__pintentry
	global	__pmaintext
	global	__pstrings
	global	__pswtext1
	global	__ptext1
	global	__ptext10
	global	__ptext11
	global	__ptext12
	global	__ptext13
	global	__ptext14
	global	__ptext15
	global	__ptext16
	global	__ptext17
	global	__ptext18
	global	__ptext19
	global	__ptext2
	global	__ptext20
	global	__ptext21
	global	__ptext22
	global	__ptext23
	global	__ptext24
	global	__ptext25
	global	__ptext26
	global	__ptext27
	global	__ptext28
	global	__ptext29
	global	__ptext3
	global	__ptext30
	global	__ptext31
	global	__ptext32
	global	__ptext33
	global	__ptext34
	global	__ptext4
	global	__ptext5
	global	__ptext6
	global	__ptext7
	global	__ptext8
	global	__ptext9
	global	__size_of_DelayMs
__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	global	__size_of_DelayUs2x
__size_of_DelayUs2x	equ	__end_of_DelayUs2x-_DelayUs2x
	global	__size_of_Motor_GetMode
__size_of_Motor_GetMode	equ	__end_of_Motor_GetMode-_Motor_GetMode
	global	__size_of_Motor_Init
__size_of_Motor_Init	equ	__end_of_Motor_Init-_Motor_Init
	global	__size_of_Motor_Process
__size_of_Motor_Process	equ	__end_of_Motor_Process-_Motor_Process
	global	__size_of_Motor_SetMode
__size_of_Motor_SetMode	equ	__end_of_Motor_SetMode-_Motor_SetMode
	global	__size_of_Motor_Start
__size_of_Motor_Start	equ	__end_of_Motor_Start-_Motor_Start
	global	__size_of_Motor_Stop
__size_of_Motor_Stop	equ	__end_of_Motor_Stop-_Motor_Stop
	global	__size_of_Motor_ToggleDirection
__size_of_Motor_ToggleDirection	equ	__end_of_Motor_ToggleDirection-_Motor_ToggleDirection
	global	__size_of_Motor_ToggleSpeed
__size_of_Motor_ToggleSpeed	equ	__end_of_Motor_ToggleSpeed-_Motor_ToggleSpeed
	global	__size_of_System_GetState
__size_of_System_GetState	equ	__end_of_System_GetState-_System_GetState
	global	__size_of_System_TimerHandler
__size_of_System_TimerHandler	equ	__end_of_System_TimerHandler-_System_TimerHandler
	global	__size_of_T0_sysinitial
__size_of_T0_sysinitial	equ	__end_of_T0_sysinitial-_T0_sysinitial
	global	__size_of_Timer0_Isr
__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	global	__size_of___awmod
__size_of___awmod	equ	__end_of___awmod-___awmod
	global	__size_of_hardware_set_motor
__size_of_hardware_set_motor	equ	__end_of_hardware_set_motor-_hardware_set_motor
	global	__size_of_hardware_stop_motor
__size_of_hardware_stop_motor	equ	__end_of_hardware_stop_motor-_hardware_stop_motor
	global	__size_of_inital
__size_of_inital	equ	__end_of_inital-_inital
	global	__size_of_key_scan
__size_of_key_scan	equ	__end_of_key_scan-_key_scan
	global	__size_of_key_tick
__size_of_key_tick	equ	__end_of_key_tick-_key_tick
	global	__size_of_keymode0_configuration
__size_of_keymode0_configuration	equ	__end_of_keymode0_configuration-_keymode0_configuration
	global	__size_of_keymode1_configuration
__size_of_keymode1_configuration	equ	__end_of_keymode1_configuration-_keymode1_configuration
	global	__size_of_keymode2_configuration
__size_of_keymode2_configuration	equ	__end_of_keymode2_configuration-_keymode2_configuration
	global	__size_of_main
__size_of_main	equ	__end_of_main-_main
	global	__size_of_nPWM1
__size_of_nPWM1	equ	__end_of_nPWM1-_nPWM1
	global	__size_of_nPWM2
__size_of_nPWM2	equ	__end_of_nPWM2-_nPWM2
	global	__size_of_ramInitial
__size_of_ramInitial	equ	__end_of_ramInitial-_ramInitial
	global	__size_ofi1_DelayUs2x
__size_ofi1_DelayUs2x	equ	__end_ofi1_DelayUs2x-i1_DelayUs2x
	global	__size_ofi1_Motor_Start
__size_ofi1_Motor_Start	equ	__end_ofi1_Motor_Start-i1_Motor_Start
	global	__size_ofi1_Motor_Stop
__size_ofi1_Motor_Stop	equ	__end_ofi1_Motor_Stop-i1_Motor_Stop
	global	__size_ofi1_Motor_ToggleDirection
__size_ofi1_Motor_ToggleDirection	equ	__end_ofi1_Motor_ToggleDirection-i1_Motor_ToggleDirection
	global	__size_ofi1_hardware_set_motor
__size_ofi1_hardware_set_motor	equ	__end_ofi1_hardware_set_motor-i1_hardware_set_motor
	global	__size_ofi1_hardware_stop_motor
__size_ofi1_hardware_stop_motor	equ	__end_ofi1_hardware_stop_motor-i1_hardware_stop_motor
	global	__size_ofi1_nPWM1
__size_ofi1_nPWM1	equ	__end_ofi1_nPWM1-i1_nPWM1
	global	__size_ofi1_nPWM2
__size_ofi1_nPWM2	equ	__end_ofi1_nPWM2-i1_nPWM2
	global	__stringbase
	global	__stringtab
	global	_current_dir
	global	_current_mode
	global	_current_speed
	global	_final_key
	global	_hardware_set_motor
	signat	_hardware_set_motor,8313
	FNCALL	_hardware_set_motor,_nPWM1
	FNCALL	_hardware_set_motor,_nPWM2
	global	_hardware_stop_motor
	signat	_hardware_stop_motor,89
	FNCALL	_hardware_stop_motor,_nPWM1
	FNCALL	_hardware_stop_motor,_nPWM2
	global	_inital
	signat	_inital,89
	global	_key
	global	_key_scan
	signat	_key_scan,89
	FNCALL	_key_scan,_keymode0_configuration
	FNCALL	_key_scan,_keymode1_configuration
	FNCALL	_key_scan,_keymode2_configuration
	FNCALL	_key_scan,i1_DelayUs2x
	global	_key_tick
	signat	_key_tick,89
	FNCALL	_key_tick,_key_scan
	global	_keymode0_configuration
	signat	_keymode0_configuration,89
	global	_keymode1_configuration
	signat	_keymode1_configuration,89
	global	_keymode2_configuration
	signat	_keymode2_configuration,89
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_DelayMs
	FNCALL	_main,_Motor_GetMode
	FNCALL	_main,_Motor_Init
	FNCALL	_main,_Motor_SetMode
	FNCALL	_main,_Motor_Start
	FNCALL	_main,_Motor_Stop
	FNCALL	_main,_Motor_ToggleDirection
	FNCALL	_main,_Motor_ToggleSpeed
	FNCALL	_main,_T0_sysinitial
	FNCALL	_main,_inital
	FNCALL	_main,_ramInitial
	global	_mode_params
	global	_mode_runtime
	global	_nPWM1
	signat	_nPWM1,4217
	global	_nPWM2
	signat	_nPWM2,4217
	global	_pwm_map
	global	_ramInitial
	signat	_ramInitial,89
	global	_shutdown_timer
	global	_sys_state
	global	btemp
	global	end_of_initialization
	global	hardware_set_motor@dir
	global	hardware_set_motor@speed
	global	i1DelayUs2x@t
	global	i1_DelayUs2x
	signat	i1_DelayUs2x,89
	global	i1_Motor_Start
	signat	i1_Motor_Start,89
	FNCALL	i1_Motor_Start,i1_hardware_set_motor
	global	i1_Motor_Stop
	signat	i1_Motor_Stop,89
	FNCALL	i1_Motor_Stop,i1_hardware_stop_motor
	global	i1_Motor_ToggleDirection
	signat	i1_Motor_ToggleDirection,89
	FNCALL	i1_Motor_ToggleDirection,i1_Motor_Stop
	global	i1_hardware_set_motor
	signat	i1_hardware_set_motor,89
	FNCALL	i1_hardware_set_motor,i1_nPWM1
	FNCALL	i1_hardware_set_motor,i1_nPWM2
	global	i1_hardware_stop_motor
	signat	i1_hardware_stop_motor,89
	FNCALL	i1_hardware_stop_motor,i1_nPWM1
	FNCALL	i1_hardware_stop_motor,i1_nPWM2
	global	i1_nPWM1
	signat	i1_nPWM1,89
	global	i1_nPWM2
	signat	i1_nPWM2,89
	global	i1hardware_set_motor@dir
	global	i1hardware_set_motor@speed
	global	i1nPWM1@n
	global	i1nPWM2@m
	global	interrupt_function
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	intlevel1,_Timer0_Isr
	global	key_tick@key_released
	global	key_tick@last_key
	global	key_tick@stable_cnt
	global	main@current
	global	nPWM1@n
	global	nPWM2@m
	global	saved_w
	global	start
	global	start_initialization
	global	wtemp0
	processor	18m121b1
	opt	pw 120
	opt	pm
	psect	idataBANK0,global,class=CODE,delta=2
	psect	strings,global,class=STRING,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bssBANK0,global,class=BANK0,space=1
	psect	dataBANK0,global,class=BANK0,space=1
	psect	cstackCOMMON,global,class=COMMON,space=1
	psect	cstackBANK0,global,class=BANK0,space=1
	psect	maintext,global,class=CODE,split=1,delta=2
	psect	text1,local,class=CODE,merge=1,delta=2
	psect	text2,local,class=CODE,merge=1,delta=2
	psect	text3,local,class=CODE,merge=1,delta=2
	psect	text4,local,class=CODE,merge=1,delta=2
	psect	text5,local,class=CODE,merge=1,delta=2,group=1
	psect	text6,local,class=CODE,merge=1,delta=2
	psect	text7,local,class=CODE,merge=1,delta=2
	psect	text8,local,class=CODE,merge=1,delta=2
	psect	text9,local,class=CODE,merge=1,delta=2
	psect	text10,local,class=CODE,merge=1,delta=2
	psect	text11,local,class=CODE,merge=1,delta=2
	psect	text12,local,class=CODE,merge=1,delta=2
	psect	text13,local,class=CODE,merge=1,delta=2
	psect	text14,local,class=CODE,merge=1,delta=2
	psect	swtext1,local,class=CONST,delta=2
	psect	text15,local,class=CODE,merge=1,delta=2
	psect	text16,local,class=CODE,merge=1,delta=2
	psect	text17,local,class=CODE,merge=1,delta=2
	psect	text18,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	text19,local,class=CODE,merge=1,delta=2
	psect	text20,local,class=CODE,merge=1,delta=2
	psect	text21,local,class=CODE,merge=1,delta=2
	psect	text22,local,class=CODE,merge=1,delta=2
	psect	text23,local,class=CODE,merge=1,delta=2
	psect	text24,local,class=CODE,merge=1,delta=2
	psect	text25,local,class=CODE,merge=1,delta=2
	psect	text26,local,class=CODE,merge=1,delta=2
	psect	text27,local,class=CODE,merge=1,delta=2
	psect	text28,local,class=CODE,merge=1,delta=2
	psect	text29,local,class=CODE,merge=1,delta=2
	psect	text30,local,class=CODE,merge=1,delta=2
	psect	text31,local,class=CODE,merge=1,delta=2
	psect	text32,local,class=CODE,merge=1,delta=2
	psect	text33,local,class=CODE,merge=1,delta=2
	psect	text34,local,class=CODE,merge=1,delta=2
	psect	pa_nodes0,global,class=CODE,delta=2
	dabs	1,0x5B,1,_ADCON1
	dabs	1,0x5A,1,_ADCON0
	dabs	1,0x59,1,_ADRESH
	dabs	1,0x58,1,_ADRESL
	dabs	1,0x57,1,_ANSELH
	dabs	1,0x56,1,_ANSELL
	dabs	1,0x55,1,_PWMSET
	dabs	1,0x54,1,_PWM1P
	dabs	1,0x53,1,_T2LOAD
	dabs	1,0x52,1,_T2
	dabs	1,0x51,1,_TMR2H
	dabs	1,0x50,1,_T2CON
	dabs	1,0x4F,1,_PWM0P
	dabs	1,0x4E,1,_T1LOAD
	dabs	1,0x4D,1,_T1
	dabs	1,0x4C,1,_T1CON
	dabs	1,0x4B,1,_T1CR_AUXR
	dabs	1,0x4A,1,_PMDATH
	dabs	1,0x49,1,_PMDATL
	dabs	1,0x48,1,_PMADRH
	dabs	1,0x47,1,_PMADRL
	dabs	1,0x46,1,_TRISB
	dabs	1,0x45,1,_TRISA
	dabs	1,0x43,1,_PHCON1
	dabs	1,0x42,1,_PDCON1
	dabs	1,0x41,1,_OPTION
	dabs	1,0x40,1,_PMCON
	dabs	1,0x2DE,0,_ADCS2
	dabs	1,0x5B,1
	dabs	1,0x2DD,0,_ADCS1
	dabs	1,0x5B,1
	dabs	1,0x2DC,0,_ADCS0
	dabs	1,0x5B,1
	dabs	1,0x2DB,0,_VHS2
	dabs	1,0x5B,1
	dabs	1,0x2DA,0,_VHS1
	dabs	1,0x5B,1
	dabs	1,0x2D9,0,_VHS0
	dabs	1,0x5B,1
	dabs	1,0x2D8,0,_ADREF
	dabs	1,0x5B,1
	dabs	1,0x2D5,0,_CHS3
	dabs	1,0x5A,1
	dabs	1,0x2D4,0,_CHS2
	dabs	1,0x5A,1
	dabs	1,0x2D3,0,_CHS1
	dabs	1,0x5A,1
	dabs	1,0x2D2,0,_CHS0
	dabs	1,0x5A,1
	dabs	1,0x2D1,0,_ADON
	dabs	1,0x5A,1
	dabs	1,0x2D0,0,_ADEN
	dabs	1,0x5A,1
	dabs	1,0x2BF,0,_ANSEL15
	dabs	1,0x57,1
	dabs	1,0x2BE,0,_ANSEL14
	dabs	1,0x57,1
	dabs	1,0x2BB,0,_ANSEL11
	dabs	1,0x57,1
	dabs	1,0x2BA,0,_ANSEL10
	dabs	1,0x57,1
	dabs	1,0x2B9,0,_ANSEL9
	dabs	1,0x57,1
	dabs	1,0x2B8,0,_ANSEL8
	dabs	1,0x57,1
	dabs	1,0x2B7,0,_ANSEL7
	dabs	1,0x56,1
	dabs	1,0x2B6,0,_ANSEL6
	dabs	1,0x56,1
	dabs	1,0x2B5,0,_ANSEL5
	dabs	1,0x56,1
	dabs	1,0x2B4,0,_ANSEL4
	dabs	1,0x56,1
	dabs	1,0x2B3,0,_ANSEL3
	dabs	1,0x56,1
	dabs	1,0x2B2,0,_ANSEL2
	dabs	1,0x56,1
	dabs	1,0x2B1,0,_ANSEL1
	dabs	1,0x56,1
	dabs	1,0x2B0,0,_ANSEL0
	dabs	1,0x56,1
	dabs	1,0x2A8,0,_PWMM
	dabs	1,0x55,1
	dabs	1,0x28F,0,_PWMS1
	dabs	1,0x51,1
	dabs	1,0x28E,0,_PWMS0
	dabs	1,0x51,1
	dabs	1,0x28D,0,_TIMER2_9
	dabs	1,0x51,1
	dabs	1,0x28C,0,_TIMER2_8
	dabs	1,0x51,1
	dabs	1,0x28B,0,_T2LOAD_9
	dabs	1,0x51,1
	dabs	1,0x28A,0,_T2LOAD_8
	dabs	1,0x51,1
	dabs	1,0x289,0,_PWM1_9
	dabs	1,0x51,1
	dabs	1,0x288,0,_PWM1_8
	dabs	1,0x51,1
	dabs	1,0x287,0,_T2EN
	dabs	1,0x50,1
	dabs	1,0x286,0,_PWM1E
	dabs	1,0x50,1
	dabs	1,0x285,0,_SCS
	dabs	1,0x50,1
	dabs	1,0x284,0,_T2CK1
	dabs	1,0x50,1
	dabs	1,0x283,0,_T2CK0
	dabs	1,0x50,1
	dabs	1,0x282,0,_T2PR2
	dabs	1,0x50,1
	dabs	1,0x281,0,_T2PR1
	dabs	1,0x50,1
	dabs	1,0x280,0,_T2PR0
	dabs	1,0x50,1
	dabs	1,0x267,0,_T1EN
	dabs	1,0x4C,1
	dabs	1,0x266,0,_PWM0E
	dabs	1,0x4C,1
	dabs	1,0x265,0,_T0OSCEN
	dabs	1,0x4C,1
	dabs	1,0x264,0,_T1CK1
	dabs	1,0x4C,1
	dabs	1,0x263,0,_T1CK0
	dabs	1,0x4C,1
	dabs	1,0x262,0,_T1PR2
	dabs	1,0x4C,1
	dabs	1,0x261,0,_T1PR1
	dabs	1,0x4C,1
	dabs	1,0x260,0,_T1PR0
	dabs	1,0x4C,1
	dabs	1,0x25F,0,_T0CK
	dabs	1,0x4B,1
	dabs	1,0x25E,0,_T2IE
	dabs	1,0x4B,1
	dabs	1,0x25D,0,_T2IF
	dabs	1,0x4B,1
	dabs	1,0x25C,0,_POR
	dabs	1,0x4B,1
	dabs	1,0x25B,0,_BOR
	dabs	1,0x4B,1
	dabs	1,0x25A,0,_BOREN
	dabs	1,0x4B,1
	dabs	1,0x259,0,_T1IE
	dabs	1,0x4B,1
	dabs	1,0x258,0,_T1IF
	dabs	1,0x4B,1
	dabs	1,0x237,0,_TRISB7
	dabs	1,0x46,1
	dabs	1,0x236,0,_TRISB6
	dabs	1,0x46,1
	dabs	1,0x235,0,_TRISB5
	dabs	1,0x46,1
	dabs	1,0x234,0,_TRISB4
	dabs	1,0x46,1
	dabs	1,0x233,0,_TRISB3
	dabs	1,0x46,1
	dabs	1,0x232,0,_TRISB2
	dabs	1,0x46,1
	dabs	1,0x231,0,_TRISB1
	dabs	1,0x46,1
	dabs	1,0x230,0,_TRISB0
	dabs	1,0x46,1
	dabs	1,0x22F,0,_TRISA7
	dabs	1,0x45,1
	dabs	1,0x22E,0,_TRISA6
	dabs	1,0x45,1
	dabs	1,0x22D,0,_TRISA5
	dabs	1,0x45,1
	dabs	1,0x22C,0,_TRISA4
	dabs	1,0x45,1
	dabs	1,0x22B,0,_TRISA3
	dabs	1,0x45,1
	dabs	1,0x22A,0,_TRISA2
	dabs	1,0x45,1
	dabs	1,0x229,0,_TRISA1
	dabs	1,0x45,1
	dabs	1,0x228,0,_TRISA0
	dabs	1,0x45,1
	dabs	1,0x21F,0,_PHA7
	dabs	1,0x43,1
	dabs	1,0x21E,0,_PHA6
	dabs	1,0x43,1
	dabs	1,0x21D,0,_PHA5
	dabs	1,0x43,1
	dabs	1,0x21C,0,_PHA4
	dabs	1,0x43,1
	dabs	1,0x21B,0,_PHA3
	dabs	1,0x43,1
	dabs	1,0x21A,0,_PHA2
	dabs	1,0x43,1
	dabs	1,0x219,0,_PHA1
	dabs	1,0x43,1
	dabs	1,0x218,0,_PHA0
	dabs	1,0x43,1
	dabs	1,0x217,0,_PDA7
	dabs	1,0x42,1
	dabs	1,0x216,0,_PDA6
	dabs	1,0x42,1
	dabs	1,0x215,0,_PDA5
	dabs	1,0x42,1
	dabs	1,0x214,0,_PDA4
	dabs	1,0x42,1
	dabs	1,0x213,0,_PDA3
	dabs	1,0x42,1
	dabs	1,0x212,0,_PDA2
	dabs	1,0x42,1
	dabs	1,0x211,0,_PDA1
	dabs	1,0x42,1
	dabs	1,0x210,0,_PDA0
	dabs	1,0x42,1
	dabs	1,0x20F,0,_WDTEN
	dabs	1,0x41,1
	dabs	1,0x20E,0,_INTEDG
	dabs	1,0x41,1
	dabs	1,0x20D,0,_T0CS
	dabs	1,0x41,1
	dabs	1,0x20C,0,_T0SE
	dabs	1,0x41,1
	dabs	1,0x20B,0,_PSA
	dabs	1,0x41,1
	dabs	1,0x20A,0,_PS2
	dabs	1,0x41,1
	dabs	1,0x209,0,_PS1
	dabs	1,0x41,1
	dabs	1,0x208,0,_PS0
	dabs	1,0x41,1
	dabs	1,0x201,0,_MTP_CLEN
	dabs	1,0x40,1
	dabs	1,0x200,0,_RD_FLAG
	dabs	1,0x40,1
	dabs	1,0xBE,1,_OCCUPY0BE
	dabs	1,0xBF,1,_OCCUPY0BF
	dabs	1,0x3E,2
SFR:	
; Version 1.45
; Generated 16/11/2017 GMT
; 
; Copyright © 2017, Microchip Technology Inc. and its subsidiaries ("Microchip")
; All rights reserved.
; 
; This software is developed by Microchip Technology Inc. and its subsidiaries ("Microchip").
; 
; Redistribution and use in source and binary forms, with or without modification, are
; permitted provided that the following conditions are met:
; 
;     1. Redistributions of source code must retain the above copyright notice, this list of
;        conditions and the following disclaimer.
; 
;     2. Redistributions in binary form must reproduce the above copyright notice, this list
;        of conditions and the following disclaimer in the documentation and/or other
;        materials provided with the distribution.
; 
;     3. Microchip's name may not be used to endorse or promote products derived from this
;        software without specific prior written permission.
; 
; THIS SOFTWARE IS PROVIDED BY MICROCHIP "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
; INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSequENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWSOEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
; 
; 
; Code-generator required, PIC16F887 Definitions
; 
; SFR Addresses

Addresses:	
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;

	psect	idataBANK0
__pidataBANK0:	
	opt stack 0
	file	"main.c"

;initializer for _shutdown_timer
	retlw	132
	retlw	3
	file	"key_1.c"

;initializer for key_tick@key_released
	retlw	1

	psect	strings
__pstrings:	
	opt stack 0
stringtab:	
__stringtab:	
	opt stack 0
stringcode:	
;	String table - string pointers are 1 byte each

stringdir:	
	movlw	high stringdir
	movwf	10
	movf	4,w
	incf	4,f
	addwf	2,f
__stringbase:	
	opt stack 0
	retlw	0
__end_of__stringtab:	
	opt stack 0
	file	"motor1.c"
_pwm_map:	
	opt stack 0
	retlw	210
	retlw	0
	retlw	185
	retlw	0
	retlw	245
	retlw	0
__end_of_pwm_map:	
	opt stack 0	;_RD_FLAG
_PHCON	set	13
_PDCON	set	11
_IOCB	set	9
_IOCA	set	7
_PORTB	set	6
_PORTA	set	5
_FSR	set	4
_T0	set	1
_INDF	set	0
_GIE	set	119
_T0IF	set	115
_T0IE	set	112
_PORTA7	set	47
_PORTA6	set	46
_PORTA4	set	44

	psect	cinit
	file	"inital.as"
start_initialization:	
; #config settings

	opt stack 0
__initialization:	
	opt stack 0
	file	"key_1.c"
end_of_initialization:	
;End of C runtime variable initialization code

	opt stack 0
__end_of__initialization:	
	opt stack 0
	clrf	3
	ljmp	_main	;jump to C main() function

	psect	bssBANK0
	file	"inital.as"
__pbssBANK0:	
	opt stack 0
_mode_params:	
	opt stack 0
	ds	7
_mode_runtime:	
	opt stack 0
	ds	5
System_TimerHandler@i:	
	opt stack 0
	ds	2
_current_speed:	
	opt stack 0
	ds	1
_current_mode:	
	opt stack 0
	ds	1
_current_dir:	
	opt stack 0
	ds	1
_sys_state:	
	opt stack 0
	ds	1
key_tick@last_key:	
	opt stack 0
	ds	1
key_tick@stable_cnt:	
	opt stack 0
	ds	1
_final_key:	
	opt stack 0
	ds	1
_key:	
	opt stack 0
	ds	1

	psect	dataBANK0
__pdataBANK0:	
	opt stack 0
	file	"main.c"
_shutdown_timer:	
	opt stack 0
	ds	2
	file	"key_1.c"
key_tick@key_released:	
	opt stack 0
	ds	1

	psect	cstackCOMMON
__pcstackCOMMON:	
	opt stack 0
??_Motor_Init:	
??_Motor_Start:	
; 1 bytes @ 0x0

??_Motor_Stop:	
; 1 bytes @ 0x0

??_Motor_ToggleDirection:	
; 1 bytes @ 0x0

??_Motor_GetMode:	
; 1 bytes @ 0x0

??_Motor_SetMode:	
; 1 bytes @ 0x0

??_Motor_ToggleSpeed:	
; 1 bytes @ 0x0

??_Motor_Process:	
; 1 bytes @ 0x0

??_nPWM1:	
; 1 bytes @ 0x0

??_nPWM2:	
; 1 bytes @ 0x0

??_inital:	
; 1 bytes @ 0x0

??_T0_sysinitial:	
; 1 bytes @ 0x0

??_ramInitial:	
; 1 bytes @ 0x0

??_keymode0_configuration:	
; 1 bytes @ 0x0

??_keymode1_configuration:	
; 1 bytes @ 0x0

??_keymode2_configuration:	
; 1 bytes @ 0x0

??_DelayUs2x:	
; 1 bytes @ 0x0

??_key_scan:	
; 1 bytes @ 0x0

??_key_tick:	
; 1 bytes @ 0x0

??_DelayMs:	
; 1 bytes @ 0x0

??_main:	
; 1 bytes @ 0x0

??_System_GetState:	
; 1 bytes @ 0x0

??_System_TimerHandler:	
; 1 bytes @ 0x0

??_hardware_stop_motor:	
; 1 bytes @ 0x0

??_hardware_set_motor:	
; 1 bytes @ 0x0

??___awmod:	
; 1 bytes @ 0x0

??i1_DelayUs2x:	
; 1 bytes @ 0x0

??i1_hardware_stop_motor:	
; 1 bytes @ 0x0

??i1_hardware_set_motor:	
; 1 bytes @ 0x0

??i1_Motor_Start:	
; 1 bytes @ 0x0

??i1_Motor_Stop:	
; 1 bytes @ 0x0

??i1_Motor_ToggleDirection:	
; 1 bytes @ 0x0

??i1_nPWM1:	
; 1 bytes @ 0x0

??i1_nPWM2:	
; 1 bytes @ 0x0


	psect	cstackBANK0
__pcstackBANK0:	
; 1 bytes @ 0x0

	opt stack 0
?_Motor_Init:	
?_Motor_Start:	
; 1 bytes @ 0x0

?_Motor_Stop:	
; 1 bytes @ 0x0

?_Motor_ToggleDirection:	
; 1 bytes @ 0x0

?_Motor_GetMode:	
; 1 bytes @ 0x0

?_Motor_SetMode:	
; 1 bytes @ 0x0

?_Motor_ToggleSpeed:	
; 1 bytes @ 0x0

?_Motor_Process:	
; 1 bytes @ 0x0

?_nPWM1:	
; 1 bytes @ 0x0

?_nPWM2:	
; 1 bytes @ 0x0

?_inital:	
; 1 bytes @ 0x0

?_T0_sysinitial:	
; 1 bytes @ 0x0

?_ramInitial:	
; 1 bytes @ 0x0

?_keymode0_configuration:	
; 1 bytes @ 0x0

?_keymode1_configuration:	
; 1 bytes @ 0x0

?_keymode2_configuration:	
; 1 bytes @ 0x0

?_DelayUs2x:	
; 1 bytes @ 0x0

?_key_scan:	
; 1 bytes @ 0x0

?_key_tick:	
; 1 bytes @ 0x0

?_main:	
; 1 bytes @ 0x0

?_System_GetState:	
; 1 bytes @ 0x0

?_System_TimerHandler:	
; 1 bytes @ 0x0

?_Timer0_Isr:	
; 1 bytes @ 0x0

?_hardware_stop_motor:	
; 1 bytes @ 0x0

?i1_DelayUs2x:	
; 1 bytes @ 0x0

?i1_hardware_stop_motor:	
; 1 bytes @ 0x0

?i1_Motor_Start:	
; 1 bytes @ 0x0

?i1_Motor_Stop:	
; 1 bytes @ 0x0

?i1_Motor_ToggleDirection:	
; 1 bytes @ 0x0

?i1_nPWM1:	
; 1 bytes @ 0x0

?i1_nPWM2:	
; 1 bytes @ 0x0

i1DelayUs2x@t:	
; 1 bytes @ 0x0

	opt stack 0
i1nPWM1@n:	
; 1 bytes @ 0x0

	opt stack 0
i1nPWM2@m:	
; 1 bytes @ 0x0

	opt stack 0

; 1 bytes @ 0x0
	ds	1
?i1_hardware_set_motor:	
i1hardware_set_motor@speed:	
; 1 bytes @ 0x1

	opt stack 0

; 1 bytes @ 0x1
	ds	1
i1hardware_set_motor@dir:	
	opt stack 0

; 1 bytes @ 0x2
	ds	1
??_Timer0_Isr:	

; 1 bytes @ 0x3
	ds	4
?___awmod:	
	opt stack 0
DelayUs2x@t:	
; 2 bytes @ 0x7

	opt stack 0
Motor_SetMode@new_mode:	
; 1 bytes @ 0x7

	opt stack 0
nPWM1@n:	
; 1 bytes @ 0x7

	opt stack 0
nPWM2@m:	
; 1 bytes @ 0x7

	opt stack 0
___awmod@divisor:	
; 1 bytes @ 0x7

	opt stack 0

; 2 bytes @ 0x7
	ds	1
?_DelayMs:	
?_hardware_set_motor:	
; 1 bytes @ 0x8

hardware_set_motor@speed:	
; 1 bytes @ 0x8

	opt stack 0
DelayMs@t:	
; 1 bytes @ 0x8

	opt stack 0

; 2 bytes @ 0x8
	ds	1
hardware_set_motor@dir:	
	opt stack 0
___awmod@dividend:	
; 1 bytes @ 0x9

	opt stack 0

; 2 bytes @ 0x9
	ds	2
___awmod@counter:	
	opt stack 0

; 1 bytes @ 0xB
	ds	1
___awmod@sign:	
	opt stack 0

; 1 bytes @ 0xC
	ds	1
main@current:	
	opt stack 0

; 1 bytes @ 0xD
	ds	1

	psect	maintext
	file	"main.c"
__pmaintext:	
;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  current         1   13[BANK0 ] enum E467
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DelayMs
;;		_Motor_GetMode
;;		_Motor_Init
;;		_Motor_SetMode
;;		_Motor_Start
;;		_Motor_Stop
;;		_Motor_ToggleDirection
;;		_Motor_ToggleSpeed
;;		_T0_sysinitial
;;		_inital
;;		_ramInitial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _main

_main:	
	opt stack 0

;main.c: 38: ramInitial();

;incstack = 0
;; hardware stack exceeded
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_ramInitial

;main.c: 39: inital();
	fcall	_inital

;main.c: 40: T0_sysinitial();
	fcall	_T0_sysinitial

;main.c: 43: DelayMs(100);
	movlw	100
	movwf	DelayMs@t
	clrf	DelayMs@t+1
	fcall	_DelayMs
l3709:	

;main.c: 46: {
;main.c: 47: if (final_key != 0)
	movf	_final_key,w
	btfss	3,2
	goto	l3755
	goto	l3709
l3713:	

;main.c: 53: if (sys_state==SYSTEM_OFF)
	movf	_sys_state,w
	btfss	3,2
	goto	l3719

;main.c: 54: {
;main.c: 55: sys_state=SYSTEM_ON;
	clrf	_sys_state
	incf	_sys_state,f

;main.c: 56: Motor_Init();
	fcall	_Motor_Init

;main.c: 57: Motor_Start();
	fcall	_Motor_Start

;main.c: 59: }
	goto	l3757
l3719:	

;main.c: 60: else
;main.c: 61: {
;main.c: 62: sys_state=SYSTEM_OFF;
	clrf	_sys_state

;main.c: 63: Motor_Stop();
	fcall	_Motor_Stop
	goto	l3757
l3723:	

;main.c: 73: if (sys_state == SYSTEM_ON)
	decfsz	_sys_state,w
	goto	l3757

;main.c: 74: {
;main.c: 75: Motor_ToggleDirection();
	fcall	_Motor_ToggleDirection

;main.c: 77: if (Motor_GetMode() != MODE_INITIAL)
	fcall	_Motor_GetMode
	xorlw	0
	btfsc	3,2
	goto	l1462

;main.c: 78: {
;main.c: 79: Motor_SetMode(MODE_INITIAL);
	movlw	0
	fcall	_Motor_SetMode
l1462:	

;main.c: 80: }
;main.c: 81: Motor_Start();
	fcall	_Motor_Start
	goto	l3757
l3731:	

;main.c: 105: if (sys_state == SYSTEM_ON)
	decfsz	_sys_state,w
	goto	l3757

;main.c: 106: {
;main.c: 108: Motor_ToggleSpeed();
	fcall	_Motor_ToggleSpeed
	goto	l3757
l3735:	

;main.c: 113: if (sys_state == SYSTEM_ON)
	decfsz	_sys_state,w
	goto	l3757

;main.c: 114: {
;main.c: 116: Motor_Stop();
	fcall	_Motor_Stop

;main.c: 119: MotorMode current = Motor_GetMode();
	fcall	_Motor_GetMode
	movwf	main@current
	movlw	3

;main.c: 120: current = (MotorMode)((current + 1) % 4);
	incf	main@current,f
	andwf	main@current,f

;main.c: 121: if (current == MODE_INITIAL)
	movf	main@current,w
	btfss	3,2
	goto	l3747

;main.c: 122: {
;main.c: 123: current = MODE_A;
	clrf	main@current
	incf	main@current,f
l3747:	

;main.c: 124: }
;main.c: 127: Motor_SetMode(current);
	movf	main@current,w
	fcall	_Motor_SetMode

;main.c: 130: DelayMs(1000);
	movlw	232
	movwf	DelayMs@t
	movlw	3
	movwf	DelayMs@t+1
	fcall	_DelayMs

;main.c: 131: Motor_ToggleDirection();
	fcall	_Motor_ToggleDirection

;main.c: 132: Motor_Start();
	fcall	_Motor_Start
	goto	l3757
l3755:	
	movf	_final_key,w

; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           21     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte
	xorlw	1	; case 1
	btfsc	3,2
	goto	l3735
	xorlw	9	; case 8
	btfsc	3,2
	goto	l3731
	xorlw	2	; case 10
	btfsc	3,2
	goto	l3723
	xorlw	6	; case 12
	btfsc	3,2
	goto	l3713
	goto	l3757
l3757:	

;main.c: 136: final_key=0;
	clrf	_final_key
	goto	l3709
__end_of_main:	
	opt stack 0

	psect	text1
	file	"inital.c"
__ptext1:	
;; *************** function _ramInitial *****************
;; Defined at:
;;		line 73 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ramInitial

_ramInitial:	
	opt stack 1

;inital.c: 75: FSR=0X3f;

;incstack = 0
; Regs used in _ramInitial: [wreg+status,2+status,0]
	movlw	63
	movwf	4	;volatile
l3563:	

;inital.c: 77: INDF=0;
	clrf	0	;volatile

;inital.c: 78: FSR--;
	decf	4,f	;volatile

;inital.c: 79: }while(FSR != 0x0f);
	movlw	15
	xorwf	4,w	;volatile
	btfss	3,2
	goto	l3563

;inital.c: 81: FSR=0Xdf;
	movlw	223
	movwf	4	;volatile
l3571:	

;inital.c: 83: INDF=0;
	clrf	0	;volatile

;inital.c: 84: FSR--;
	decf	4,f	;volatile

;inital.c: 85: }while(FSR != 0x8f);
	movlw	143
	xorwf	4,w	;volatile
	btfsc	3,2
	return
	goto	l3571
__end_of_ramInitial:	
	opt stack 0

	psect	text2
__ptext2:	
;; *************** function _inital *****************
;; Defined at:
;;		line 13 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _inital

_inital:	
	opt stack 1

;inital.c: 15: ANSELL=0X00;

;incstack = 0
; Regs used in _inital: [wreg+status,2]
	clrf	86	;volatile

;inital.c: 18: TRISA=0XFF;
	movlw	255
	movwf	69	;volatile

;inital.c: 19: TRISB=0X00;
	clrf	70	;volatile

;inital.c: 22: PORTA=0XFF;
	movwf	5	;volatile

;inital.c: 23: PORTB=0XFF;
	movwf	6	;volatile

;inital.c: 26: PHCON1=0X00;
	clrf	67	;volatile

;inital.c: 27: PHCON=0XFF;
	movwf	13	;volatile

;inital.c: 30: PDCON1=0xFF;
	movwf	66	;volatile

;inital.c: 31: PDCON=0xFF;
	movwf	11	;volatile

;inital.c: 34: IOCA=0X00;
	clrf	7	;volatile

;inital.c: 35: IOCB=0X00;
	clrf	9	;volatile
	return
__end_of_inital:	
	opt stack 0

	psect	text3
__ptext3:	
;; *************** function _T0_sysinitial *****************
;; Defined at:
;;		line 56 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _T0_sysinitial

_T0_sysinitial:	
	opt stack 1

;inital.c: 65: OPTION=0x07;

;incstack = 0
; Regs used in _T0_sysinitial: [wreg]
	movlw	7
	movwf	65	;volatile

;inital.c: 66: T0=0xF0;
	movlw	240
	movwf	1	;volatile

;inital.c: 67: T0IE=1;
	bsf	14,0	;volatile

;inital.c: 68: T0IF=0;
	bcf	14,3	;volatile

;inital.c: 69: GIE=1;
	bsf	14,7	;volatile
	return
__end_of_T0_sysinitial:	
	opt stack 0

	psect	text4
	file	"motor1.c"
__ptext4:	
;; *************** function _Motor_ToggleSpeed *****************
;; Defined at:
;;		line 114 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		___awmod
;;		_hardware_set_motor
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_ToggleSpeed

_Motor_ToggleSpeed:	
	opt stack 0

;motor1.c: 117: current_speed = (current_speed + 1) % SPEED_COUNT;

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_ToggleSpeed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movf	_current_speed,w
	movwf	___awmod@dividend
	clrf	___awmod@dividend+1
	incf	___awmod@dividend,f
	btfsc	3,2
	incf	___awmod@dividend+1,f
	movlw	3
	movwf	___awmod@divisor
	clrf	___awmod@divisor+1
	fcall	___awmod
	movf	?___awmod,w
	movwf	_current_speed

;motor1.c: 120: hardware_set_motor(current_dir, current_speed);
	movwf	hardware_set_motor@speed
	movf	_current_dir,w
	ljmp	_hardware_set_motor
__end_of_Motor_ToggleSpeed:	
	opt stack 0

	psect	text5
	file	"E:\HCIDE_V3.0.18.S_3TEST\picc_compiler\sources\common\awmod.c"
__ptext5:	
;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "E:\HCIDE_V3.0.18.S_3TEST\picc_compiler\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] int 
;;  dividend        2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   12[BANK0 ] unsigned char 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_ToggleSpeed
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function ___awmod

___awmod:	
	opt stack 0

;incstack = 0
; Regs used in ___awmod: [wreg+status,2+status,0]
	clrf	___awmod@sign
	btfss	___awmod@dividend+1,7
	goto	l3505
	comf	___awmod@dividend,f
	comf	___awmod@dividend+1,f
	incf	___awmod@dividend,f
	btfsc	3,2
	incf	___awmod@dividend+1,f
	clrf	___awmod@sign
	incf	___awmod@sign,f
l3505:	
	btfss	___awmod@divisor+1,7
	goto	l3509
	comf	___awmod@divisor,f
	comf	___awmod@divisor+1,f
	incf	___awmod@divisor,f
	btfsc	3,2
	incf	___awmod@divisor+1,f
l3509:	
	movf	___awmod@divisor,w
	iorwf	___awmod@divisor+1,w
	btfsc	3,2
	goto	l3525
	clrf	___awmod@counter
L1:	
	incf	___awmod@counter,f
	btfsc	___awmod@divisor+1,7
	goto	l3517
	bcf	3,0
	rlf	___awmod@divisor,f
	rlf	___awmod@divisor+1,f
	goto	L1
l3517:	
	movf	___awmod@divisor+1,w
	subwf	___awmod@dividend+1,w
	btfss	3,2
	goto	u745
	movf	___awmod@divisor,w
	subwf	___awmod@dividend,w
u745:	
	btfss	3,0
	goto	L2
	movf	___awmod@divisor,w
	subwf	___awmod@dividend,f
	movf	___awmod@divisor+1,w
	btfss	3,0
	decf	___awmod@dividend+1,f
	subwf	___awmod@dividend+1,f
	bcf	3,0
L2:	
	rrf	___awmod@divisor+1,f
	rrf	___awmod@divisor,f
	decfsz	___awmod@counter,f
	goto	l3517
l3525:	
	movf	___awmod@sign,w
	btfsc	3,2
	goto	l3529
	comf	___awmod@dividend,f
	comf	___awmod@dividend+1,f
	incf	___awmod@dividend,f
	btfsc	3,2
	incf	___awmod@dividend+1,f
l3529:	
	movf	___awmod@dividend+1,w
	movwf	?___awmod+1
	movf	___awmod@dividend,w
	movwf	?___awmod
	return
__end_of___awmod:	
	opt stack 0

	psect	text6
	file	"motor1.c"
__ptext6:	
;; *************** function _Motor_ToggleDirection *****************
;; Defined at:
;;		line 101 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Motor_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_ToggleDirection

_Motor_ToggleDirection:	
	opt stack 0

;motor1.c: 103: Motor_Stop();

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_ToggleDirection: [wreg+status,2+status,0+pclath+cstack]
	fcall	_Motor_Stop

;motor1.c: 106: current_dir = (current_dir == DIRECTION_FORWARD) ?
;motor1.c: 107: DIRECTION_REVERSE : DIRECTION_FORWARD;
	movf	_current_dir,w
	btfss	3,2
	goto	u870
	movlw	1
	goto	u880
u870:	
	movlw	0
u880:	
	movwf	_current_dir
	return
__end_of_Motor_ToggleDirection:	
	opt stack 0

	psect	text7
__ptext7:	
;; *************** function _Motor_Stop *****************
;; Defined at:
;;		line 92 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_hardware_stop_motor
;; This function is called by:
;;		_main
;;		_Motor_ToggleDirection
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_Stop

_Motor_Stop:	
	opt stack 0

;motor1.c: 94: hardware_stop_motor();

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	ljmp	l3401
__end_of_Motor_Stop:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _Motor_Start *****************
;; Defined at:
;;		line 83 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_hardware_set_motor
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_Start

_Motor_Start:	
	opt stack 0

;motor1.c: 85: hardware_set_motor(current_dir, current_speed);

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movf	_current_speed,w
	movwf	hardware_set_motor@speed
	movf	_current_dir,w
	ljmp	_hardware_set_motor
__end_of_Motor_Start:	
	opt stack 0

	psect	text9
__ptext9:	
;; *************** function _hardware_set_motor *****************
;; Defined at:
;;		line 40 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;  dir             1    wreg     enum E465
;;  speed           1    8[BANK0 ] enum E475
;; Auto vars:     Size  Location     Type
;;  dir             1    9[BANK0 ] enum E465
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_nPWM1
;;		_nPWM2
;; This function is called by:
;;		_Motor_Start
;;		_Motor_ToggleSpeed
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _hardware_set_motor

_hardware_set_motor:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in _hardware_set_motor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;hardware_set_motor@dir stored from wreg
	movwf	hardware_set_motor@dir

;motor1.c: 42: if (dir == DIRECTION_FORWARD)
	movf	hardware_set_motor@dir,w
	btfss	3,2
	goto	l3493

;motor1.c: 43: {
;motor1.c: 44: nPWM1(pwm_map[speed]);
	bcf	3,0
	rlf	hardware_set_motor@speed,w
	addlw	low ((_pwm_map-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	fcall	_nPWM1

;motor1.c: 45: nPWM2(0X00);
	movlw	0
	ljmp	_nPWM2
l3493:	
;motor1.c: 46: }


;motor1.c: 47: else
;motor1.c: 48: {
;motor1.c: 49: nPWM1(0X00);
	movlw	0
	fcall	_nPWM1

;motor1.c: 50: nPWM2(pwm_map[speed]);
	bcf	3,0
	rlf	hardware_set_motor@speed,w
	addlw	low ((_pwm_map-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	ljmp	_nPWM2
__end_of_hardware_set_motor:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _Motor_Init *****************
;; Defined at:
;;		line 61 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Motor_SetMode
;;		_hardware_stop_motor
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_Init

_Motor_Init:	
	opt stack 0
	movlw	0

;motor1.c: 64: current_dir = DIRECTION_FORWARD;

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	clrf	_current_dir

;motor1.c: 65: current_mode = MODE_INITIAL;
	clrf	_current_mode

;motor1.c: 66: current_speed = SPEED_85;
	clrf	_current_speed

;motor1.c: 69: mode_runtime.state = MODE_STATE_STOPPED;
	clrf	_mode_runtime
	incf	_mode_runtime,f

;motor1.c: 70: mode_runtime.timer = 0;
	clrf	_mode_runtime+1
	clrf	_mode_runtime+2

;motor1.c: 71: mode_runtime.dir_switch_timer = 0;
	clrf	_mode_runtime+3
	clrf	_mode_runtime+4

;motor1.c: 74: Motor_SetMode(MODE_INITIAL);
	fcall	_Motor_SetMode

;motor1.c: 76: hardware_stop_motor();
	ljmp	l3401
__end_of_Motor_Init:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _hardware_stop_motor *****************
;; Defined at:
;;		line 28 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_nPWM1
;;		_nPWM2
;; This function is called by:
;;		_Motor_Init
;;		_Motor_Stop
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _hardware_stop_motor

_hardware_stop_motor:	
	opt stack 0
l3401:	
;incstack = 0
;; hardware stack exceeded
; Regs used in _hardware_stop_motor: [wreg+status,2+status,0+pclath+cstack]


;motor1.c: 30: nPWM1(0X00);
	movlw	0
	fcall	_nPWM1

;motor1.c: 31: nPWM2(0X00);
	movlw	0
	ljmp	_nPWM2
__end_of_hardware_stop_motor:	
	opt stack 0

	psect	text12
	file	"pwm.c"
__ptext12:	
;; *************** function _nPWM2 *****************
;; Defined at:
;;		line 38 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  m               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hardware_stop_motor
;;		_hardware_set_motor
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _nPWM2

_nPWM2:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in _nPWM2: [wreg]
;nPWM2@m stored from wreg
	movwf	nPWM2@m

;pwm.c: 40: WDTEN = 0;
	bcf	65,7	;volatile

;pwm.c: 42: TMR2H = 0x40;
	movlw	64
	movwf	81	;volatile

;pwm.c: 43: PWM1E = 1;
	bsf	80,6	;volatile

;pwm.c: 44: T2 = 0x34;
	movlw	52
	movwf	82	;volatile

;pwm.c: 45: T2LOAD = 0xF5;
	movlw	245
	movwf	83	;volatile

;pwm.c: 46: PWM1P = m;
	movf	nPWM2@m,w
	movwf	84	;volatile

;pwm.c: 47: T2CON = 0x40;
	movlw	64
	movwf	80	;volatile

;pwm.c: 48: T2IF = 0;
	bcf	75,5	;volatile

;pwm.c: 50: T2EN = 1;
	bsf	80,7	;volatile

;pwm.c: 51: T2IE = 1;
	bsf	75,6	;volatile
	return
__end_of_nPWM2:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _nPWM1 *****************
;; Defined at:
;;		line 15 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  n               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  n               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hardware_stop_motor
;;		_hardware_set_motor
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _nPWM1

_nPWM1:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in _nPWM1: [wreg]
;nPWM1@n stored from wreg
	movwf	nPWM1@n

;pwm.c: 17: WDTEN = 0;
	bcf	65,7	;volatile

;pwm.c: 19: TMR2H = 0x40;
	movlw	64
	movwf	81	;volatile

;pwm.c: 20: PWM0E = 1;
	bsf	76,6	;volatile

;pwm.c: 21: T1 = 0x34;
	movlw	52
	movwf	77	;volatile

;pwm.c: 22: T1LOAD = 0xF5;
	movlw	245
	movwf	78	;volatile

;pwm.c: 23: PWM0P = n;
	movf	nPWM1@n,w
	movwf	79	;volatile

;pwm.c: 24: T1CON = 0x40;
	movlw	64
	movwf	76	;volatile

;pwm.c: 25: T1IF = 0;
	bcf	75,0	;volatile

;pwm.c: 27: T1EN = 1;
	bsf	76,7	;volatile

;pwm.c: 28: T1IE = 1;
	bsf	75,1	;volatile
	return
__end_of_nPWM1:	
	opt stack 0

	psect	text14
	file	"motor1.c"
__ptext14:	
;; *************** function _Motor_SetMode *****************
;; Defined at:
;;		line 153 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;  new_mode        1    wreg     enum E469
;; Auto vars:     Size  Location     Type
;;  new_mode        1    7[BANK0 ] enum E469
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_Init
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_SetMode

_Motor_SetMode:	
	opt stack 1

;incstack = 0
; Regs used in _Motor_SetMode: [wreg-fsr0h+status,2+status,0]
;Motor_SetMode@new_mode stored from wreg
	movwf	Motor_SetMode@new_mode

;motor1.c: 156: current_mode = new_mode;
	movwf	_current_mode

;motor1.c: 159: mode_runtime.timer = 0;
	clrf	_mode_runtime+1
	clrf	_mode_runtime+2

;motor1.c: 160: mode_runtime.dir_switch_timer = 0;
	clrf	_mode_runtime+3
	clrf	_mode_runtime+4

;motor1.c: 163: switch (new_mode)
	goto	l3477
l1985:	
;motor1.c: 164: {
;motor1.c: 165: case MODE_INITIAL:


;motor1.c: 167: mode_params.work_duration = 60000;
	movlw	96
	movwf	_mode_params
	movlw	234
	movwf	_mode_params+1

;motor1.c: 168: mode_params.stop_duration = 1000;
	movlw	232
	movwf	_mode_params+2
	movlw	3
	goto	L3
l1987:	
;motor1.c: 173: case MODE_A:

;motor1.c: 171: break;

;motor1.c: 170: mode_params.dir_switch_interval = 60000;

;motor1.c: 169: mode_params.auto_dir_switch = 1;


;motor1.c: 175: mode_params.work_duration = 1500;
	movlw	220
	movwf	_mode_params
	movlw	5
	movwf	_mode_params+1

;motor1.c: 176: mode_params.stop_duration = 500;
	movlw	244
	movwf	_mode_params+2
	movlw	1
L3:	
	movwf	_mode_params+3
	movlw	96

;motor1.c: 177: mode_params.auto_dir_switch = 1;
	clrf	_mode_params+4
	incf	_mode_params+4,f

;motor1.c: 178: mode_params.dir_switch_interval = 60000;
	movwf	_mode_params+5
	movlw	234
	movwf	_mode_params+6

;motor1.c: 179: break;
	goto	l1986
l1988:	
;motor1.c: 181: case MODE_B:


;motor1.c: 183: mode_params.work_duration = 2000;
	movlw	208
	movwf	_mode_params
	movlw	7

;motor1.c: 184: mode_params.stop_duration = 500;

;motor1.c: 185: mode_params.auto_dir_switch = 1;
	fcall	PL2	;call to abstracted procedure
	incf	_mode_params+4,f
	goto	L4
l1989:	
;motor1.c: 189: case MODE_C:

;motor1.c: 187: break;

;motor1.c: 186: mode_params.dir_switch_interval = 0;


;motor1.c: 191: mode_params.work_duration = 1000;
	movlw	232
	movwf	_mode_params
	movlw	3

;motor1.c: 192: mode_params.stop_duration = 500;

;motor1.c: 193: mode_params.auto_dir_switch = 0;
	fcall	PL2	;call to abstracted procedure
L4:	

;motor1.c: 194: mode_params.dir_switch_interval = 0;
	clrf	_mode_params+5
	clrf	_mode_params+6

;motor1.c: 195: break;
	goto	l1986
l3477:	
	movf	Motor_SetMode@new_mode,w

; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte
	movwf	4
	movlw	4
	subwf	4,w
	btfsc	3,0
	goto	l1986
	movlw	high S3797
	movwf	10
	movlw	low S3797
	addwf	4,w
	movwf	2
l1986:	

;motor1.c: 199: mode_runtime.state = MODE_STATE_STOPPED;
	clrf	_mode_runtime
	incf	_mode_runtime,f
	return
__end_of_Motor_SetMode:	
	opt stack 0
PL2:	
	opt stack 1
	movwf	_mode_params+1
	movlw	244
	movwf	_mode_params+2
	movlw	1
	movwf	_mode_params+3
	clrf	_mode_params+4
	return
__end_ofPL2:	
	opt stack 0

	psect	swtext1
__pswtext1:	
	opt stack 1
S3797:	
	ljmp	l1985
	ljmp	l1987
	ljmp	l1988
	ljmp	l1989

	psect	text15
__ptext15:	
;; *************** function _Motor_GetMode *****************
;; Defined at:
;;		line 143 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E467
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_GetMode

_Motor_GetMode:	
	opt stack 1

;motor1.c: 145: return current_mode;

;incstack = 0
; Regs used in _Motor_GetMode: [wreg]
	movf	_current_mode,w
	return
__end_of_Motor_GetMode:	
	opt stack 0

	psect	text16
	file	"main.c"
__ptext16:	
;; *************** function _DelayMs *****************
;; Defined at:
;;		line 10 in file "main.c"
;; Parameters:    Size  Location     Type
;;  t               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DelayUs2x
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _DelayMs

_DelayMs:	
	opt stack 0
l3607:	
;main.c: 13: while(t--)

;incstack = 0
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]

	movlw	1
	subwf	DelayMs@t,f
	movlw	0
	btfss	3,0
	decf	DelayMs@t+1,f
	subwf	DelayMs@t+1,f
	incfsz	DelayMs@t,w
	goto	l3605
	incf	DelayMs@t+1,w
	btfsc	3,2
	return
l3605:	

;main.c: 14: {
;main.c: 16: DelayUs2x(120);
	movlw	120
	fcall	_DelayUs2x

;main.c: 17: DelayUs2x(125);
	movlw	125
	fcall	_DelayUs2x
	goto	l3607
__end_of_DelayMs:	
	opt stack 0

	psect	text17
	file	"key_1.c"
__ptext17:	
;; *************** function _DelayUs2x *****************
;; Defined at:
;;		line 88 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _DelayUs2x

_DelayUs2x:	
	opt stack 0

;incstack = 0
; Regs used in _DelayUs2x: [wreg]
;DelayUs2x@t stored from wreg
	movwf	DelayUs2x@t
l3421:	
;key_1.c: 90: while(--t);

	decfsz	DelayUs2x@t,f
	goto	l3421
	return
__end_of_DelayUs2x:	
	opt stack 0

	psect	text18
	file	"main.c"
__ptext18:	
;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 172 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Motor_Process
;;		_System_TimerHandler
;;		_key_tick
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Timer0_Isr

_Timer0_Isr:	
	opt stack 0

;main.c: 175: if(T0IF)
	btfss	14,3	;volatile
	goto	i1l3771

;main.c: 176: {
;main.c: 177: T0IF=0;
	bcf	14,3	;volatile

;main.c: 178: T0=0xF0;
	movlw	240
	movwf	1	;volatile

;main.c: 179: key_tick();
	fcall	_key_tick

;main.c: 180: System_TimerHandler();
	fcall	_System_TimerHandler

;main.c: 181: Motor_Process();
	fcall	_Motor_Process
i1l3771:	

;main.c: 184: }
;main.c: 185: if (T1IF)
	btfss	75,0	;volatile
	goto	i1l1488

;main.c: 186: {
;main.c: 187: T1IF=0;
	bcf	75,0	;volatile

;main.c: 188: T1IE=1;
	bsf	75,1	;volatile

;main.c: 189: TRISB2=0;
	bcf	70,2	;volatile
i1l1488:	

;main.c: 190: }
;main.c: 191: if (T2IF)
	btfss	75,5	;volatile
	goto	i1l1490

;main.c: 192: {
;main.c: 193: T2IF=0;
	bcf	75,5	;volatile

;main.c: 194: T2IE=1;
	bsf	75,6	;volatile

;main.c: 195: TRISB3=0;
	bcf	70,3	;volatile
i1l1490:	
	movf	??_Timer0_Isr+3,w
	movwf	63
	btfsc	3,5
	goto FF_BANK10
	bsf	3,5
	movwf	63
	bcf	3,5
	goto EXIT_BANK_FF0
FF_BANK10:
	bcf	3,5
	movwf	63
	bsf	3,5
EXIT_BANK_FF0:
	movf	??_Timer0_Isr+2,w
	movwf	10
	movf	??_Timer0_Isr+1,w
	movwf	4
	btfsc	??_Timer0_Isr^0,1
	goto	REV_BANK1
	swapf	??_Timer0_Isr^0,w
	movwf	3
	swapf	62,f
	swapf	62,w
	goto	EXIT_BANK_REV
REV_BANK1:
	swapf	??_Timer0_Isr^0,w
	movwf	3
	bcf	3,5
	swapf	62,f
	swapf	62,w
	bsf	3,5
EXIT_BANK_REV:
	retfie
__end_of_Timer0_Isr:	
	opt stack 0

	psect	intentry
__pintentry:	
;incstack = 0
;; hardware stack exceeded
; Regs used in _Timer0_Isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]

	opt stack 0
interrupt_function:	
	opt stack 0
saved_w	set	btemp
	btfsc	3,5
	goto SAVE_BANK1
	movwf	btemp
	goto EXIT_BANK_SAVE
SAVE_BANK1:
	bcf	3,5
	movwf	btemp
	bsf	3,5
EXIT_BANK_SAVE:
	swapf	3,w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_Timer0_Isr
	movf	4,w
	movwf	??_Timer0_Isr+1
	movf	10,w
	movwf	??_Timer0_Isr+2
	movf	btemp+1,w
	movwf	??_Timer0_Isr+3
	ljmp	_Timer0_Isr

	psect	text19
	file	"key_1.c"
__ptext19:	
;; *************** function _key_tick *****************
;; Defined at:
;;		line 132 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_key_scan
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _key_tick

_key_tick:	
	opt stack 0

;key_1.c: 134: static unsigned char stable_cnt = 0;
;key_1.c: 135: static unsigned char last_key = 0;
;key_1.c: 136: static unsigned char key_released = 1;
;key_1.c: 138: key_scan();

;incstack = 0
; Regs used in _key_tick: [wreg+status,2+status,0+pclath+cstack]
	fcall	_key_scan

;key_1.c: 140: if (key == last_key)
	movf	_key,w
	xorwf	key_tick@last_key,w
	btfss	3,2
	goto	i1l3599

;key_1.c: 141: {
;key_1.c: 143: if (stable_cnt < 40)
	movlw	40
	subwf	key_tick@stable_cnt,w
	btfsc	3,0
	goto	i1l3585

;key_1.c: 144: stable_cnt++;
	incf	key_tick@stable_cnt,f
	return
i1l3585:	

;key_1.c: 145: else
;key_1.c: 146: {
;key_1.c: 148: if (key != 0 && key_released == 1)
	movf	_key,w
	btfsc	3,2
	goto	i1l3593
	decfsz	key_tick@key_released,w
	goto	i1l3593

;key_1.c: 149: {
;key_1.c: 150: final_key = key;
	movf	_key,w
	movwf	_final_key

;key_1.c: 151: key_released = 0;
	clrf	key_tick@key_released

;key_1.c: 152: }
	return
i1l3593:	

;key_1.c: 154: else if (key == 0)
	movf	_key,w
	btfss	3,2
	return

;key_1.c: 155: {
;key_1.c: 156: final_key = 0;
	clrf	_final_key

;key_1.c: 157: key_released = 1;
	clrf	key_tick@key_released
	incf	key_tick@key_released,f

;key_1.c: 158: }
;key_1.c: 159: }
;key_1.c: 160: }
	return
i1l3599:	

;key_1.c: 161: else
;key_1.c: 162: {
;key_1.c: 164: stable_cnt = 0;
	clrf	key_tick@stable_cnt

;key_1.c: 165: last_key = key;
	movf	_key,w
	movwf	key_tick@last_key
	return
__end_of_key_tick:	
	opt stack 0

	psect	text20
__ptext20:	
;; *************** function _key_scan *****************
;; Defined at:
;;		line 93 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_keymode0_configuration
;;		_keymode1_configuration
;;		_keymode2_configuration
;;		i1_DelayUs2x
;; This function is called by:
;;		_key_tick
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _key_scan

_key_scan:	
	opt stack 0

;key_1.c: 95: key=0;

;incstack = 0
; Regs used in _key_scan: [wreg+status,2+status,0+pclath+cstack]
	clrf	_key

;key_1.c: 96: keymode0_configuration();
	fcall	_keymode0_configuration

;key_1.c: 98: DelayUs2x(10);
	movlw	10
	fcall	i1_DelayUs2x

;key_1.c: 99: if(PORTA7==0)
	btfsc	5,7	;volatile
	goto	i1l946

;key_1.c: 100: {
;key_1.c: 101: key=10;return;
	movlw	10
	movwf	_key
	return
i1l946:	

;key_1.c: 102: }
;key_1.c: 103: if(PORTA6==0)
	btfsc	5,6	;volatile
	goto	i1l948

;key_1.c: 104: {
;key_1.c: 105: key=12;return;
	movlw	12
	movwf	_key
	return
i1l948:	

;key_1.c: 106: }
;key_1.c: 107: if(PORTA4==0)
	btfsc	5,4	;volatile
	goto	i1l3443

;key_1.c: 108: {
;key_1.c: 109: key=5;return;
	movlw	5
	movwf	_key
	return
i1l3443:	

;key_1.c: 110: }
;key_1.c: 111: keymode1_configuration();
	fcall	_keymode1_configuration

;key_1.c: 112: DelayUs2x(10);
	movlw	10
	fcall	i1_DelayUs2x

;key_1.c: 113: if(PORTA6==1)
	btfss	5,6	;volatile
	goto	i1l950

;key_1.c: 114: {
;key_1.c: 115: key=2;return;
	movlw	2
	movwf	_key
	return
i1l950:	

;key_1.c: 116: }
;key_1.c: 117: if(PORTA7==1)
	btfss	5,7	;volatile
	goto	i1l3453

;key_1.c: 118: {
;key_1.c: 119: key=1;return;
	clrf	_key
	incf	_key,f
	return
i1l3453:	

;key_1.c: 120: }
;key_1.c: 121: keymode2_configuration();
	fcall	_keymode2_configuration

;key_1.c: 122: DelayUs2x(10);
	movlw	10
	fcall	i1_DelayUs2x

;key_1.c: 123: if(PORTA6==1&&PORTA7==1)
	btfsc	5,6	;volatile
	btfss	5,7	;volatile
	return

;key_1.c: 124: {
;key_1.c: 125: key=8;return;
	movlw	8
	movwf	_key
	return
__end_of_key_scan:	
	opt stack 0

	psect	text21
__ptext21:	
;; *************** function i1_DelayUs2x *****************
;; Defined at:
;;		line 88 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_DelayUs2x

i1_DelayUs2x:	
	opt stack 0

;incstack = 0
; Regs used in i1_DelayUs2x: [wreg]
;i1DelayUs2x@t stored from wreg
	movwf	i1DelayUs2x@t
i1l3405:	
;key_1.c: 90: while(--t);

	decfsz	i1DelayUs2x@t,f
	goto	i1l3405
	return
__end_ofi1_DelayUs2x:	
	opt stack 0

	psect	text22
__ptext22:	
;; *************** function _keymode2_configuration *****************
;; Defined at:
;;		line 61 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _keymode2_configuration

_keymode2_configuration:	
	opt stack 0

;key_1.c: 64: ANSELL=0X00;

;incstack = 0
; Regs used in _keymode2_configuration: [wreg+status,2]
	clrf	86	;volatile

;key_1.c: 67: TRISA=0X7F;
	movlw	127
	movwf	69	;volatile

;key_1.c: 68: TRISB=0X00;
	clrf	70	;volatile

;key_1.c: 71: PORTA=0XFF;
	movlw	255
	movwf	5	;volatile

;key_1.c: 72: PORTB=0XFF;
	movwf	6	;volatile

;key_1.c: 75: PHCON1=0XFF;
	movwf	67	;volatile

;key_1.c: 76: PHCON= 0XFF;
	movwf	13	;volatile

;key_1.c: 79: PDCON1=0x00;
	clrf	66	;volatile

;key_1.c: 80: PDCON=0xFF;
	movwf	11	;volatile

;key_1.c: 83: IOCA=0X00;
	clrf	7	;volatile

;key_1.c: 84: IOCB=0X00;
	clrf	9	;volatile
	return
__end_of_keymode2_configuration:	
	opt stack 0

	psect	text23
__ptext23:	
;; *************** function _keymode1_configuration *****************
;; Defined at:
;;		line 34 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _keymode1_configuration

_keymode1_configuration:	
	opt stack 0

;key_1.c: 37: ANSELL=0X00;

;incstack = 0
; Regs used in _keymode1_configuration: [wreg+status,2]
	clrf	86	;volatile

;key_1.c: 40: TRISA=0XEF;
	movlw	239
	movwf	69	;volatile

;key_1.c: 41: TRISB=0X00;
	clrf	70	;volatile

;key_1.c: 44: PORTA=0XFF;
	movlw	255
	movwf	5	;volatile

;key_1.c: 45: PORTB=0XFF;
	movwf	6	;volatile

;key_1.c: 48: PHCON1=0XFF;
	movwf	67	;volatile

;key_1.c: 49: PHCON= 0XFF;
	movwf	13	;volatile

;key_1.c: 52: PDCON1=0x00;
	clrf	66	;volatile

;key_1.c: 53: PDCON=0xFF;
	movwf	11	;volatile

;key_1.c: 56: IOCA=0X00;
	clrf	7	;volatile

;key_1.c: 57: IOCB=0X00;
	clrf	9	;volatile
	return
__end_of_keymode1_configuration:	
	opt stack 0

	psect	text24
__ptext24:	
;; *************** function _keymode0_configuration *****************
;; Defined at:
;;		line 8 in file "key_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _keymode0_configuration

_keymode0_configuration:	
	opt stack 0

;key_1.c: 10: ANSELL=0X00;

;incstack = 0
; Regs used in _keymode0_configuration: [wreg+status,2]
	clrf	86	;volatile

;key_1.c: 13: TRISA=0XFF;
	movlw	255
	movwf	69	;volatile

;key_1.c: 14: TRISB=0X00;
	clrf	70	;volatile

;key_1.c: 17: PORTA=0XFF;
	movwf	5	;volatile

;key_1.c: 18: PORTB=0XFF;
	movwf	6	;volatile

;key_1.c: 21: PHCON1=0X00;
	clrf	67	;volatile

;key_1.c: 22: PHCON=0XFF;
	movwf	13	;volatile

;key_1.c: 25: PDCON1=0xFF;
	movwf	66	;volatile

;key_1.c: 26: PDCON=0xFF;
	movwf	11	;volatile

;key_1.c: 29: IOCA=0X00;
	clrf	7	;volatile

;key_1.c: 30: IOCB=0X00;
	clrf	9	;volatile
	return
__end_of_keymode0_configuration:	
	opt stack 0

	psect	text25
	file	"main.c"
__ptext25:	
;; *************** function _System_TimerHandler *****************
;; Defined at:
;;		line 146 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_Motor_Stop
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _System_TimerHandler

_System_TimerHandler:	
	opt stack 0

;main.c: 148: if (sys_state == SYSTEM_ON)

;incstack = 0
;; hardware stack exceeded
; Regs used in _System_TimerHandler: [wreg+status,2+status,0+pclath+cstack]
	decfsz	_sys_state,w
	return

;main.c: 149: {
;main.c: 150: i++;
	incf	System_TimerHandler@i,f
	btfsc	3,2
	incf	System_TimerHandler@i+1,f

;main.c: 152: if (i>=1000)
	movlw	3
	subwf	System_TimerHandler@i+1,w
	movlw	232
	btfsc	3,2
	subwf	System_TimerHandler@i,w
	btfss	3,0
	return

;main.c: 153: {
;main.c: 154: i=0;
	clrf	System_TimerHandler@i
	clrf	System_TimerHandler@i+1

;main.c: 155: if (shutdown_timer > 0)
	movf	_shutdown_timer,w
	iorwf	_shutdown_timer+1,w
	btfsc	3,2
	return

;main.c: 156: {
;main.c: 157: shutdown_timer--;
	movlw	1
	subwf	_shutdown_timer,f
	movlw	0
	btfss	3,0
	decf	_shutdown_timer+1,f
	subwf	_shutdown_timer+1,f

;main.c: 158: if (shutdown_timer == 0)
	movf	_shutdown_timer,w
	iorwf	_shutdown_timer+1,w
	btfss	3,2
	return

;main.c: 159: {
;main.c: 161: sys_state = SYSTEM_OFF;
	clrf	_sys_state

;main.c: 162: Motor_Stop();
	fcall	i1_Motor_Stop
	return
__end_of_System_TimerHandler:	
	opt stack 0

	psect	text26
	file	"motor1.c"
__ptext26:	
;; *************** function _Motor_Process *****************
;; Defined at:
;;		line 206 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_System_GetState
;;		i1_Motor_Start
;;		i1_Motor_Stop
;;		i1_Motor_ToggleDirection
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Motor_Process

_Motor_Process:	
	opt stack 0

;motor1.c: 209: if (System_GetState() != SYSTEM_ON) return;

;incstack = 0
;; hardware stack exceeded
; Regs used in _Motor_Process: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_System_GetState
	xorlw	1
	btfss	3,2
	return

;motor1.c: 212: if (mode_params.auto_dir_switch && mode_params.dir_switch_interval > 0)
	movf	_mode_params+4,w
	btfsc	3,2
	goto	i1l3663
	movf	_mode_params+5,w
	iorwf	_mode_params+6,w
	btfsc	3,2
	goto	i1l3663

;motor1.c: 213: {
;motor1.c: 214: if (mode_runtime.dir_switch_timer < 65535)
	incfsz	_mode_runtime+3,w
	goto	i1l3659
	incf	_mode_runtime+4,w
	btfsc	3,2
	goto	i1l3661
i1l3659:	

;motor1.c: 215: {
;motor1.c: 216: mode_runtime.dir_switch_timer++;
	incf	_mode_runtime+3,f
	btfsc	3,2
	incf	_mode_runtime+4,f

;motor1.c: 217: }
	goto	i1l3663
i1l3661:	

;motor1.c: 218: else
;motor1.c: 219: {
;motor1.c: 220: mode_runtime.dir_switch_timer = 0;
	clrf	_mode_runtime+3
	clrf	_mode_runtime+4
i1l3663:	

;motor1.c: 221: }
;motor1.c: 222: }
;motor1.c: 225: if (mode_runtime.state == MODE_STATE_RUNNING)
	movf	_mode_runtime,w
	btfss	3,2
	goto	i1l3683

;motor1.c: 226: {
;motor1.c: 228: if (mode_runtime.timer >= mode_params.work_duration)
	movf	_mode_params+1,w
	subwf	_mode_runtime+2,w
	btfss	3,2
	goto	u98_25
	movf	_mode_params,w
	subwf	_mode_runtime+1,w
u98_25:	
	btfss	3,0
	goto	i1l3691

;motor1.c: 229: {
;motor1.c: 230: Motor_Stop();
	fcall	i1_Motor_Stop
	movlw	2

;motor1.c: 231: mode_runtime.state = MODE_STATE_STOPPED;
	clrf	_mode_runtime
	incf	_mode_runtime,f

;motor1.c: 232: mode_runtime.timer = 0;
	clrf	_mode_runtime+1
	clrf	_mode_runtime+2

;motor1.c: 235: if (current_mode == MODE_B && mode_params.auto_dir_switch)
	xorwf	_current_mode,w
	btfss	3,2
	goto	i1l3695
	movf	_mode_params+4,w
	btfsc	3,2
	goto	i1l3695

;motor1.c: 236: {
;motor1.c: 237: Motor_ToggleDirection();
	fcall	i1_Motor_ToggleDirection
	goto	L6
i1l3683:	
;motor1.c: 240: else
;motor1.c: 241: {
;motor1.c: 242: if (mode_runtime.timer < 65535)


;motor1.c: 248: else
;motor1.c: 249: {
;motor1.c: 251: if (mode_runtime.timer >= mode_params.stop_duration)
	movf	_mode_params+3,w
	subwf	_mode_runtime+2,w
	btfss	3,2
	goto	u102_25
	movf	_mode_params+2,w
	subwf	_mode_runtime+1,w
u102_25:	
	btfss	3,0
	goto	i1l3691

;motor1.c: 252: {
;motor1.c: 253: Motor_Start();
	fcall	i1_Motor_Start

;motor1.c: 254: mode_runtime.state = MODE_STATE_RUNNING;
	clrf	_mode_runtime

;motor1.c: 255: mode_runtime.timer = 0;
	clrf	_mode_runtime+1
	clrf	_mode_runtime+2
L6:	

;motor1.c: 256: }
	goto	i1l3695
i1l3691:	

;motor1.c: 257: else
;motor1.c: 258: {
;motor1.c: 259: if (mode_runtime.timer < 65535)
	incfsz	_mode_runtime+1,w
	goto	i1l3681
	incf	_mode_runtime+2,w
	btfsc	3,2
	goto	i1l3695
i1l3681:	

;motor1.c: 243: {
;motor1.c: 244: mode_runtime.timer++;
	incf	_mode_runtime+1,f
	btfsc	3,2
	incf	_mode_runtime+2,f
i1l3695:	

;motor1.c: 262: }
;motor1.c: 263: }
;motor1.c: 264: }
;motor1.c: 267: if (mode_params.auto_dir_switch &&
;motor1.c: 268: mode_params.dir_switch_interval > 0 &&
;motor1.c: 269: mode_runtime.dir_switch_timer >= mode_params.dir_switch_interval)
	movf	_mode_params+4,w
	btfsc	3,2
	return
	movf	_mode_params+5,w
	iorwf	_mode_params+6,w
	btfsc	3,2
	return
	movf	_mode_params+6,w
	subwf	_mode_runtime+4,w
	btfss	3,2
	goto	u106_25
	movf	_mode_params+5,w
	subwf	_mode_runtime+3,w
u106_25:	
	btfss	3,0
	return

;motor1.c: 270: {
;motor1.c: 271: Motor_ToggleDirection();
	fcall	i1_Motor_ToggleDirection

;motor1.c: 272: mode_runtime.dir_switch_timer = 0;
	clrf	_mode_runtime+3
	clrf	_mode_runtime+4

;motor1.c: 273: Motor_Start();
	fcall	i1_Motor_Start
	return
__end_of_Motor_Process:	
	opt stack 0

	psect	text27
__ptext27:	
;; *************** function i1_Motor_ToggleDirection *****************
;; Defined at:
;;		line 101 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_Motor_Stop
;; This function is called by:
;;		_Motor_Process
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_Motor_ToggleDirection

i1_Motor_ToggleDirection:	
	opt stack 0

;motor1.c: 103: Motor_Stop();

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_Motor_ToggleDirection: [wreg+status,2+status,0+pclath+cstack]
	fcall	i1_Motor_Stop

;motor1.c: 106: current_dir = (current_dir == DIRECTION_FORWARD) ?
;motor1.c: 107: DIRECTION_REVERSE : DIRECTION_FORWARD;
	movf	_current_dir,w
	btfss	3,2
	goto	u77_20
	movlw	1
	goto	u78_20
u77_20:	
	movlw	0
u78_20:	
	movwf	_current_dir
	return
__end_ofi1_Motor_ToggleDirection:	
	opt stack 0

	psect	text28
__ptext28:	
;; *************** function i1_Motor_Stop *****************
;; Defined at:
;;		line 92 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_hardware_stop_motor
;; This function is called by:
;;		_System_TimerHandler
;;		_Motor_Process
;;		i1_Motor_ToggleDirection
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_Motor_Stop

i1_Motor_Stop:	
	opt stack 0

;motor1.c: 94: hardware_stop_motor();

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	fcall	i1_hardware_stop_motor
	return
__end_ofi1_Motor_Stop:	
	opt stack 0

	psect	text29
__ptext29:	
;; *************** function i1_hardware_stop_motor *****************
;; Defined at:
;;		line 28 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_nPWM1
;;		i1_nPWM2
;; This function is called by:
;;		i1_Motor_Stop
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_hardware_stop_motor

i1_hardware_stop_motor:	
	opt stack 0

;motor1.c: 30: nPWM1(0X00);

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_hardware_stop_motor: [wreg+status,2+status,0+pclath+cstack]
	movlw	0
	fcall	i1_nPWM1

;motor1.c: 31: nPWM2(0X00);
	movlw	0
	fcall	i1_nPWM2
	return
__end_ofi1_hardware_stop_motor:	
	opt stack 0

	psect	text30
__ptext30:	
;; *************** function i1_Motor_Start *****************
;; Defined at:
;;		line 83 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_hardware_set_motor
;; This function is called by:
;;		_Motor_Process
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_Motor_Start

i1_Motor_Start:	
	opt stack 0

;motor1.c: 85: hardware_set_motor(current_dir, current_speed);

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_Motor_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movf	_current_speed,w
	movwf	i1hardware_set_motor@speed
	movf	_current_dir,w
	fcall	i1_hardware_set_motor
	return
__end_ofi1_Motor_Start:	
	opt stack 0

	psect	text31
__ptext31:	
;; *************** function i1_hardware_set_motor *****************
;; Defined at:
;;		line 40 in file "motor1.c"
;; Parameters:    Size  Location     Type
;;  dir             1    wreg     enum E465
;;  speed           1    1[BANK0 ] enum E475
;; Auto vars:     Size  Location     Type
;;  dir             1    2[BANK0 ] enum E465
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_nPWM1
;;		i1_nPWM2
;; This function is called by:
;;		i1_Motor_Start
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_hardware_set_motor

i1_hardware_set_motor:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_hardware_set_motor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;i1hardware_set_motor@dir stored from wreg
	movwf	i1hardware_set_motor@dir

;motor1.c: 42: if (dir == DIRECTION_FORWARD)
	movf	i1hardware_set_motor@dir,w
	btfss	3,2
	goto	i1l3413

;motor1.c: 43: {
;motor1.c: 44: nPWM1(pwm_map[speed]);
	bcf	3,0
	rlf	i1hardware_set_motor@speed,w
	addlw	low ((_pwm_map-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	fcall	i1_nPWM1

;motor1.c: 45: nPWM2(0X00);
	movlw	0
	fcall	i1_nPWM2

;motor1.c: 46: }
	return
i1l3413:	

;motor1.c: 47: else
;motor1.c: 48: {
;motor1.c: 49: nPWM1(0X00);
	movlw	0
	fcall	i1_nPWM1

;motor1.c: 50: nPWM2(pwm_map[speed]);
	bcf	3,0
	rlf	i1hardware_set_motor@speed,w
	addlw	low ((_pwm_map-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	fcall	i1_nPWM2
	return
__end_ofi1_hardware_set_motor:	
	opt stack 0

	psect	text32
	file	"pwm.c"
__ptext32:	
;; *************** function i1_nPWM2 *****************
;; Defined at:
;;		line 38 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  m               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_hardware_stop_motor
;;		i1_hardware_set_motor
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_nPWM2

i1_nPWM2:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_nPWM2: [wreg]
;i1nPWM2@m stored from wreg
	movwf	i1nPWM2@m

;pwm.c: 40: WDTEN = 0;
	bcf	65,7	;volatile

;pwm.c: 42: TMR2H = 0x40;
	movlw	64
	movwf	81	;volatile

;pwm.c: 43: PWM1E = 1;
	bsf	80,6	;volatile

;pwm.c: 44: T2 = 0x34;
	movlw	52
	movwf	82	;volatile

;pwm.c: 45: T2LOAD = 0xF5;
	movlw	245
	movwf	83	;volatile

;pwm.c: 46: PWM1P = m;
	movf	i1nPWM2@m,w
	movwf	84	;volatile

;pwm.c: 47: T2CON = 0x40;
	movlw	64
	movwf	80	;volatile

;pwm.c: 48: T2IF = 0;
	bcf	75,5	;volatile

;pwm.c: 50: T2EN = 1;
	bsf	80,7	;volatile

;pwm.c: 51: T2IE = 1;
	bsf	75,6	;volatile
	return
__end_ofi1_nPWM2:	
	opt stack 0

	psect	text33
__ptext33:	
;; *************** function i1_nPWM1 *****************
;; Defined at:
;;		line 15 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  n               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  n               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_hardware_stop_motor
;;		i1_hardware_set_motor
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function i1_nPWM1

i1_nPWM1:	
	opt stack 0

;incstack = 0
;; hardware stack exceeded
; Regs used in i1_nPWM1: [wreg]
;i1nPWM1@n stored from wreg
	movwf	i1nPWM1@n

;pwm.c: 17: WDTEN = 0;
	bcf	65,7	;volatile

;pwm.c: 19: TMR2H = 0x40;
	movlw	64
	movwf	81	;volatile

;pwm.c: 20: PWM0E = 1;
	bsf	76,6	;volatile

;pwm.c: 21: T1 = 0x34;
	movlw	52
	movwf	77	;volatile

;pwm.c: 22: T1LOAD = 0xF5;
	movlw	245
	movwf	78	;volatile

;pwm.c: 23: PWM0P = n;
	movf	i1nPWM1@n,w
	movwf	79	;volatile

;pwm.c: 24: T1CON = 0x40;
	movlw	64
	movwf	76	;volatile

;pwm.c: 25: T1IF = 0;
	bcf	75,0	;volatile

;pwm.c: 27: T1EN = 1;
	bsf	76,7	;volatile

;pwm.c: 28: T1IE = 1;
	bsf	75,1	;volatile
	return
__end_ofi1_nPWM1:	
	opt stack 0

	psect	text34
	file	"main.c"
__ptext34:	
;; *************** function _System_GetState *****************
;; Defined at:
;;		line 141 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E3
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Process
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _System_GetState

_System_GetState:	
	opt stack 1

;main.c: 142: return sys_state;

;incstack = 0
; Regs used in _System_GetState: [wreg]
	movf	_sys_state,w
	return
__end_of_System_GetState:	
	opt stack 0
btemp	set	62	;btemp
wtemp0	set	62

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    6
;!    Data        3
;!    BSS         22
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46     14      39
;!    BANK1h           32      0       0
;!    BANK1l           46      0       0
;!
;!Pointer List with Targets:
;!
;!    None.
;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _Motor_ToggleSpeed->___awmod
;!    _Motor_Start->_hardware_set_motor
;!    _hardware_set_motor->_nPWM1
;!    _hardware_set_motor->_nPWM2
;!    _Motor_Init->_Motor_SetMode
;!    _hardware_stop_motor->_nPWM1
;!    _hardware_stop_motor->_nPWM2
;!    _DelayMs->_DelayUs2x
;!
;!Critical Paths under _Timer0_Isr in BANK0
;!
;!    _key_scan->i1_DelayUs2x
;!    i1_hardware_stop_motor->i1_nPWM1
;!    i1_hardware_stop_motor->i1_nPWM2
;!    i1_Motor_Start->i1_hardware_set_motor
;!    i1_hardware_set_motor->i1_nPWM1
;!    i1_hardware_set_motor->i1_nPWM2
;!
;!Critical Paths under _main in BANK1h
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK1h
;!
;!    None.
;!
;!Critical Paths under _main in BANK1l
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK1l
;!
;!    None.
;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    1194
;!                                             13 BANK0      1     1      0
;!                            _DelayMs
;!                      _Motor_GetMode
;!                         _Motor_Init
;!                      _Motor_SetMode
;!                        _Motor_Start
;!                         _Motor_Stop
;!              _Motor_ToggleDirection
;!                  _Motor_ToggleSpeed
;!                      _T0_sysinitial
;!                             _inital
;!                         _ramInitial
;! ---------------------------------------------------------------------------------
;! (1) _ramInitial                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _inital                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _T0_sysinitial                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Motor_ToggleSpeed                                    0     0      0     600
;!                            ___awmod
;!                 _hardware_set_motor
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     404
;!                                              7 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Motor_ToggleDirection                                0     0      0      44
;!                         _Motor_Stop
;! ---------------------------------------------------------------------------------
;! (2) _Motor_Stop                                           0     0      0      44
;!                _hardware_stop_motor
;! ---------------------------------------------------------------------------------
;! (1) _Motor_Start                                          0     0      0     196
;!                 _hardware_set_motor
;! ---------------------------------------------------------------------------------
;! (2) _hardware_set_motor                                   2     1      1     196
;!                                              8 BANK0      2     1      1
;!                              _nPWM1
;!                              _nPWM2
;! ---------------------------------------------------------------------------------
;! (1) _Motor_Init                                           0     0      0      88
;!                      _Motor_SetMode
;!                _hardware_stop_motor
;! ---------------------------------------------------------------------------------
;! (3) _hardware_stop_motor                                  0     0      0      44
;!                              _nPWM1
;!                              _nPWM2
;! ---------------------------------------------------------------------------------
;! (3) _nPWM2                                                1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _nPWM1                                                1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Motor_SetMode                                        1     1      0      44
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Motor_GetMode                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayMs                                              2     0      2     130
;!                                              8 BANK0      2     0      2
;!                          _DelayUs2x
;! ---------------------------------------------------------------------------------
;! (2) _DelayUs2x                                            1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer0_Isr                                           4     4      0     290
;!                                              3 BANK0      4     4      0
;!                      _Motor_Process
;!                _System_TimerHandler
;!                           _key_tick
;! ---------------------------------------------------------------------------------
;! (6) _key_tick                                             0     0      0      22
;!                           _key_scan
;! ---------------------------------------------------------------------------------
;! (7) _key_scan                                             0     0      0      22
;!             _keymode0_configuration
;!             _keymode1_configuration
;!             _keymode2_configuration
;!                        i1_DelayUs2x
;! ---------------------------------------------------------------------------------
;! (8) i1_DelayUs2x                                          1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (8) _keymode2_configuration                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _keymode1_configuration                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _keymode0_configuration                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _System_TimerHandler                                  0     0      0      44
;!                       i1_Motor_Stop
;! ---------------------------------------------------------------------------------
;! (6) _Motor_Process                                        0     0      0     224
;!                    _System_GetState
;!                      i1_Motor_Start
;!                       i1_Motor_Stop
;!            i1_Motor_ToggleDirection
;! ---------------------------------------------------------------------------------
;! (7) i1_Motor_ToggleDirection                              0     0      0      44
;!                       i1_Motor_Stop
;! ---------------------------------------------------------------------------------
;! (7) i1_Motor_Stop                                         0     0      0      44
;!              i1_hardware_stop_motor
;! ---------------------------------------------------------------------------------
;! (8) i1_hardware_stop_motor                                0     0      0      44
;!                            i1_nPWM1
;!                            i1_nPWM2
;! ---------------------------------------------------------------------------------
;! (7) i1_Motor_Start                                        0     0      0     136
;!               i1_hardware_set_motor
;! ---------------------------------------------------------------------------------
;! (8) i1_hardware_set_motor                                 2     1      1     136
;!                                              1 BANK0      2     1      1
;!                            i1_nPWM1
;!                            i1_nPWM2
;! ---------------------------------------------------------------------------------
;! (9) i1_nPWM2                                              1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (9) i1_nPWM1                                              1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _System_GetState                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayMs
;!     _DelayUs2x
;!   _Motor_GetMode
;!   _Motor_Init
;!     _Motor_SetMode
;!     _hardware_stop_motor
;!       _nPWM1
;!       _nPWM2
;!   _Motor_SetMode
;!   _Motor_Start
;!     _hardware_set_motor
;!       _nPWM1
;!       _nPWM2
;!   _Motor_Stop
;!     _hardware_stop_motor
;!       _nPWM1
;!       _nPWM2
;!   _Motor_ToggleDirection
;!     _Motor_Stop
;!       _hardware_stop_motor
;!         _nPWM1
;!         _nPWM2
;!   _Motor_ToggleSpeed
;!     ___awmod
;!     _hardware_set_motor
;!       _nPWM1
;!       _nPWM2
;!   _T0_sysinitial
;!   _inital
;!   _ramInitial
;!
;! _Timer0_Isr (ROOT)
;!   _Motor_Process
;!     _System_GetState
;!     i1_Motor_Start
;!       i1_hardware_set_motor
;!         i1_nPWM1
;!         i1_nPWM2
;!     i1_Motor_Stop
;!       i1_hardware_stop_motor
;!         i1_nPWM1
;!         i1_nPWM2
;!     i1_Motor_ToggleDirection
;!       i1_Motor_Stop
;!         i1_hardware_stop_motor
;!           i1_nPWM1
;!           i1_nPWM2
;!   _System_TimerHandler
;!     i1_Motor_Stop
;!       i1_hardware_stop_motor
;!         i1_nPWM1
;!         i1_nPWM2
;!   _key_tick
;!     _key_scan
;!       _keymode0_configuration
;!       _keymode1_configuration
;!       _keymode2_configuration
;!       i1_DelayUs2x
;!
;! Address spaces:
;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               2E      E      27       3       84.8%
;!ABS                  0      0      27       4        0.0%
;!BITBANK0            2E      0       0       5        0.0%
;!BITBANK1h           20      0       0       6        0.0%
;!BITBANK1l           2E      0       0       7        0.0%
;!BANK1h              20      0       0       8        0.0%
;!BANK1l              2E      0       0       9        0.0%
;!DATA                 0      0      27      10        0.0%
