* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_6_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_5_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT inverter Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_6_1 $T=300 265 0 0 $X=-1100 $Y=-485
X1 Gnd Out Gnd In nmos25x_Auto_5_1 $T=300 -3885 0 0 $X=-600 $Y=-5185
.ENDS
***************************************
.SUBCKT nor_2 Vdd Out Gnd A B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 6 A pmos25x_Auto_6_1 $T=4505 3955 0 0 $X=3105 $Y=3205
X1 Vdd 6 Out B pmos25x_Auto_6_1 $T=5505 3955 0 0 $X=4105 $Y=3205
X2 Gnd Out Gnd A nmos25x_Auto_5_1 $T=4505 -765 0 0 $X=3605 $Y=-2065
X3 Gnd Out Gnd B nmos25x_Auto_5_1 $T=5755 -765 1 180 $X=4605 $Y=-2065
.ENDS
***************************************
.SUBCKT Decoder_2to4 Gnd Vdd A1 A0 D3 D2 D1 D0
** N=10 EP=8 IP=28 FDC=20
X0 Vdd 10 Gnd A1 inverter $T=5750 14320 0 0 $X=4645 $Y=9135
X1 Vdd 9 Gnd A0 inverter $T=5750 23570 0 0 $X=4645 $Y=18385
X2 Vdd D3 Gnd 9 10 nor_2 $T=14808 2620 0 0 $X=17898 $Y=555
X3 Vdd D2 Gnd A0 10 nor_2 $T=14808 12440 0 0 $X=17898 $Y=10375
X4 Vdd D1 Gnd A1 9 nor_2 $T=14808 22260 0 0 $X=17898 $Y=20195
X5 Vdd D0 Gnd A1 A0 nor_2 $T=14808 32080 0 0 $X=17898 $Y=30015
.ENDS
***************************************
.SUBCKT pmos25_Auto_8_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT AND_Final Vdd Gnd Out A B
** N=7 EP=5 IP=14 FDC=6
M0 6 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-590 $Y=505 $D=1
M1 7 B 6 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=410 $Y=505 $D=1
X2 Vdd Out Gnd 7 inverter $T=5875 4075 0 0 $X=4770 $Y=-1110
X3 Vdd Vdd 7 A pmos25_Auto_8_1 $T=-590 3460 0 0 $X=-3040 $Y=2710
X4 Vdd Vdd 7 B pmos25_Auto_8_1 $T=660 3460 1 180 $X=-990 $Y=2710
.ENDS
***************************************
.SUBCKT Decode2x4_E Gnd Vdd A0 A1 O3 O2 O1 O0 E
** N=13 EP=9 IP=28 FDC=44
X0 Gnd Vdd A1 A0 12 13 10 11 Decoder_2to4 $T=-14290 6775 0 0 $X=-11825 $Y=2850
X1 Vdd Gnd O3 12 E AND_Final $T=17140 8263 0 0 $X=13725 $Y=7153
X2 Vdd Gnd O2 13 E AND_Final $T=17140 17985 0 0 $X=13725 $Y=16875
X3 Vdd Gnd O1 10 E AND_Final $T=17140 29735 0 0 $X=13725 $Y=28625
X4 Vdd Gnd O0 11 E AND_Final $T=17142 39679 0 0 $X=13727 $Y=38569
.ENDS
***************************************
.SUBCKT Decode4x16 Gnd Vdd A1 A0 A2 A3 O14 O13 O15 O12 O10 O9 O11 O8 O6 O5 O7 O4 O2 O1
+ O3 O0
** N=26 EP=22 IP=44 FDC=196
X0 Gnd Vdd A3 A2 3 4 5 6 Decoder_2to4 $T=-46585 74575 0 0 $X=-44120 $Y=70650
X1 Gnd Vdd A0 A1 O15 O14 O13 O12 3 Decode2x4_E $T=30755 50790 1 0 $X=18930 $Y=895
X2 Gnd Vdd A0 A1 O11 O10 O9 O8 4 Decode2x4_E $T=30755 44470 0 0 $X=18930 $Y=47320
X3 Gnd Vdd A0 A1 O7 O6 O5 O4 5 Decode2x4_E $T=30755 143800 1 0 $X=18930 $Y=93905
X4 Gnd Vdd A0 A1 O3 O2 O1 O0 6 Decode2x4_E $T=30755 138005 0 0 $X=18930 $Y=140855
.ENDS
***************************************
