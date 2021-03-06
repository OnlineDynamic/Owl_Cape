EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "The Owl - RPI Cape 16ch Pixel Controller"
Date ""
Rev ""
Comp "OnlineDynamic"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J22
U 1 1 600E5475
P 1900 2650
F 0 "J22" H 1980 2642 50  0000 L CNN
F 1 "9-16 In" H 1980 2551 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type701_RT11L02HGLU_1x02_P6.35mm_Horizontal" H 1900 2650 50  0001 C CNN
F 3 "~" H 1900 2650 50  0001 C CNN
	1    1900 2650
	1    0    0    1   
$EndComp
Text GLabel 850  1150 0    50   Input ~ 0
V1
Text GLabel 800  2550 0    50   Input ~ 0
V2
$Comp
L power:GND #PWR061
U 1 1 600E67A6
P 1850 1250
F 0 "#PWR061" H 1850 1000 50  0001 C CNN
F 1 "GND" H 1855 1077 50  0000 C CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 600E6E79
P 1700 2650
F 0 "#PWR060" H 1700 2400 50  0001 C CNN
F 1 "GND" H 1705 2477 50  0000 C CNN
F 2 "" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 601048B7
P 2500 1750
F 0 "#PWR062" H 2500 1500 50  0001 C CNN
F 1 "GND" H 2505 1577 50  0000 C CNN
F 2 "" H 2500 1750 50  0001 C CNN
F 3 "" H 2500 1750 50  0001 C CNN
	1    2500 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR063
U 1 1 60105B0F
P 2450 3150
F 0 "#PWR063" H 2450 2900 50  0001 C CNN
F 1 "GND" H 2455 2977 50  0000 C CNN
F 2 "" H 2450 3150 50  0001 C CNN
F 3 "" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Text GLabel 2500 1250 1    50   Input ~ 0
VIN1
Text GLabel 2450 2650 1    50   Input ~ 0
VIN2
$Comp
L Device:LED D17
U 1 1 60107B8A
P 2500 1400
F 0 "D17" V 2539 1282 50  0000 R CNN
F 1 "V1 LED" V 2448 1282 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2500 1400 50  0001 C CNN
F 3 "Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" H 2500 1400 50  0001 C CNN
F 4 "C72043" H 2500 1400 50  0001 C CNN "Description"
	1    2500 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D18
U 1 1 601088D7
P 2450 3000
F 0 "D18" V 2489 2882 50  0000 R CNN
F 1 "V2 LED" V 2398 2882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2450 3000 50  0001 C CNN
F 3 "Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" H 2450 3000 50  0001 C CNN
F 4 "C72043" H 2450 3000 50  0001 C CNN "Description"
	1    2450 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R29
U 1 1 6010D978
P 2500 1650
F 0 "R29" H 2559 1696 50  0000 L CNN
F 1 "4.7k" H 2559 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2500 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F2201T5E_C17520.pdf" H 2500 1650 50  0001 C CNN
F 4 "C17673" H 2500 1650 50  0001 C CNN "Description"
	1    2500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R30
U 1 1 6010E76E
P 2450 2750
F 0 "R30" H 2509 2796 50  0000 L CNN
F 1 "4.7k" H 2509 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2450 2750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F2201T5E_C17520.pdf" H 2450 2750 50  0001 C CNN
F 4 "C17673" H 2450 2750 50  0001 C CNN "Description"
	1    2450 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 601167CA
P 3000 2950
F 0 "#PWR067" H 3000 2700 50  0001 C CNN
F 1 "GND" H 3005 2777 50  0000 C CNN
F 2 "" H 3000 2950 50  0001 C CNN
F 3 "" H 3000 2950 50  0001 C CNN
	1    3000 2950
	1    0    0    -1  
$EndComp
Text GLabel 3050 1250 1    50   Input ~ 0
VIN1
Text GLabel 3000 2650 1    50   Input ~ 0
VIN2
$Comp
L Device:D_Schottky D20
U 1 1 60117367
P 3050 1400
F 0 "D20" V 3004 1480 50  0000 L CNN
F 1 "SB5100" V 3095 1480 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 3050 1400 50  0001 C CNN
F 3 "~" H 3050 1400 50  0001 C CNN
F 4 "" H 3050 1400 50  0001 C CNN "Description"
	1    3050 1400
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D21
U 1 1 6011835F
P 3000 2800
F 0 "D21" V 2954 2880 50  0000 L CNN
F 1 "SB5100" V 3045 2880 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 3000 2800 50  0001 C CNN
F 3 "~" H 3000 2800 50  0001 C CNN
F 4 "" H 3000 2800 50  0001 C CNN "Description"
	1    3000 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 601167C4
P 3050 1550
F 0 "#PWR066" H 3050 1300 50  0001 C CNN
F 1 "GND" H 3055 1377 50  0000 C CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 6012EDE9
P 5100 1300
F 0 "SW1" V 5146 1212 50  0000 R CNN
F 1 "Enter BTN" V 5055 1212 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    5100 1300
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 6012FA11
P 5700 1300
F 0 "SW2" V 5746 1212 50  0000 R CNN
F 1 "Down BTN" V 5655 1212 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5700 1300 50  0001 C CNN
F 3 "~" H 5700 1300 50  0001 C CNN
	1    5700 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR073
U 1 1 601319CB
P 5100 1500
F 0 "#PWR073" H 5100 1250 50  0001 C CNN
F 1 "GND" H 5105 1327 50  0000 C CNN
F 2 "" H 5100 1500 50  0001 C CNN
F 3 "" H 5100 1500 50  0001 C CNN
	1    5100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR074
U 1 1 60131AEE
P 5700 1500
F 0 "#PWR074" H 5700 1250 50  0001 C CNN
F 1 "GND" H 5705 1327 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
Text GLabel 5100 1100 1    50   Input ~ 0
BTN1
Text GLabel 5700 1100 1    50   Input ~ 0
BTN2
$Comp
L Device:D_Zener D23
U 1 1 60129B68
P 3450 4000
F 0 "D23" V 3404 4080 50  0000 L CNN
F 1 "Zenner 5.1" V 3495 4080 50  0000 L CNN
F 2 "Diode_THT:D_5W_P10.16mm_Horizontal" H 3450 4000 50  0001 C CNN
F 3 "~" H 3450 4000 50  0001 C CNN
F 4 "" H 3450 4000 50  0001 C CNN "Description"
	1    3450 4000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR070
U 1 1 6012938B
P 3450 3850
F 0 "#PWR070" H 3450 3700 50  0001 C CNN
F 1 "+5V" H 3465 4023 50  0000 C CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "" H 3450 3850 50  0001 C CNN
	1    3450 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 60129385
P 3450 4150
F 0 "#PWR071" H 3450 3900 50  0001 C CNN
F 1 "GND" H 3455 3977 50  0000 C CNN
F 2 "" H 3450 4150 50  0001 C CNN
F 3 "" H 3450 4150 50  0001 C CNN
	1    3450 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R31
U 1 1 6010E99B
P 2400 3950
F 0 "R31" H 2459 3996 50  0000 L CNN
F 1 "4.7k" H 2459 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2400 3950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F2201T5E_C17520.pdf" H 2400 3950 50  0001 C CNN
F 4 "C17673" H 2400 3950 50  0001 C CNN "Description"
	1    2400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D19
U 1 1 601089C5
P 2400 4200
F 0 "D19" V 2439 4082 50  0000 R CNN
F 1 "5V LED" V 2348 4082 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2400 4200 50  0001 C CNN
F 3 "Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" H 2400 4200 50  0001 C CNN
F 4 "C72043" H 2400 4200 50  0001 C CNN "Description"
	1    2400 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR064
U 1 1 60106F42
P 2400 3850
F 0 "#PWR064" H 2400 3700 50  0001 C CNN
F 1 "+5V" H 2415 4023 50  0000 C CNN
F 2 "" H 2400 3850 50  0001 C CNN
F 3 "" H 2400 3850 50  0001 C CNN
	1    2400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 60105CE7
P 2400 4350
F 0 "#PWR065" H 2400 4100 50  0001 C CNN
F 1 "GND" H 2405 4177 50  0000 C CNN
F 2 "" H 2400 4350 50  0001 C CNN
F 3 "" H 2400 4350 50  0001 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 600F5939
P 1550 3950
F 0 "#PWR059" H 1550 3700 50  0001 C CNN
F 1 "GND" H 1555 3777 50  0000 C CNN
F 2 "" H 1550 3950 50  0001 C CNN
F 3 "" H 1550 3950 50  0001 C CNN
	1    1550 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR058
U 1 1 600F4BDE
P 800 3850
F 0 "#PWR058" H 800 3700 50  0001 C CNN
F 1 "+5V" V 815 3978 50  0000 L CNN
F 2 "" H 800 3850 50  0001 C CNN
F 3 "" H 800 3850 50  0001 C CNN
	1    800  3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F17
U 1 1 601404BC
P 950 3850
F 0 "F17" V 753 3850 50  0000 C CNN
F 1 "2A Max" V 844 3850 50  0000 C CNN
F 2 "Fuse:Fuseholder_Blade_Mini_Keystone_3568" V 880 3850 50  0001 C CNN
F 3 "~" H 950 3850 50  0001 C CNN
	1    950  3850
	0    1    1    0   
$EndComp
Text GLabel 1550 3850 0    50   Input ~ 0
Aux_In
Text GLabel 1100 3850 2    50   Input ~ 0
V5
$Comp
L power:GND #PWR069
U 1 1 601327AA
P 2950 4150
F 0 "#PWR069" H 2950 3900 50  0001 C CNN
F 1 "GND" H 2955 3977 50  0000 C CNN
F 2 "" H 2950 4150 50  0001 C CNN
F 3 "" H 2950 4150 50  0001 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR068
U 1 1 6013325A
P 2950 3850
F 0 "#PWR068" H 2950 3700 50  0001 C CNN
F 1 "+5V" H 2965 4023 50  0000 C CNN
F 2 "" H 2950 3850 50  0001 C CNN
F 3 "" H 2950 3850 50  0001 C CNN
	1    2950 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J21
U 1 1 601E7A32
P 1750 3950
F 0 "J21" H 1830 3942 50  0000 L CNN
F 1 "Aux In" H 1830 3851 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type701_RT11L02HGLU_1x02_P6.35mm_Horizontal" H 1750 3950 50  0001 C CNN
F 3 "~" H 1750 3950 50  0001 C CNN
	1    1750 3950
	1    0    0    1   
$EndComp
Text GLabel 6150 3850 2    50   Input ~ 0
Buck
$Comp
L power:GND #PWR075
U 1 1 602DB4D0
P 6150 4050
F 0 "#PWR075" H 6150 3800 50  0001 C CNN
F 1 "GND" H 6155 3877 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D22
U 1 1 601327B1
P 2950 4000
F 0 "D22" V 2904 4080 50  0000 L CNN
F 1 "SB5100" V 2995 4080 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 2950 4000 50  0001 C CNN
F 3 "~" H 2950 4000 50  0001 C CNN
F 4 "" H 2950 4000 50  0001 C CNN "Description"
	1    2950 4000
	0    1    1    0   
$EndComp
Text GLabel 4850 3850 0    50   Input ~ 0
Aux_In
$Comp
L Mirage-rescue:MP1584-MP1584 U2
U 1 1 6057B19B
P 5450 3950
F 0 "U2" H 5450 3950 50  0001 L BNN
F 1 "MP1584" H 5450 3950 50  0001 L BNN
F 2 "DC-BRICK" H 5450 3950 50  0001 L BNN
F 3 "" H 5450 3950 50  0001 L BNN
	1    5450 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 6057C09A
P 4850 4050
F 0 "#PWR072" H 4850 3800 50  0001 C CNN
F 1 "GND" H 4855 3877 50  0000 C CNN
F 2 "" H 4850 4050 50  0001 C CNN
F 3 "" H 4850 4050 50  0001 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
Text GLabel 3550 1250 1    50   Input ~ 0
VIN1
$Comp
L Device:Fuse F18
U 1 1 606A2ECB
P 3550 1400
F 0 "F18" V 3353 1400 50  0000 C CNN
F 1 "30A Max" V 3444 1400 50  0000 C CNN
F 2 "Fuse:Fuseholder_Blade_Mini_Keystone_3568" V 3480 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	-1   0    0    1   
$EndComp
Text GLabel 3550 1550 3    50   Input ~ 0
V1
Text GLabel 3500 2650 1    50   Input ~ 0
VIN2
$Comp
L Device:Fuse F19
U 1 1 606A5080
P 3500 2800
F 0 "F19" V 3303 2800 50  0000 C CNN
F 1 "30A Max" V 3394 2800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Blade_Mini_Keystone_3568" V 3430 2800 50  0001 C CNN
F 3 "~" H 3500 2800 50  0001 C CNN
	1    3500 2800
	-1   0    0    1   
$EndComp
Text GLabel 3500 2950 3    50   Input ~ 0
V2
$Comp
L Connector:Screw_Terminal_01x02 J23
U 1 1 600E4B71
P 2050 1250
F 0 "J23" H 2130 1242 50  0000 L CNN
F 1 "1-8 In" H 2130 1151 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type701_RT11L02HGLU_1x02_P6.35mm_Horizontal" H 2050 1250 50  0001 C CNN
F 3 "~" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    1   
$EndComp
Text Notes 750  850  0    50   ~ 10
Ports 1-8 Power
Text Notes 750  2250 0    50   ~ 10
Ports 9-16 Power
Wire Wire Line
	850  1150 1850 1150
Wire Wire Line
	800  2550 1700 2550
Text Notes 4850 3650 0    50   ~ 10
Buck DC-DC Step-down 12v to 5v - purchased as a seperate PCB addon
$EndSCHEMATC
