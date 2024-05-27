* SPICE NETLIST
***************************************

.SUBCKT pmos25_Auto_6_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_5_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT OR Vdd Gnd Out In7 In6 In5 In4 In3 In2 In1
** N=16 EP=10 IP=63 FDC=14
X0 Vdd Vdd 4 In1 pmos25_Auto_6_1 $T=-6405 19220 0 0 $X=-7805 $Y=18470
X1 Vdd 4 5 In2 pmos25_Auto_6_1 $T=-5405 19220 0 0 $X=-6805 $Y=18470
X2 Vdd 5 6 In3 pmos25_Auto_6_1 $T=-4405 19220 0 0 $X=-5805 $Y=18470
X3 Vdd 6 7 In4 pmos25_Auto_6_1 $T=-3405 19220 0 0 $X=-4805 $Y=18470
X4 Vdd 7 8 In5 pmos25_Auto_6_1 $T=-2405 19220 0 0 $X=-3805 $Y=18470
X5 Vdd 8 9 In6 pmos25_Auto_6_1 $T=-1405 19220 0 0 $X=-2805 $Y=18470
X6 Vdd 9 Out In7 pmos25_Auto_6_1 $T=-405 19220 0 0 $X=-1805 $Y=18470
X7 Gnd Out Gnd In1 nmos25_Auto_5_1 $T=-6405 11415 0 0 $X=-7305 $Y=10115
X8 Gnd Out Gnd In2 nmos25_Auto_5_1 $T=-5155 11415 1 180 $X=-6305 $Y=10115
X9 Gnd Out Gnd In3 nmos25_Auto_5_1 $T=-4405 11415 0 0 $X=-5305 $Y=10115
X10 Gnd Out Gnd In4 nmos25_Auto_5_1 $T=-3155 11415 1 180 $X=-4305 $Y=10115
X11 Gnd Out Gnd In5 nmos25_Auto_5_1 $T=-2405 11415 0 0 $X=-3305 $Y=10115
X12 Gnd Out Gnd In6 nmos25_Auto_5_1 $T=-1155 11415 1 180 $X=-2305 $Y=10115
X13 Gnd Out Gnd In7 nmos25_Auto_5_1 $T=-405 11415 0 0 $X=-1305 $Y=10115
.ENDS
***************************************
