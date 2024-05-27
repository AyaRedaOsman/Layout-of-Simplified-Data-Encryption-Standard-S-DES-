* SPICE NETLIST
***************************************

.SUBCKT pmos25_Auto_0_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_1_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT AND Vdd Out Gnd B A
** N=7 EP=5 IP=23 FDC=6
M0 3 A 2 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=2080 $Y=-540 $D=1
X1 Vdd Vdd 3 B pmos25_Auto_0_1 $T=1080 2415 0 0 $X=-1370 $Y=1665
X2 Vdd Vdd 3 A pmos25_Auto_0_1 $T=2330 2415 1 180 $X=680 $Y=1665
X3 Vdd Vdd Out 3 pmos25_Auto_0_1 $T=8650 2365 0 0 $X=6200 $Y=1615
X4 Gnd 2 Gnd B nmos25_Auto_1_1 $T=1080 -540 0 0 $X=-870 $Y=-840
X5 Gnd Out Gnd 3 nmos25_Auto_1_1 $T=8650 -230 0 0 $X=6700 $Y=-530
.ENDS
***************************************
