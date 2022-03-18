EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 62351E23
P 1350 6550
F 0 "H1" H 1200 6650 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1350 6400 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1250 6550 60  0001 C CNN
F 3 "" H 1250 6550 60  0001 C CNN
	1    1350 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 62351E24
P 2350 6550
F 0 "H3" H 2200 6650 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2350 6400 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2250 6550 60  0001 C CNN
F 3 "" H 2250 6550 60  0001 C CNN
	1    2350 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5834BD62
P 1350 7100
F 0 "H2" H 1200 7200 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1350 6950 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1250 7100 60  0001 C CNN
F 3 "" H 1250 7100 60  0001 C CNN
	1    1350 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 62351E26
P 2400 7100
F 0 "H4" H 2250 7200 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2400 6950 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2300 7100 60  0001 C CNN
F 3 "" H 2300 7100 60  0001 C CNN
	1    2400 7100
	1    0    0    -1  
$EndComp
Text Label 7350 1900 2    60   ~ 0
P5V_HAT
Text Label 5500 1900 0    60   ~ 0
P5V
Wire Wire Line
	5500 1900 5950 1900
Text Notes 5350 1250 0    118  ~ 24
5V Powered HAT Protection
Text Notes 5100 1550 0    60   ~ 0
This is the recommended 5V rail protection for \na HAT with power going to the Pi.\nSee https://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
$Comp
L Device:R R27
U 1 1 58E15896
P 5950 3100
F 0 "R27" V 6030 3100 50  0000 C CNN
F 1 "10K" V 5950 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 5880 3100 50  0001 C CNN
F 3 "" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 58E158A1
P 6750 3100
F 0 "R28" V 6830 3100 50  0000 C CNN
F 1 "47K" V 6750 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 6680 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 58E15A41
P 5950 3300
F 0 "#PWR056" H 5950 3050 50  0001 C CNN
F 1 "GND" H 5950 3150 50  0000 C CNN
F 2 "" H 5950 3300 50  0000 C CNN
F 3 "" H 5950 3300 50  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 58E15A9E
P 6750 3300
F 0 "#PWR057" H 6750 3050 50  0001 C CNN
F 1 "GND" H 6750 3150 50  0000 C CNN
F 2 "" H 6750 3300 50  0000 C CNN
F 3 "" H 6750 3300 50  0000 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3300 5950 3250
Wire Wire Line
	6750 3300 6750 3250
Wire Wire Line
	6750 2700 6750 2800
Wire Wire Line
	6350 2800 6750 2800
Connection ~ 6750 2800
Wire Wire Line
	5950 2700 5950 2850
Wire Wire Line
	6250 2500 6250 2850
Wire Wire Line
	5950 2850 6250 2850
Connection ~ 5950 2850
Wire Wire Line
	6450 2850 6450 2500
Connection ~ 6250 2850
Wire Wire Line
	5950 2300 5950 1900
Connection ~ 5950 1900
Wire Wire Line
	6750 2300 6750 1900
Connection ~ 6750 1900
Text Notes 3250 2200 0    60   ~ 0
EEPROM WRITE ENABLE
Text Notes 1550 1500 0    118  ~ 24
HAT EEPROM
Text Notes 1000 6250 0    118  ~ 24
Mounting Holes
Text Notes 750  2000 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
Text Notes 3850 900  0    100  ~ 0
This is based on the official Raspberry Pi spec to be able to call an extension board a HAT.\nhttps://github.com/raspberrypi/hats/blob/master/designguide.md
Wire Wire Line
	6750 2800 6750 2950
Wire Wire Line
	5950 2850 5950 2950
Wire Wire Line
	6250 2850 6450 2850
Wire Wire Line
	6750 1900 7350 1900
Text Notes 7300 4450 0    60   ~ 0
HAT spec indicates to NEVER\npower the 3.3V pins on the Raspberry Pi \nfrom the HAT header. Only connect the 3.3V\npower from the Pi if the HAT does not have\n3.3V on board.\n\nIF you are designing a board that could\neither be powered by the Pi or from the HAT\nthe jumpers here can be used.\n\nIn most cases, either design the HAT \nto provide the 5V to the Pi and use the\nprotection circuit above OR power the\nHAT from the Pi and directly connect\nthe P3V3 and P5V to the P3V3_HAT and P5V_HAT\npins.
$Comp
L Transistor_FET:DMG2302U Q2
U 1 1 62390BBB
P 6350 2000
F 0 "Q2" V 6692 2000 50  0000 C CNN
F 1 "DMG2302U" V 6601 2000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6550 1925 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG2302U.pdf" H 6350 2000 50  0001 L CNN
	1    6350 2000
	0    1    -1   0   
$EndComp
Wire Wire Line
	6550 1900 6750 1900
Wire Wire Line
	5950 1900 6150 1900
Wire Wire Line
	6350 2200 6350 2800
$Comp
L Transistor_BJT:MMDT5401 Q1
U 1 1 623A65E4
P 6650 2500
F 0 "Q1" H 6841 2546 50  0000 L CNN
F 1 "MMDT5401" H 6841 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6850 2600 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30169.pdf" H 6650 2500 50  0001 C CNN
	1    6650 2500
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:MMDT5401 Q1
U 2 1 623AD79D
P 6050 2500
F 0 "Q1" H 6241 2454 50  0000 L CNN
F 1 "MMDT5401" H 6241 2545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6250 2600 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30169.pdf" H 6050 2500 50  0001 C CNN
	2    6050 2500
	-1   0    0    1   
$EndComp
Text Notes 6800 2050 0    50   ~ 10
Need tofix DMG2302U - not orientated correct
$Comp
L power:GND #PWR?
U 1 1 6237F6CB
P 1850 3300
AR Path="/6235D74F/6237F6CB" Ref="#PWR?"  Part="1" 
AR Path="/6235185D/6237F6CB" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 1850 3050 50  0001 C CNN
F 1 "GND" H 1855 3127 50  0000 C CNN
F 2 "" H 1850 3300 50  0001 C CNN
F 3 "" H 1850 3300 50  0001 C CNN
	1    1850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6237F6D1
P 1450 3100
AR Path="/6235D74F/6237F6D1" Ref="#PWR?"  Part="1" 
AR Path="/6235185D/6237F6D1" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 1450 2850 50  0001 C CNN
F 1 "GND" H 1455 2927 50  0000 C CNN
F 2 "" H 1450 3100 50  0001 C CNN
F 3 "" H 1450 3100 50  0001 C CNN
	1    1450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6237F6D7
P 2250 3100
AR Path="/6235D74F/6237F6D7" Ref="#PWR?"  Part="1" 
AR Path="/6235185D/6237F6D7" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 2250 2850 50  0001 C CNN
F 1 "GND" H 2255 2927 50  0000 C CNN
F 2 "" H 2250 3100 50  0001 C CNN
F 3 "" H 2250 3100 50  0001 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
Text GLabel 2550 3000 2    50   Input ~ 0
I2C_SCL
Text GLabel 2550 2900 2    50   Input ~ 0
I2C_SDA
$Comp
L power:+3.3V #PWR?
U 1 1 6237F6DF
P 2400 2450
AR Path="/6235D74F/6237F6DF" Ref="#PWR?"  Part="1" 
AR Path="/6235185D/6237F6DF" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 2400 2300 50  0001 C CNN
F 1 "+3.3V" H 2415 2623 50  0000 C CNN
F 2 "" H 2400 2450 50  0001 C CNN
F 3 "" H 2400 2450 50  0001 C CNN
	1    2400 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6237F6E5
P 1850 2700
AR Path="/6235D74F/6237F6E5" Ref="#PWR?"  Part="1" 
AR Path="/6235185D/6237F6E5" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 1850 2550 50  0001 C CNN
F 1 "+3.3V" H 1865 2873 50  0000 C CNN
F 2 "" H 1850 2700 50  0001 C CNN
F 3 "" H 1850 2700 50  0001 C CNN
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6237F6EC
P 1550 2700
AR Path="/6235D74F/6237F6EC" Ref="C?"  Part="1" 
AR Path="/6235185D/6237F6EC" Ref="C2"  Part="1" 
F 0 "C2" V 1321 2700 50  0000 C CNN
F 1 "0.1uF" V 1412 2700 50  0000 C CNN
F 2 "3544again:C_0805_2012Metric" H 1550 2700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1550 2700 50  0001 C CNN
F 4 "C49678" H 1550 2700 50  0001 C CNN "Description"
	1    1550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6237F6F3
P 2450 2600
AR Path="/6235D74F/6237F6F3" Ref="R?"  Part="1" 
AR Path="/6235185D/6237F6F3" Ref="R26"  Part="1" 
F 0 "R26" H 2509 2646 50  0000 L CNN
F 1 "4.7k" H 2509 2555 50  0000 L CNN
F 2 "3544again:R_0805_2012Metric" H 2450 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F2201T5E_C17520.pdf" H 2450 2600 50  0001 C CNN
F 4 "C17673" H 2450 2600 50  0001 C CNN "Description"
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6237F6FA
P 2350 2600
AR Path="/6235D74F/6237F6FA" Ref="R?"  Part="1" 
AR Path="/6235185D/6237F6FA" Ref="R25"  Part="1" 
F 0 "R25" V 2409 2646 50  0001 L CNN
F 1 "4.7k" H 2409 2555 50  0001 L CNN
F 2 "3544again:R_0805_2012Metric" H 2350 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F2201T5E_C17520.pdf" H 2350 2600 50  0001 C CNN
F 4 "C17673" H 2350 2600 50  0001 C CNN "Description"
	1    2350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3000 2450 3000
Wire Wire Line
	2450 2700 2450 3000
Connection ~ 2450 3000
Wire Wire Line
	2450 3000 2550 3000
Wire Wire Line
	2450 2500 2400 2500
Wire Wire Line
	2400 2500 2400 2450
Wire Wire Line
	2350 2500 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	2250 2900 2350 2900
Wire Wire Line
	2350 2700 2350 2900
Connection ~ 2350 2900
Wire Wire Line
	2350 2900 2550 2900
$Comp
L Memory_EEPROM:CAT24C256 U?
U 1 1 6237F70D
P 1850 3000
AR Path="/6235D74F/6237F70D" Ref="U?"  Part="1" 
AR Path="/6235185D/6237F70D" Ref="U1"  Part="1" 
F 0 "U1" H 1800 3800 50  0000 C CNN
F 1 "AT24C256C" H 1800 3700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1850 3000 50  0001 C CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/CAT24C256-D.PDF" H 1850 3000 50  0001 C CNN
F 4 "C6482" H 1850 3000 50  0001 C CNN "Description"
	1    1850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2700 1450 2900
Wire Wire Line
	1650 2700 1850 2700
Wire Wire Line
	1450 3000 1450 3100
Connection ~ 1450 3100
Connection ~ 1850 2700
Wire Wire Line
	1450 2900 1450 3000
Connection ~ 1450 2900
Connection ~ 1450 3000
Text Notes 2100 2200 0    50   ~ 10
EEPROM
$Comp
L Mechanical:MountingHole H?
U 1 1 623545E3
P 3950 6500
F 0 "H?" H 4050 6546 50  0000 L CNN
F 1 "MountingHole" H 4050 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 3950 6500 50  0001 C CNN
F 3 "~" H 3950 6500 50  0001 C CNN
	1    3950 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 623545E9
P 3950 6700
F 0 "H?" H 4050 6746 50  0000 L CNN
F 1 "MountingHole" H 4050 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 3950 6700 50  0001 C CNN
F 3 "~" H 3950 6700 50  0001 C CNN
	1    3950 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 623545EF
P 3950 6900
F 0 "H?" H 4050 6946 50  0000 L CNN
F 1 "MountingHole" H 4050 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 3950 6900 50  0001 C CNN
F 3 "~" H 3950 6900 50  0001 C CNN
	1    3950 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 623545F5
P 3950 7100
F 0 "H?" H 4050 7146 50  0000 L CNN
F 1 "MountingHole" H 4050 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 3950 7100 50  0001 C CNN
F 3 "~" H 3950 7100 50  0001 C CNN
	1    3950 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 623545FB
P 4750 6500
F 0 "H?" H 4850 6546 50  0000 L CNN
F 1 "MountingHole" H 4850 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 4750 6500 50  0001 C CNN
F 3 "~" H 4750 6500 50  0001 C CNN
	1    4750 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 62354601
P 4750 6700
F 0 "H?" H 4850 6746 50  0000 L CNN
F 1 "MountingHole" H 4850 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 4750 6700 50  0001 C CNN
F 3 "~" H 4750 6700 50  0001 C CNN
	1    4750 6700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
