* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_2_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_1_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT inverter Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_2_1 $T=300 265 0 0 $X=-1100 $Y=-485
X1 Gnd Out Gnd In nmos25x_Auto_1_1 $T=300 -3885 0 0 $X=-600 $Y=-5185
.ENDS
***************************************
.SUBCKT nor_2 Vdd Out Gnd A B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 6 A pmos25x_Auto_2_1 $T=4505 3955 0 0 $X=3105 $Y=3205
X1 Vdd 6 Out B pmos25x_Auto_2_1 $T=5505 3955 0 0 $X=4105 $Y=3205
X2 Gnd Out Gnd A nmos25x_Auto_1_1 $T=4505 -765 0 0 $X=3605 $Y=-2065
X3 Gnd Out Gnd B nmos25x_Auto_1_1 $T=5755 -765 1 180 $X=4605 $Y=-2065
.ENDS
***************************************
.SUBCKT Decoder_2to4 Gnd Vdd A1 A0 D3 D2 D1 D0
** N=10 EP=8 IP=28 FDC=20
X0 Vdd 6 Gnd A1 inverter $T=5750 14320 0 0 $X=4645 $Y=9135
X1 Vdd 5 Gnd A0 inverter $T=5750 23570 0 0 $X=4645 $Y=18385
X2 Vdd D3 Gnd 5 6 nor_2 $T=14808 2620 0 0 $X=17898 $Y=555
X3 Vdd D2 Gnd A0 6 nor_2 $T=14808 12440 0 0 $X=17898 $Y=10375
X4 Vdd D1 Gnd A1 5 nor_2 $T=14808 22260 0 0 $X=17898 $Y=20195
X5 Vdd D0 Gnd A1 A0 nor_2 $T=14808 32080 0 0 $X=17898 $Y=30015
.ENDS
***************************************
