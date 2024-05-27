* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_19_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_18_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT inverter Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_19_1 $T=300 265 0 0 $X=-1100 $Y=-485
X1 Gnd Out Gnd In nmos25x_Auto_18_1 $T=300 -3885 0 0 $X=-600 $Y=-5185
.ENDS
***************************************
.SUBCKT nor_2 Vdd Out Gnd A B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 6 A pmos25x_Auto_19_1 $T=4505 3955 0 0 $X=3105 $Y=3205
X1 Vdd 6 Out B pmos25x_Auto_19_1 $T=5505 3955 0 0 $X=4105 $Y=3205
X2 Gnd Out Gnd A nmos25x_Auto_18_1 $T=4505 -765 0 0 $X=3605 $Y=-2065
X3 Gnd Out Gnd B nmos25x_Auto_18_1 $T=5755 -765 1 180 $X=4605 $Y=-2065
.ENDS
***************************************
.SUBCKT pmos25_Auto_13_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT AND_Final Vdd Gnd Out A B
** N=7 EP=5 IP=14 FDC=6
M0 6 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-590 $Y=505 $D=1
M1 7 B 6 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=410 $Y=505 $D=1
X2 Vdd Out Gnd 7 inverter $T=5875 4075 0 0 $X=4770 $Y=-1110
X3 Vdd Vdd 7 A pmos25_Auto_13_1 $T=-590 3460 0 0 $X=-3040 $Y=2710
X4 Vdd Vdd 7 B pmos25_Auto_13_1 $T=660 3460 1 180 $X=-990 $Y=2710
.ENDS
***************************************
.SUBCKT Decode2x4_E Gnd Vdd A1 A0 O3 O2 O1 O0 E
** N=15 EP=9 IP=48 FDC=44
X0 Vdd 6 Gnd A1 inverter $T=-8540 21095 0 0 $X=-9645 $Y=15910
X1 Vdd 5 Gnd A0 inverter $T=-8540 30345 0 0 $X=-9645 $Y=25160
X2 Vdd 9 Gnd 5 6 nor_2 $T=518 9395 0 0 $X=3608 $Y=7330
X3 Vdd 10 Gnd A0 6 nor_2 $T=518 19215 0 0 $X=3608 $Y=17150
X4 Vdd 7 Gnd A1 5 nor_2 $T=518 29035 0 0 $X=3608 $Y=26970
X5 Vdd 8 Gnd A1 A0 nor_2 $T=518 38855 0 0 $X=3608 $Y=36790
X6 Vdd Gnd O3 9 E AND_Final $T=17140 8263 0 0 $X=13725 $Y=7153
X7 Vdd Gnd O2 10 E AND_Final $T=17140 17985 0 0 $X=13725 $Y=16875
X8 Vdd Gnd O1 7 E AND_Final $T=17140 29735 0 0 $X=13725 $Y=28625
X9 Vdd Gnd O0 8 E AND_Final $T=17142 39679 0 0 $X=13727 $Y=38569
.ENDS
***************************************
