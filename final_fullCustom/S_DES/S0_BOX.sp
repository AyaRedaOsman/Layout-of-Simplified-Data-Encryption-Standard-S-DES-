* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_12_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_11_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT inverter Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_12_1 $T=300 265 0 0 $X=-1100 $Y=-485
X1 Gnd Out Gnd In nmos25x_Auto_11_1 $T=300 -3885 0 0 $X=-600 $Y=-5185
.ENDS
***************************************
.SUBCKT nor_2 Vdd Out Gnd A B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 6 A pmos25x_Auto_12_1 $T=4505 3955 0 0 $X=3105 $Y=3205
X1 Vdd 6 Out B pmos25x_Auto_12_1 $T=5505 3955 0 0 $X=4105 $Y=3205
X2 Gnd Out Gnd A nmos25x_Auto_11_1 $T=4505 -765 0 0 $X=3605 $Y=-2065
X3 Gnd Out Gnd B nmos25x_Auto_11_1 $T=5755 -765 1 180 $X=4605 $Y=-2065
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
.SUBCKT pmos25_Auto_14_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT AND_Final Vdd Gnd Out A B
** N=7 EP=5 IP=14 FDC=6
M0 6 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-590 $Y=505 $D=1
M1 7 B 6 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=410 $Y=505 $D=1
X2 Vdd Out Gnd 7 inverter $T=5875 4075 0 0 $X=4770 $Y=-1110
X3 Vdd Vdd 7 A pmos25_Auto_14_1 $T=-590 3460 0 0 $X=-3040 $Y=2710
X4 Vdd Vdd 7 B pmos25_Auto_14_1 $T=660 3460 1 180 $X=-990 $Y=2710
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
.SUBCKT pmos25_Auto_8_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_9_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT OR Vdd Gnd Out In7 In6 In5 In4 In3 In2 In1
** N=16 EP=10 IP=63 FDC=14
X0 Vdd Vdd 11 In1 pmos25_Auto_8_1 $T=-6405 19220 0 0 $X=-7805 $Y=18470
X1 Vdd 11 12 In2 pmos25_Auto_8_1 $T=-5405 19220 0 0 $X=-6805 $Y=18470
X2 Vdd 12 13 In3 pmos25_Auto_8_1 $T=-4405 19220 0 0 $X=-5805 $Y=18470
X3 Vdd 13 14 In4 pmos25_Auto_8_1 $T=-3405 19220 0 0 $X=-4805 $Y=18470
X4 Vdd 14 15 In5 pmos25_Auto_8_1 $T=-2405 19220 0 0 $X=-3805 $Y=18470
X5 Vdd 15 16 In6 pmos25_Auto_8_1 $T=-1405 19220 0 0 $X=-2805 $Y=18470
X6 Vdd 16 Out In7 pmos25_Auto_8_1 $T=-405 19220 0 0 $X=-1805 $Y=18470
X7 Gnd Out Gnd In1 nmos25_Auto_9_1 $T=-6405 11415 0 0 $X=-7305 $Y=10115
X8 Gnd Out Gnd In2 nmos25_Auto_9_1 $T=-5155 11415 1 180 $X=-6305 $Y=10115
X9 Gnd Out Gnd In3 nmos25_Auto_9_1 $T=-4405 11415 0 0 $X=-5305 $Y=10115
X10 Gnd Out Gnd In4 nmos25_Auto_9_1 $T=-3155 11415 1 180 $X=-4305 $Y=10115
X11 Gnd Out Gnd In5 nmos25_Auto_9_1 $T=-2405 11415 0 0 $X=-3305 $Y=10115
X12 Gnd Out Gnd In6 nmos25_Auto_9_1 $T=-1155 11415 1 180 $X=-2305 $Y=10115
X13 Gnd Out Gnd In7 nmos25_Auto_9_1 $T=-405 11415 0 0 $X=-1305 $Y=10115
.ENDS
***************************************
.SUBCKT INV Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=705 $Y=-2035 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=705 $Y=855 $D=2
.ENDS
***************************************
.SUBCKT S0_BOX Gnd Vdd S0_In1 S0_In0 S0_In2 S0_In3 S0_Out<1> S0_Out<0>
** N=30 EP=8 IP=72 FDC=228
X0 Gnd Vdd S0_In3 S0_In2 3 4 5 6 Decoder_2to4 $T=-4210 98045 0 0 $X=-1745 $Y=94120
X1 Gnd Vdd S0_In0 S0_In1 12 24 25 14 3 Decode2x4_E $T=73130 74260 1 0 $X=61305 $Y=24365
X2 Gnd Vdd S0_In0 S0_In1 16 13 26 9 4 Decode2x4_E $T=73130 67940 0 0 $X=61305 $Y=70790
X3 Gnd Vdd S0_In0 S0_In1 10 15 18 27 5 Decode2x4_E $T=73130 167270 1 0 $X=61305 $Y=117375
X4 Gnd Vdd S0_In0 S0_In1 17 11 28 19 6 Decode2x4_E $T=73130 161475 0 0 $X=61305 $Y=164325
X5 Vdd Gnd 20 19 11 18 10 9 16 14 OR $T=134520 79040 0 0 $X=125890 $Y=89010
X6 Vdd Gnd 21 17 15 13 12 11 10 9 OR $T=134520 162760 1 0 $X=125890 $Y=140235
X7 Vdd Gnd S0_Out<1> 20 INV $T=138305 94735 0 0 $X=137610 $Y=91400
X8 Vdd Gnd S0_Out<0> 21 INV $T=138305 146880 1 0 $X=137610 $Y=142725
.ENDS
***************************************
