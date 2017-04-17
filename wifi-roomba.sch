EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:nodemcu
LIBS:wifi-roomba-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Roomba WiFi"
Date ""
Rev "0.0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NodeMCU_1.0 U1
U 1 1 56B27A95
P 6300 3900
F 0 "U1" H 6300 4700 50  0000 C CNN
F 1 "NodeMCU_1.0" H 6300 3050 50  0000 C CNN
F 2 "nodemcu:NodeMCU_1.0" H 6550 3900 50  0001 C CNN
F 3 "" H 6550 3900 50  0000 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
$Comp
L 7805 U2
U 1 1 56B27B07
P 4000 4250
F 0 "U2" H 4150 4054 60  0000 C CNN
F 1 "SMPS-3V3" H 4000 4450 60  0000 C CNN
F 2 "smps-3v3:PINHEAD1-3" H 4000 4250 60  0001 C CNN
F 3 "" H 4000 4250 60  0000 C CNN
	1    4000 4250
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D1
U 1 1 56B27C2F
P 7850 4350
F 0 "D1" H 7850 4450 40  0000 C CNN
F 1 "3V6" H 7850 4250 30  0000 C CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 7850 4350 60  0001 C CNN
F 3 "" H 7850 4350 60  0000 C CNN
	1    7850 4350
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D2
U 1 1 56B27CEC
P 8150 4350
F 0 "D2" H 8150 4450 40  0000 C CNN
F 1 "3V6" H 8150 4250 30  0000 C CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 8150 4350 60  0001 C CNN
F 3 "" H 8150 4350 60  0000 C CNN
	1    8150 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 56B27D83
P 7850 4550
F 0 "#PWR01" H 7850 4300 50  0001 C CNN
F 1 "GND" H 7850 4400 50  0000 C CNN
F 2 "" H 7850 4550 60  0000 C CNN
F 3 "" H 7850 4550 60  0000 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56B27D9F
P 8150 4550
F 0 "#PWR02" H 8150 4300 50  0001 C CNN
F 1 "GND" H 8150 4400 50  0000 C CNN
F 2 "" H 8150 4550 60  0000 C CNN
F 3 "" H 8150 4550 60  0000 C CNN
	1    8150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4450 7850 4550
Wire Wire Line
	8150 4450 8150 4550
Wire Wire Line
	7850 4250 7850 3850
$Comp
L R R1
U 1 1 56B27DE9
P 7850 3700
F 0 "R1" V 7930 3700 50  0000 C CNN
F 1 "220" V 7850 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7780 3700 30  0001 C CNN
F 3 "" H 7850 3700 30  0000 C CNN
	1    7850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3300 7850 3550
Text Label 7850 4200 1    60   ~ 0
TX3V3
Text Label 7850 3500 1    60   ~ 0
RX5V
Wire Wire Line
	6750 4200 7200 4200
Text Label 6850 4200 0    60   ~ 0
TX3V3
Wire Wire Line
	6750 4100 7200 4100
Text Label 6850 4100 0    60   ~ 0
RX3V3
Wire Wire Line
	8150 4250 8150 3850
Wire Wire Line
	8150 3550 8150 3300
$Comp
L R R2
U 1 1 56B2806F
P 8150 3700
F 0 "R2" V 8230 3700 50  0000 C CNN
F 1 "220" V 8150 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8080 3700 30  0001 C CNN
F 3 "" H 8150 3700 30  0000 C CNN
	1    8150 3700
	1    0    0    -1  
$EndComp
Text Label 8150 3500 1    60   ~ 0
TX5V
Text Label 8150 4200 1    60   ~ 0
RX3V3
Wire Wire Line
	5850 4100 5700 4100
$Comp
L GND #PWR03
U 1 1 56B282E9
P 5700 4100
F 0 "#PWR03" H 5700 3850 50  0001 C CNN
F 1 "GND" H 5700 3950 50  0000 C CNN
F 2 "" H 5700 4100 60  0000 C CNN
F 3 "" H 5700 4100 60  0000 C CNN
	1    5700 4100
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 56B283E5
P 4500 4200
F 0 "#PWR04" H 4500 4050 50  0001 C CNN
F 1 "+3.3V" H 4500 4340 50  0000 C CNN
F 2 "" H 4500 4200 60  0000 C CNN
F 3 "" H 4500 4200 60  0000 C CNN
	1    4500 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4200 4500 4200
Wire Wire Line
	4000 4500 4000 4600
$Comp
L GND #PWR05
U 1 1 56B28453
P 4000 4600
F 0 "#PWR05" H 4000 4350 50  0001 C CNN
F 1 "GND" H 4000 4450 50  0000 C CNN
F 2 "" H 4000 4600 60  0000 C CNN
F 3 "" H 4000 4600 60  0000 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4200 3300 4200
Text Label 2800 4200 0    60   ~ 0
+20V
Wire Wire Line
	5850 4200 5600 4200
$Comp
L +3.3V #PWR06
U 1 1 56B287EF
P 5600 4200
F 0 "#PWR06" H 5600 4050 50  0001 C CNN
F 1 "+3.3V" H 5600 4340 50  0000 C CNN
F 2 "" H 5600 4200 60  0000 C CNN
F 3 "" H 5600 4200 60  0000 C CNN
	1    5600 4200
	0    -1   -1   0   
$EndComp
$Comp
L DB9 J1
U 1 1 56B28D66
P 5250 3050
F 0 "J1" H 5250 3600 70  0000 C CNN
F 1 "DB9" H 5250 2500 70  0000 C CNN
F 2 "Connect:DB9FC" H 5250 3050 60  0001 C CNN
F 3 "" H 5250 3050 60  0000 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3250 4200 3250
Text Label 4250 3250 0    60   ~ 0
+20V
Wire Wire Line
	4800 3050 4200 3050
Text Label 4250 3050 0    60   ~ 0
RX5V
Wire Wire Line
	4800 2850 4200 2850
Text Label 4250 2850 0    60   ~ 0
TX5V
Wire Wire Line
	4800 2650 4200 2650
Text Label 4250 2650 0    60   ~ 0
DD5V
Wire Wire Line
	4800 3350 4700 3350
Wire Wire Line
	4800 3150 4700 3150
Wire Wire Line
	4800 2750 4700 2750
$Comp
L GND #PWR07
U 1 1 56B29106
P 4700 3350
F 0 "#PWR07" H 4700 3100 50  0001 C CNN
F 1 "GND" H 4700 3200 50  0000 C CNN
F 2 "" H 4700 3350 60  0000 C CNN
F 3 "" H 4700 3350 60  0000 C CNN
	1    4700 3350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56B29128
P 4700 3150
F 0 "#PWR08" H 4700 2900 50  0001 C CNN
F 1 "GND" H 4700 3000 50  0000 C CNN
F 2 "" H 4700 3150 60  0000 C CNN
F 3 "" H 4700 3150 60  0000 C CNN
	1    4700 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56B29174
P 4700 2750
F 0 "#PWR09" H 4700 2500 50  0001 C CNN
F 1 "GND" H 4700 2600 50  0000 C CNN
F 2 "" H 4700 2750 60  0000 C CNN
F 3 "" H 4700 2750 60  0000 C CNN
	1    4700 2750
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D3
U 1 1 56B29453
P 8450 4350
F 0 "D3" H 8450 4450 40  0000 C CNN
F 1 "3V6" H 8450 4250 30  0000 C CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 8450 4350 60  0001 C CNN
F 3 "" H 8450 4350 60  0000 C CNN
	1    8450 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 56B29459
P 8450 4550
F 0 "#PWR010" H 8450 4300 50  0001 C CNN
F 1 "GND" H 8450 4400 50  0000 C CNN
F 2 "" H 8450 4550 60  0000 C CNN
F 3 "" H 8450 4550 60  0000 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4450 8450 4550
Wire Wire Line
	8450 4250 8450 3850
Wire Wire Line
	8450 3550 8450 3300
$Comp
L R R3
U 1 1 56B29462
P 8450 3700
F 0 "R3" V 8530 3700 50  0000 C CNN
F 1 "220" V 8450 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8380 3700 30  0001 C CNN
F 3 "" H 8450 3700 30  0000 C CNN
	1    8450 3700
	1    0    0    -1  
$EndComp
Text Label 8450 3500 1    60   ~ 0
DD5V
Text Label 8450 4200 1    60   ~ 0
DD3V3
Wire Wire Line
	6750 4000 7200 4000
Text Label 6850 4000 0    60   ~ 0
DD3V3
$Comp
L F_Small F1
U 1 1 56B29999
P 3200 4200
F 0 "F1" H 3160 4260 50  0000 L CNN
F 1 "F_Small" H 3080 4140 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 3200 4200 60  0001 C CNN
F 3 "" H 3200 4200 60  0000 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4200 2750 4200
Text Label 3300 4200 0    60   ~ 0
+20VF
$Comp
L TEST_1P H1
U 1 1 56D41A61
P 6200 2550
F 0 "H1" H 6200 2820 50  0000 C CNN
F 1 "3.5mm" H 6200 2750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm_Pad" H 6400 2550 50  0001 C CNN
F 3 "" H 6400 2550 50  0000 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P H2
U 1 1 56D41BBC
P 6550 2550
F 0 "H2" H 6550 2820 50  0000 C CNN
F 1 "3.5mm" H 6550 2750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm_Pad" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0000 C CNN
	1    6550 2550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P H3
U 1 1 56D41C06
P 6900 2550
F 0 "H3" H 6900 2820 50  0000 C CNN
F 1 "3.5mm" H 6900 2750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm_Pad" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0000 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P H4
U 1 1 56D41C5C
P 7250 2550
F 0 "H4" H 7250 2820 50  0000 C CNN
F 1 "3.5mm" H 7250 2750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm_Pad" H 7450 2550 50  0001 C CNN
F 3 "" H 7450 2550 50  0000 C CNN
	1    7250 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC