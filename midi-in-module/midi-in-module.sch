EESchema Schematic File Version 4
LIBS:midi-in-module-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L device:R R1
U 1 1 5B91F845
P 3700 2400
F 0 "R1" V 3780 2400 50  0000 C CNN
F 1 "220" V 3700 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3630 2400 50  0001 C CNN
F 3 "" H 3700 2400 50  0001 C CNN
	1    3700 2400
	0    1    1    0   
$EndComp
$Comp
L device:D_x2_Serial_AKC D1
U 1 1 5B91F84C
P 4500 2950
F 0 "D1" H 4550 2850 50  0000 C CNN
F 1 "BAV99" H 4500 3050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0001 C CNN
	1    4500 2950
	0    -1   -1   0   
$EndComp
$Comp
L power1:GND #PWR06
U 1 1 5B91F853
P 5350 3450
F 0 "#PWR06" H 5350 3200 50  0001 C CNN
F 1 "GND" H 5350 3300 50  0000 C CNN
F 2 "" H 5350 3450 50  0001 C CNN
F 3 "" H 5350 3450 50  0001 C CNN
	1    5350 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 3000 2400
Wire Wire Line
	3000 2400 3550 2400
Wire Wire Line
	4750 2400 4750 2600
Wire Wire Line
	4750 2600 4750 2950
Wire Wire Line
	4700 2950 4750 2950
Wire Wire Line
	4750 2950 5050 2950
Connection ~ 4750 2950
Wire Wire Line
	4500 2650 4500 2600
Wire Wire Line
	4500 2600 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	5050 3150 4750 3150
Wire Wire Line
	4750 3150 4750 3600
Wire Wire Line
	4750 3600 4500 3600
Wire Wire Line
	4500 3250 4500 3600
Connection ~ 4500 3600
Wire Wire Line
	4500 3600 4150 3600
Wire Wire Line
	3100 3600 3000 3600
$Comp
L midi-in-module-rescue:DIN-5-GND-din-5-gnd J1
U 1 1 5B92B32E
P 3500 3400
F 0 "J1" H 3500 2875 50  0000 C CNN
F 1 "DIN-5-GND" H 3500 2966 50  0000 C CNN
F 2 "Connectors:DIN_CUI_SD-50BV" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5B936389
P 5350 2200
F 0 "#PWR05" H 5350 2050 50  0001 C CNN
F 1 "VCC" H 5367 2373 50  0000 C CNN
F 2 "" H 5350 2200 50  0001 C CNN
F 3 "" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5B936470
P 6550 2300
F 0 "#PWR010" H 6550 2150 50  0001 C CNN
F 1 "VCC" H 6567 2473 50  0000 C CNN
F 2 "" H 6550 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J3
U 1 1 5B93785D
P 7750 4150
F 0 "J3" V 7585 4076 50  0000 C CNN
F 1 "Conn_01x10_Male" V 7676 4076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7750 4150 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5B93791A
P 7650 5250
F 0 "J2" V 7578 5177 50  0000 C CNN
F 1 "Conn_01x10_Male" V 7487 5177 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7650 5250 50  0001 C CNN
F 3 "~" H 7650 5250 50  0001 C CNN
	1    7650 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5B9379D5
P 7000 4250
F 0 "#PWR011" H 7000 4100 50  0001 C CNN
F 1 "VCC" H 7017 4423 50  0000 C CNN
F 2 "" H 7000 4250 50  0001 C CNN
F 3 "" H 7000 4250 50  0001 C CNN
	1    7000 4250
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR012
U 1 1 5B9379FE
P 8350 5100
F 0 "#PWR012" H 8350 4850 50  0001 C CNN
F 1 "GND" H 8350 4950 50  0000 C CNN
F 2 "" H 8350 5100 50  0001 C CNN
F 3 "" H 8350 5100 50  0001 C CNN
	1    8350 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 5050 8150 4950
Wire Wire Line
	8150 4950 8350 4950
Wire Wire Line
	8350 4950 8350 5100
Wire Wire Line
	7000 4250 7000 4450
Wire Wire Line
	7000 4450 7250 4450
Wire Wire Line
	7250 4450 7250 4350
Wire Wire Line
	8700 3050 8700 4450
Wire Wire Line
	8700 4450 8150 4450
Wire Wire Line
	8150 4450 8150 4350
Wire Wire Line
	8150 4950 8150 4750
Wire Wire Line
	8150 4750 8050 4750
Wire Wire Line
	7250 4750 7250 5050
Connection ~ 8150 4950
Wire Wire Line
	7350 5050 7350 4750
Connection ~ 7350 4750
Wire Wire Line
	7350 4750 7250 4750
Wire Wire Line
	7350 4750 7350 4350
Wire Wire Line
	7450 4350 7450 4750
Connection ~ 7450 4750
Wire Wire Line
	7450 4750 7350 4750
Wire Wire Line
	7450 4750 7450 5050
Wire Wire Line
	7550 5050 7550 4750
Connection ~ 7550 4750
Wire Wire Line
	7550 4750 7450 4750
Wire Wire Line
	7550 4750 7550 4350
Wire Wire Line
	7650 4350 7650 4750
Connection ~ 7650 4750
Wire Wire Line
	7650 4750 7550 4750
Wire Wire Line
	7650 4750 7650 5050
Wire Wire Line
	7750 5050 7750 4750
Connection ~ 7750 4750
Wire Wire Line
	7750 4750 7650 4750
Wire Wire Line
	7750 4750 7750 4350
Wire Wire Line
	7850 4350 7850 4750
Connection ~ 7850 4750
Wire Wire Line
	7850 4750 7750 4750
Wire Wire Line
	7850 4750 7850 5050
Wire Wire Line
	7950 5050 7950 4750
Connection ~ 7950 4750
Wire Wire Line
	7950 4750 7850 4750
Wire Wire Line
	7950 4750 7950 4350
Wire Wire Line
	8050 4350 8050 4750
Connection ~ 8050 4750
Wire Wire Line
	8050 4750 7950 4750
Wire Wire Line
	8050 4750 8050 5050
$Comp
L Isolator:H11L1 U2
U 1 1 5B94FDF7
P 5350 3050
F 0 "U2" H 5691 3096 50  0000 L CNN
F 1 "H11L1" H 5691 3005 50  0000 L CNN
F 2 "Package_DIP:DIP-6_W8.89mm_SMDSocket_LongPads" H 5260 3050 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/H1/H11L1M.pdf" H 5260 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L device:C C1
U 1 1 5B95150A
P 5700 2500
F 0 "C1" H 5815 2546 50  0000 L CNN
F 1 "100n" H 5815 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5738 2350 50  0001 C CNN
F 3 "" H 5700 2500 50  0001 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR07
U 1 1 5B9516AC
P 5700 2700
F 0 "#PWR07" H 5700 2450 50  0001 C CNN
F 1 "GND" H 5700 2550 50  0000 C CNN
F 2 "" H 5700 2700 50  0001 C CNN
F 3 "" H 5700 2700 50  0001 C CNN
	1    5700 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 2200 5350 2300
Wire Wire Line
	5350 2300 5700 2300
Wire Wire Line
	5700 2300 5700 2350
Wire Wire Line
	5700 2650 5700 2700
Wire Wire Line
	5350 2750 5350 2300
Connection ~ 5350 2300
Wire Wire Line
	5350 3350 5350 3450
$Comp
L device:R R3
U 1 1 5B959BCA
P 6550 2500
F 0 "R3" V 6630 2500 50  0000 C CNN
F 1 "220" V 6550 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6480 2500 50  0001 C CNN
F 3 "" H 6550 2500 50  0001 C CNN
	1    6550 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 3050 6550 3050
$Comp
L device:R R4
U 1 1 5B959D19
P 6550 2850
F 0 "R4" V 6630 2850 50  0000 C CNN
F 1 "220" V 6550 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6480 2850 50  0001 C CNN
F 3 "" H 6550 2850 50  0001 C CNN
	1    6550 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 2650 6550 2700
Wire Wire Line
	6550 3000 6550 3050
Connection ~ 6550 3050
$Comp
L device:R R2
U 1 1 5B95E12F
P 4150 2950
F 0 "R2" V 4230 2950 50  0000 C CNN
F 1 "2.2k" V 4150 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 2800 4150 2400
Wire Wire Line
	3850 2400 4150 2400
Connection ~ 4150 2400
Wire Wire Line
	4150 2400 4750 2400
Wire Wire Line
	4150 3100 4150 3600
Connection ~ 4150 3600
Wire Wire Line
	4150 3600 3900 3600
Wire Wire Line
	6550 2300 6550 2350
Wire Wire Line
	6550 3050 8700 3050
$EndSCHEMATC
