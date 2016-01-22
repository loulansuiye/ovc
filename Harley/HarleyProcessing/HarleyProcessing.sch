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
LIBS:DCDC_Converters
LIBS:artix7
LIBS:OSCILLATOR
LIBS:mt41k128m16
LIBS:HarleyProcessing-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5600 8100 500  150 
U 56A0292D
F0 "Sheet56A0292C" 60
F1 "Artix7Bank0.sch" 60
$EndSheet
$Sheet
S 5600 8450 500  150 
U 56A02998
F0 "Sheet56A02997" 60
F1 "Artix7Bank14.sch" 60
$EndSheet
$Sheet
S 5600 8800 500  150 
U 56A029A1
F0 "Sheet56A029A0" 60
F1 "Artix7Bank15.sch" 60
$EndSheet
$Sheet
S 5600 9500 500  150 
U 56A029D2
F0 "Sheet56A029D1" 60
F1 "Artix7Bank34.sch" 60
$EndSheet
$Sheet
S 5600 10200 500  150 
U 56A03498
F0 "Sheet56A03497" 60
F1 "Artix7Power.sch" 60
$EndSheet
Text Notes 1400 7750 0    200  ~ 40
Power Supplies
$Comp
L LTM4622 U4
U 1 1 56A0397C
P 4050 9150
F 0 "U4" H 4050 10329 50  0000 C CNN
F 1 "LTM4622" H 4050 10237 50  0000 C CNN
F 2 "Housings_LGA:LGA25_6.25X6.25X1.82" H 4050 9150 50  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/4622fa.pdf" H 4050 9150 50  0001 C CNN
F 4 "Linear" H 4050 9150 50  0001 C CNN "MFN"
F 5 "LTM4622EV#PBF" H 4050 9150 50  0001 C CNN "MFP"
F 6 "digikey" H 4050 9150 50  0001 C CNN "D1"
F 7 "mouser" H 4050 9150 50  0001 C CNN "D2"
F 8 "LTM4622EV#PBF" H 4050 9150 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/LTM4622EV%23PBF/LTM4622EV%23PBF-ND/5361650" H 4050 9150 50  0001 C CNN "D1PL"
F 10 "_" H 4050 9150 50  0001 C CNN "D2PN"
F 11 "_" H 4050 9150 50  0001 C CNN "D2PL"
F 12 "LGA25" H 4050 9150 50  0001 C CNN "Package"
F 13 "3A Dual Buck converter" H 4050 9150 50  0001 C CNN "Description"
F 14 "_" H 4050 9150 50  0001 C CNN "Voltage"
F 15 "_" H 4050 9150 50  0001 C CNN "Power"
F 16 "_" H 4050 9150 50  0001 C CNN "Tolerance"
F 17 "_" H 4050 9150 50  0001 C CNN "Temperature"
F 18 "_" H 4050 9150 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 4050 9150 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 4050 9150 50  0001 C CNN "Cont.Current"
F 21 "_" H 4050 9150 50  0001 C CNN "Frequency"
F 22 "_" H 4050 9150 50  0001 C CNN "ResonnanceFreq"
	1    4050 9150
	1    0    0    -1  
$EndComp
$Sheet
S 5600 9100 500  150 
U 56A045FD
F0 "Sheet56A045FC" 60
F1 "Artix7Bank16.sch" 60
$EndSheet
$Sheet
S 5600 9850 500  150 
U 56A04FE2
F0 "Sheet56A04FE1" 60
F1 "Artix7Bank35.sch" 60
$EndSheet
Text Notes 5500 7700 0    200  ~ 40
FPGA Banks
$Comp
L CONN_02X40 P2
U 1 1 56A06137
P 8300 4100
F 0 "P2" H 8300 6266 50  0000 C CNN
F 1 "CONN_02X40" H 8300 6174 50  0000 C CNN
F 2 "Hirose:DF40C_80DS_0-4V" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0000 C CNN
	1    8300 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X40 P3
U 1 1 56A061A1
P 11350 4050
F 0 "P3" H 11350 6216 50  0000 C CNN
F 1 "CONN_02X40" H 11350 6124 50  0000 C CNN
F 2 "Hirose:DF40C_80DS_0-4V" H 11350 4050 50  0001 C CNN
F 3 "" H 11350 4050 50  0000 C CNN
	1    11350 4050
	1    0    0    -1  
$EndComp
Text Notes 7550 1400 0    200  ~ 40
Upstream link
Text Notes 10800 1350 0    200  ~ 40
Downstream link
Text Notes 7900 7650 0    200  ~ 40
JTAG
NoConn ~ 6350 2350
$Comp
L OSCILLATOR U5
U 1 1 56A0321B
P 6700 2100
F 0 "U5" H 6700 2466 50  0000 C CNN
F 1 "OSCILLATOR" H 6700 2374 50  0000 C CNN
F 2 "Oscillator:8y" H 6550 2100 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASFL1.pdf" H 6550 2200 50  0001 C CNN
F 4 "_" H 6650 2200 50  0001 C CNN "MFN"
F 5 "_" H 6650 2200 50  0001 C CNN "MFP"
F 6 "digikey" H 6650 2200 50  0001 C CNN "D1"
F 7 "mouser" H 6650 2200 50  0001 C CNN "D2"
F 8 "_" H 6650 2200 50  0001 C CNN "D1PN"
F 9 "_" H 6650 2200 50  0001 C CNN "D1PL"
F 10 "_" H 6650 2200 50  0001 C CNN "D2PN"
F 11 "_" H 6650 2200 50  0001 C CNN "D2PL"
F 12 "_" H 6650 2200 50  0001 C CNN "Package"
F 13 "_" H 6650 2200 50  0001 C CNN "Description"
F 14 "_" H 6650 2200 50  0001 C CNN "Voltage"
F 15 "_" H 6650 2200 50  0001 C CNN "Power"
F 16 "_" H 6650 2200 50  0001 C CNN "Tolerance"
F 17 "_" H 6650 2200 50  0001 C CNN "Temperature"
F 18 "_" H 6650 2200 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 6650 2200 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 6650 2200 50  0001 C CNN "Cont.Current"
F 21 "_" H 6650 2200 50  0001 C CNN "Frequency"
F 22 "_" H 6650 2200 50  0001 C CNN "ResonnanceFreq"
	1    6700 2100
	1    0    0    -1  
$EndComp
$Comp
L OSCILLATOR U6
U 1 1 56A0330F
P 6700 2950
F 0 "U6" H 6700 3316 50  0000 C CNN
F 1 "OSCILLATOR" H 6700 3224 50  0000 C CNN
F 2 "Oscillator:8y" H 6550 2950 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASFL1.pdf" H 6550 3050 50  0001 C CNN
F 4 "_" H 6650 3050 50  0001 C CNN "MFN"
F 5 "_" H 6650 3050 50  0001 C CNN "MFP"
F 6 "digikey" H 6650 3050 50  0001 C CNN "D1"
F 7 "mouser" H 6650 3050 50  0001 C CNN "D2"
F 8 "_" H 6650 3050 50  0001 C CNN "D1PN"
F 9 "_" H 6650 3050 50  0001 C CNN "D1PL"
F 10 "_" H 6650 3050 50  0001 C CNN "D2PN"
F 11 "_" H 6650 3050 50  0001 C CNN "D2PL"
F 12 "_" H 6650 3050 50  0001 C CNN "Package"
F 13 "_" H 6650 3050 50  0001 C CNN "Description"
F 14 "_" H 6650 3050 50  0001 C CNN "Voltage"
F 15 "_" H 6650 3050 50  0001 C CNN "Power"
F 16 "_" H 6650 3050 50  0001 C CNN "Tolerance"
F 17 "_" H 6650 3050 50  0001 C CNN "Temperature"
F 18 "_" H 6650 3050 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 6650 3050 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 6650 3050 50  0001 C CNN "Cont.Current"
F 21 "_" H 6650 3050 50  0001 C CNN "Frequency"
F 22 "_" H 6650 3050 50  0001 C CNN "ResonnanceFreq"
	1    6700 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X40 P4
U 1 1 56A03D9E
P 14700 3950
F 0 "P4" H 14700 6116 50  0000 C CNN
F 1 "CONN_02X40" H 14700 6024 50  0000 C CNN
F 2 "Hirose:DF40C_80DS_0-4V" H 14700 3950 50  0001 C CNN
F 3 "" H 14700 3950 50  0000 C CNN
	1    14700 3950
	1    0    0    -1  
$EndComp
Text Notes 13700 1300 0    200  ~ 40
Imager link
$Comp
L CONN_01X07 P5
U 1 1 56A041BC
P 8300 8700
F 0 "P5" H 8377 8738 50  0000 L CNN
F 1 "CONN_01X07" H 8377 8646 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07" H 8300 8700 50  0001 C CNN
F 3 "" H 8300 8700 50  0000 C CNN
	1    8300 8700
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 56A04F32
P 5000 8600
F 0 "C5" H 4950 8500 50  0000 C CNN
F 1 "C" H 4950 8700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 4733 8600 50  0001 C CNN
F 3 "" H 5000 8600 50  0000 C CNN
F 4 "_" H 5000 8600 60  0001 C CNN "MFN"
F 5 "_" H 5000 8600 60  0001 C CNN "MFP"
F 6 "digikey" H 5000 8600 60  0001 C CNN "D1"
F 7 "mouser" H 5000 8600 60  0001 C CNN "D2"
F 8 "_" H 5000 8600 60  0001 C CNN "D1PN"
F 9 "_" H 5000 8600 60  0001 C CNN "D1PL"
F 10 "_" H 5000 8600 60  0001 C CNN "D2PN"
F 11 "_" H 5000 8600 60  0001 C CNN "D2PL"
F 12 "_" H 5000 8600 60  0001 C CNN "Package"
F 13 "_" V 4832 8600 60  0000 C CNN "Description"
F 14 "_" H 5000 8600 60  0001 C CNN "Voltage"
F 15 "_" H 5000 8600 60  0001 C CNN "Power"
F 16 "_" H 5000 8600 60  0001 C CNN "Tolerance"
F 17 "_" H 5000 8600 60  0001 C CNN "Temperature"
F 18 "_" H 5000 8600 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 5000 8600 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 5000 8600 60  0001 C CNN "Cont.Current"
F 21 "_" H 5000 8600 60  0001 C CNN "Frequency"
F 22 "_" H 5000 8600 60  0001 C CNN "ResonnanceFreq"
	1    5000 8600
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 56A04F4B
P 4800 9000
F 0 "C6" H 4750 8900 50  0000 C CNN
F 1 "C" H 4750 9100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 4533 9000 50  0001 C CNN
F 3 "" H 4800 9000 50  0000 C CNN
F 4 "_" H 4800 9000 60  0001 C CNN "MFN"
F 5 "_" H 4800 9000 60  0001 C CNN "MFP"
F 6 "digikey" H 4800 9000 60  0001 C CNN "D1"
F 7 "mouser" H 4800 9000 60  0001 C CNN "D2"
F 8 "_" H 4800 9000 60  0001 C CNN "D1PN"
F 9 "_" H 4800 9000 60  0001 C CNN "D1PL"
F 10 "_" H 4800 9000 60  0001 C CNN "D2PN"
F 11 "_" H 4800 9000 60  0001 C CNN "D2PL"
F 12 "_" H 4800 9000 60  0001 C CNN "Package"
F 13 "_" V 4632 9000 60  0000 C CNN "Description"
F 14 "_" H 4800 9000 60  0001 C CNN "Voltage"
F 15 "_" H 4800 9000 60  0001 C CNN "Power"
F 16 "_" H 4800 9000 60  0001 C CNN "Tolerance"
F 17 "_" H 4800 9000 60  0001 C CNN "Temperature"
F 18 "_" H 4800 9000 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 4800 9000 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 4800 9000 60  0001 C CNN "Cont.Current"
F 21 "_" H 4800 9000 60  0001 C CNN "Frequency"
F 22 "_" H 4800 9000 60  0001 C CNN "ResonnanceFreq"
	1    4800 9000
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 56A05092
P 3300 8600
F 0 "C4" V 3250 8500 50  0000 C CNN
F 1 "C" V 3250 8700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 3033 8600 50  0001 C CNN
F 3 "" H 3300 8600 50  0000 C CNN
F 4 "_" H 3300 8600 60  0001 C CNN "MFN"
F 5 "_" H 3300 8600 60  0001 C CNN "MFP"
F 6 "digikey" H 3300 8600 60  0001 C CNN "D1"
F 7 "mouser" H 3300 8600 60  0001 C CNN "D2"
F 8 "_" H 3300 8600 60  0001 C CNN "D1PN"
F 9 "_" H 3300 8600 60  0001 C CNN "D1PL"
F 10 "_" H 3300 8600 60  0001 C CNN "D2PN"
F 11 "_" H 3300 8600 60  0001 C CNN "D2PL"
F 12 "_" H 3300 8600 60  0001 C CNN "Package"
F 13 "_" V 3132 8600 60  0000 C CNN "Description"
F 14 "_" H 3300 8600 60  0001 C CNN "Voltage"
F 15 "_" H 3300 8600 60  0001 C CNN "Power"
F 16 "_" H 3300 8600 60  0001 C CNN "Tolerance"
F 17 "_" H 3300 8600 60  0001 C CNN "Temperature"
F 18 "_" H 3300 8600 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 3300 8600 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 3300 8600 60  0001 C CNN "Cont.Current"
F 21 "_" H 3300 8600 60  0001 C CNN "Frequency"
F 22 "_" H 3300 8600 60  0001 C CNN "ResonnanceFreq"
	1    3300 8600
	-1   0    0    1   
$EndComp
$Sheet
S 1050 1750 500  150 
U 56A05B12
F0 "Sheet56A05B11" 60
F1 "DDR3.sch" 60
$EndSheet
$Comp
L R R7
U 1 1 56A05902
P 4650 9600
F 0 "R7" H 4720 9646 50  0000 L CNN
F 1 "R" H 4720 9554 50  0000 L CNN
F 2 "Dipoles_SMD:R_0402" V 4580 9600 50  0001 C CNN
F 3 "" H 4650 9600 50  0000 C CNN
	1    4650 9600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 56A0594F
P 4850 9600
F 0 "R8" H 4920 9646 50  0000 L CNN
F 1 "R" H 4920 9554 50  0000 L CNN
F 2 "Dipoles_SMD:R_0402" V 4780 9600 50  0001 C CNN
F 3 "" H 4850 9600 50  0000 C CNN
	1    4850 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 9450 4850 9350
Wire Wire Line
	4850 9350 4650 9350
Wire Wire Line
	3450 8450 3450 9050
Connection ~ 3450 8550
Connection ~ 3450 8650
Connection ~ 3450 8750
Connection ~ 3450 8950
NoConn ~ 4650 9050
NoConn ~ 4650 9150
NoConn ~ 3450 9250
Wire Wire Line
	3200 10050 4650 10050
Connection ~ 4150 10050
Connection ~ 4050 10050
NoConn ~ 3950 8150
NoConn ~ 4050 8150
NoConn ~ 3450 9650
$Comp
L GND #PWR22
U 1 1 56A05A88
P 3950 10050
F 0 "#PWR22" H 3950 9800 50  0001 C CNN
F 1 "GND" H 3958 9876 50  0000 C CNN
F 2 "" H 3950 10050 50  0000 C CNN
F 3 "" H 3950 10050 50  0000 C CNN
	1    3950 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 9750 4850 9750
Wire Wire Line
	4650 10050 4650 9750
Connection ~ 4250 10050
Wire Wire Line
	3450 8450 3300 8450
$Comp
L GND #PWR20
U 1 1 56A06431
P 3300 8750
F 0 "#PWR20" H 3300 8500 50  0001 C CNN
F 1 "GND" H 3308 8576 50  0000 C CNN
F 2 "" H 3300 8750 50  0000 C CNN
F 3 "" H 3300 8750 50  0000 C CNN
	1    3300 8750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR19
U 1 1 56A06465
P 3300 8450
F 0 "#PWR19" H 3300 8300 50  0001 C CNN
F 1 "+5V" H 3318 8624 50  0000 C CNN
F 2 "" H 3300 8450 50  0000 C CNN
F 3 "" H 3300 8450 50  0000 C CNN
	1    3300 8450
	1    0    0    -1  
$EndComp
Text Notes 1050 1350 0    200  ~ 40
DDR3
$Comp
L C C29
U 1 1 56A11F7B
P 3100 9700
F 0 "C29" H 3000 9800 50  0000 L CNN
F 1 "100n" H 2900 9600 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 3138 9550 50  0001 C CNN
F 3 "" H 3100 9700 50  0000 C CNN
	1    3100 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 9450 3450 9450
Wire Wire Line
	3300 9550 3450 9550
Wire Wire Line
	3100 9850 3300 9850
Wire Wire Line
	3200 9850 3200 10050
Connection ~ 3950 10050
Connection ~ 3200 9850
$Comp
L C C30
U 1 1 56A12586
P 3300 9700
F 0 "C30" H 3200 9800 50  0000 L CNN
F 1 "100n" H 3200 9600 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 3338 9550 50  0001 C CNN
F 3 "" H 3300 9700 50  0000 C CNN
	1    3300 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 9450 3100 9550
$Comp
L GND #PWR21
U 1 1 56A12EFA
P 3450 9350
F 0 "#PWR21" H 3450 9100 50  0001 C CNN
F 1 "GND" V 3458 9222 50  0000 R CNN
F 2 "" H 3450 9350 50  0000 C CNN
F 3 "" H 3450 9350 50  0000 C CNN
	1    3450 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 8550 4650 8450
Wire Wire Line
	4650 8750 4650 8850
Wire Wire Line
	4650 8850 4800 8850
Wire Wire Line
	4650 8450 5000 8450
$Comp
L GND #PWR26
U 1 1 56A13AE4
P 5000 8750
F 0 "#PWR26" H 5000 8500 50  0001 C CNN
F 1 "GND" H 5008 8576 50  0000 C CNN
F 2 "" H 5000 8750 50  0000 C CNN
F 3 "" H 5000 8750 50  0000 C CNN
	1    5000 8750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 56A13B70
P 4800 9150
F 0 "#PWR25" H 4800 8900 50  0001 C CNN
F 1 "GND" H 4808 8976 50  0000 C CNN
F 2 "" H 4800 9150 50  0000 C CNN
F 3 "" H 4800 9150 50  0000 C CNN
	1    4800 9150
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR24
U 1 1 56A1436F
P 4800 8850
F 0 "#PWR24" H 4800 8700 50  0001 C CNN
F 1 "+1V8" H 4818 9024 50  0000 C CNN
F 2 "" H 4800 8850 50  0000 C CNN
F 3 "" H 4800 8850 50  0000 C CNN
	1    4800 8850
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR23
U 1 1 56A143A7
P 4800 8450
F 0 "#PWR23" H 4800 8300 50  0001 C CNN
F 1 "+2V5" H 4818 8624 50  0000 C CNN
F 2 "" H 4800 8450 50  0000 C CNN
F 3 "" H 4800 8450 50  0000 C CNN
	1    4800 8450
	1    0    0    -1  
$EndComp
Connection ~ 4800 8450
$Comp
L LTM4622 U2
U 1 1 56A14B01
P 1850 9200
F 0 "U2" H 1850 10379 50  0000 C CNN
F 1 "LTM4622" H 1850 10287 50  0000 C CNN
F 2 "Housings_LGA:LGA25_6.25X6.25X1.82" H 1850 9200 50  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/4622fa.pdf" H 1850 9200 50  0001 C CNN
F 4 "Linear" H 1850 9200 50  0001 C CNN "MFN"
F 5 "LTM4622EV#PBF" H 1850 9200 50  0001 C CNN "MFP"
F 6 "digikey" H 1850 9200 50  0001 C CNN "D1"
F 7 "mouser" H 1850 9200 50  0001 C CNN "D2"
F 8 "LTM4622EV#PBF" H 1850 9200 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/LTM4622EV%23PBF/LTM4622EV%23PBF-ND/5361650" H 1850 9200 50  0001 C CNN "D1PL"
F 10 "_" H 1850 9200 50  0001 C CNN "D2PN"
F 11 "_" H 1850 9200 50  0001 C CNN "D2PL"
F 12 "LGA25" H 1850 9200 50  0001 C CNN "Package"
F 13 "3A Dual Buck converter" H 1850 9200 50  0001 C CNN "Description"
F 14 "_" H 1850 9200 50  0001 C CNN "Voltage"
F 15 "_" H 1850 9200 50  0001 C CNN "Power"
F 16 "_" H 1850 9200 50  0001 C CNN "Tolerance"
F 17 "_" H 1850 9200 50  0001 C CNN "Temperature"
F 18 "_" H 1850 9200 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 1850 9200 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 1850 9200 50  0001 C CNN "Cont.Current"
F 21 "_" H 1850 9200 50  0001 C CNN "Frequency"
F 22 "_" H 1850 9200 50  0001 C CNN "ResonnanceFreq"
	1    1850 9200
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 56A14B1A
P 2800 8650
F 0 "C32" H 2750 8550 50  0000 C CNN
F 1 "C" H 2750 8750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 2533 8650 50  0001 C CNN
F 3 "" H 2800 8650 50  0000 C CNN
F 4 "_" H 2800 8650 60  0001 C CNN "MFN"
F 5 "_" H 2800 8650 60  0001 C CNN "MFP"
F 6 "digikey" H 2800 8650 60  0001 C CNN "D1"
F 7 "mouser" H 2800 8650 60  0001 C CNN "D2"
F 8 "_" H 2800 8650 60  0001 C CNN "D1PN"
F 9 "_" H 2800 8650 60  0001 C CNN "D1PL"
F 10 "_" H 2800 8650 60  0001 C CNN "D2PN"
F 11 "_" H 2800 8650 60  0001 C CNN "D2PL"
F 12 "_" H 2800 8650 60  0001 C CNN "Package"
F 13 "_" V 2632 8650 60  0000 C CNN "Description"
F 14 "_" H 2800 8650 60  0001 C CNN "Voltage"
F 15 "_" H 2800 8650 60  0001 C CNN "Power"
F 16 "_" H 2800 8650 60  0001 C CNN "Tolerance"
F 17 "_" H 2800 8650 60  0001 C CNN "Temperature"
F 18 "_" H 2800 8650 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 2800 8650 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 2800 8650 60  0001 C CNN "Cont.Current"
F 21 "_" H 2800 8650 60  0001 C CNN "Frequency"
F 22 "_" H 2800 8650 60  0001 C CNN "ResonnanceFreq"
	1    2800 8650
	-1   0    0    1   
$EndComp
$Comp
L C C31
U 1 1 56A14B33
P 2600 9050
F 0 "C31" H 2550 8950 50  0000 C CNN
F 1 "C" H 2550 9150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 2333 9050 50  0001 C CNN
F 3 "" H 2600 9050 50  0000 C CNN
F 4 "_" H 2600 9050 60  0001 C CNN "MFN"
F 5 "_" H 2600 9050 60  0001 C CNN "MFP"
F 6 "digikey" H 2600 9050 60  0001 C CNN "D1"
F 7 "mouser" H 2600 9050 60  0001 C CNN "D2"
F 8 "_" H 2600 9050 60  0001 C CNN "D1PN"
F 9 "_" H 2600 9050 60  0001 C CNN "D1PL"
F 10 "_" H 2600 9050 60  0001 C CNN "D2PN"
F 11 "_" H 2600 9050 60  0001 C CNN "D2PL"
F 12 "_" H 2600 9050 60  0001 C CNN "Package"
F 13 "_" V 2432 9050 60  0000 C CNN "Description"
F 14 "_" H 2600 9050 60  0001 C CNN "Voltage"
F 15 "_" H 2600 9050 60  0001 C CNN "Power"
F 16 "_" H 2600 9050 60  0001 C CNN "Tolerance"
F 17 "_" H 2600 9050 60  0001 C CNN "Temperature"
F 18 "_" H 2600 9050 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 2600 9050 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 2600 9050 60  0001 C CNN "Cont.Current"
F 21 "_" H 2600 9050 60  0001 C CNN "Frequency"
F 22 "_" H 2600 9050 60  0001 C CNN "ResonnanceFreq"
	1    2600 9050
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 56A14B4C
P 1100 8650
F 0 "C2" V 1050 8550 50  0000 C CNN
F 1 "C" V 1050 8750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 833 8650 50  0001 C CNN
F 3 "" H 1100 8650 50  0000 C CNN
F 4 "_" H 1100 8650 60  0001 C CNN "MFN"
F 5 "_" H 1100 8650 60  0001 C CNN "MFP"
F 6 "digikey" H 1100 8650 60  0001 C CNN "D1"
F 7 "mouser" H 1100 8650 60  0001 C CNN "D2"
F 8 "_" H 1100 8650 60  0001 C CNN "D1PN"
F 9 "_" H 1100 8650 60  0001 C CNN "D1PL"
F 10 "_" H 1100 8650 60  0001 C CNN "D2PN"
F 11 "_" H 1100 8650 60  0001 C CNN "D2PL"
F 12 "_" H 1100 8650 60  0001 C CNN "Package"
F 13 "_" V 932 8650 60  0000 C CNN "Description"
F 14 "_" H 1100 8650 60  0001 C CNN "Voltage"
F 15 "_" H 1100 8650 60  0001 C CNN "Power"
F 16 "_" H 1100 8650 60  0001 C CNN "Tolerance"
F 17 "_" H 1100 8650 60  0001 C CNN "Temperature"
F 18 "_" H 1100 8650 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 1100 8650 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 1100 8650 60  0001 C CNN "Cont.Current"
F 21 "_" H 1100 8650 60  0001 C CNN "Frequency"
F 22 "_" H 1100 8650 60  0001 C CNN "ResonnanceFreq"
	1    1100 8650
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 56A14B52
P 2450 9650
F 0 "R9" H 2520 9696 50  0000 L CNN
F 1 "R" H 2520 9604 50  0000 L CNN
F 2 "Dipoles_SMD:R_0402" V 2380 9650 50  0001 C CNN
F 3 "" H 2450 9650 50  0000 C CNN
	1    2450 9650
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 56A14B58
P 2650 9650
F 0 "R10" H 2720 9696 50  0000 L CNN
F 1 "R" H 2720 9604 50  0000 L CNN
F 2 "Dipoles_SMD:R_0402" V 2580 9650 50  0001 C CNN
F 3 "" H 2650 9650 50  0000 C CNN
	1    2650 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 9500 2650 9400
Wire Wire Line
	2650 9400 2450 9400
Wire Wire Line
	1250 8500 1250 9100
Connection ~ 1250 8600
Connection ~ 1250 8700
Connection ~ 1250 8800
Connection ~ 1250 9000
NoConn ~ 2450 9100
NoConn ~ 2450 9200
NoConn ~ 1250 9300
Wire Wire Line
	1000 10100 2450 10100
Connection ~ 1950 10100
Connection ~ 1850 10100
NoConn ~ 1750 8200
NoConn ~ 1850 8200
NoConn ~ 1250 9700
$Comp
L GND #PWR14
U 1 1 56A14B6E
P 1750 10100
F 0 "#PWR14" H 1750 9850 50  0001 C CNN
F 1 "GND" H 1758 9926 50  0000 C CNN
F 2 "" H 1750 10100 50  0000 C CNN
F 3 "" H 1750 10100 50  0000 C CNN
	1    1750 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 9800 2650 9800
Wire Wire Line
	2450 10100 2450 9800
Connection ~ 2050 10100
Wire Wire Line
	1250 8500 1100 8500
$Comp
L GND #PWR12
U 1 1 56A14B78
P 1100 8800
F 0 "#PWR12" H 1100 8550 50  0001 C CNN
F 1 "GND" H 1108 8626 50  0000 C CNN
F 2 "" H 1100 8800 50  0000 C CNN
F 3 "" H 1100 8800 50  0000 C CNN
	1    1100 8800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR11
U 1 1 56A14B7E
P 1100 8500
F 0 "#PWR11" H 1100 8350 50  0001 C CNN
F 1 "+5V" H 1118 8674 50  0000 C CNN
F 2 "" H 1100 8500 50  0000 C CNN
F 3 "" H 1100 8500 50  0000 C CNN
	1    1100 8500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56A14B84
P 900 9750
F 0 "C1" H 800 9850 50  0000 L CNN
F 1 "100n" H 700 9650 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 938 9600 50  0001 C CNN
F 3 "" H 900 9750 50  0000 C CNN
	1    900  9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  9500 1250 9500
Wire Wire Line
	1100 9600 1250 9600
Wire Wire Line
	900  9900 1100 9900
Wire Wire Line
	1000 9900 1000 10100
Connection ~ 1750 10100
Connection ~ 1000 9900
$Comp
L C C3
U 1 1 56A14B90
P 1100 9750
F 0 "C3" H 1000 9850 50  0000 L CNN
F 1 "100n" H 1000 9650 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 1138 9600 50  0001 C CNN
F 3 "" H 1100 9750 50  0000 C CNN
	1    1100 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  9500 900  9600
$Comp
L GND #PWR13
U 1 1 56A14B97
P 1250 9400
F 0 "#PWR13" H 1250 9150 50  0001 C CNN
F 1 "GND" V 1258 9272 50  0000 R CNN
F 2 "" H 1250 9400 50  0000 C CNN
F 3 "" H 1250 9400 50  0000 C CNN
	1    1250 9400
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 8600 2450 8500
Wire Wire Line
	2450 8800 2450 8900
Wire Wire Line
	2450 8900 2600 8900
Wire Wire Line
	2450 8500 2800 8500
$Comp
L GND #PWR18
U 1 1 56A14BA1
P 2800 8800
F 0 "#PWR18" H 2800 8550 50  0001 C CNN
F 1 "GND" H 2808 8626 50  0000 C CNN
F 2 "" H 2800 8800 50  0000 C CNN
F 3 "" H 2800 8800 50  0000 C CNN
	1    2800 8800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 56A14BA7
P 2600 9200
F 0 "#PWR17" H 2600 8950 50  0001 C CNN
F 1 "GND" H 2608 9026 50  0000 C CNN
F 2 "" H 2600 9200 50  0000 C CNN
F 3 "" H 2600 9200 50  0000 C CNN
	1    2600 9200
	1    0    0    -1  
$EndComp
Connection ~ 2600 8500
$Comp
L +1V35 #PWR15
U 1 1 56A14F13
P 2600 8500
F 0 "#PWR15" H 2600 8350 50  0001 C CNN
F 1 "+1V35" H 2618 8674 50  0000 C CNN
F 2 "" H 2600 8500 50  0000 C CNN
F 3 "" H 2600 8500 50  0000 C CNN
	1    2600 8500
	1    0    0    -1  
$EndComp
$Comp
L +1V0 #PWR16
U 1 1 56A14F6A
P 2600 8900
F 0 "#PWR16" H 2600 8750 50  0001 C CNN
F 1 "+1V0" H 2618 9074 50  0000 C CNN
F 2 "" H 2600 8900 50  0000 C CNN
F 3 "" H 2600 8900 50  0000 C CNN
	1    2600 8900
	1    0    0    -1  
$EndComp
$Sheet
S 1600 5900 500  150 
U 56A16EF0
F0 "Sheet56A16EEF" 60
F1 "PowerSupplies.sch" 60
$EndSheet
$EndSCHEMATC
