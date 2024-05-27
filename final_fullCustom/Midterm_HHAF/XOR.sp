* SPICE NETLIST
***************************************

.SUBCKT Inverter Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=6535 $Y=32510 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=6535 $Y=35105 $D=2
.ENDS
***************************************
.SUBCKT pmos25_Auto_9_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_10_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT pmos25_Auto_8_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT XOR Vdd Gnd Out In1 In2
** N=11 EP=5 IP=44 FDC=12
X0 Vdd Gnd 7 In1 Inverter $T=-5225 -17030 0 0 $X=-1235 $Y=13795
X1 Vdd Gnd 11 In2 Inverter $T=24005 -17030 1 180 $X=15625 $Y=13795
X2 Vdd 8 Out In1 pmos25_Auto_9_1 $T=6190 18115 0 0 $X=4790 $Y=17365
X3 Vdd 9 Out 7 pmos25_Auto_9_1 $T=7440 18115 1 180 $X=5790 $Y=17365
X4 Gnd 3 Gnd In1 nmos25_Auto_10_1 $T=6440 15160 1 180 $X=5290 $Y=13860
X5 Gnd 4 Gnd 7 nmos25_Auto_10_1 $T=7190 15160 0 0 $X=6290 $Y=13860
X6 3 Out Gnd In2 nmos25_Auto_10_1 $T=11855 15100 0 0 $X=10955 $Y=13800
X7 4 Out Gnd 11 nmos25_Auto_10_1 $T=13105 15100 1 180 $X=11955 $Y=13800
X8 Vdd Vdd 9 In2 pmos25_Auto_8_1 $T=12105 18275 1 180 $X=10455 $Y=17525
X9 Vdd Vdd 8 11 pmos25_Auto_8_1 $T=12855 18275 0 0 $X=11455 $Y=17525
.ENDS
***************************************
