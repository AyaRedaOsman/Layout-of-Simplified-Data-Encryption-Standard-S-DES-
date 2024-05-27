* SPICE NETLIST
***************************************

.SUBCKT VDD
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT GND
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos25x_Auto_4_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_3_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT AND_2 Vdd Gnd Y A B
** N=7 EP=5 IP=24 FDC=6
M0 Y 5 Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=7550 $Y=-60 $D=1
M1 Y 5 Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=7550 $Y=2425 $D=2
X6 Vdd Vdd 5 A pmos25x_Auto_4_1 $T=435 4925 0 0 $X=-965 $Y=4175
X7 Vdd Vdd 5 B pmos25x_Auto_4_1 $T=1685 4925 1 180 $X=35 $Y=4175
X8 Gnd 4 Gnd A nmos25x_Auto_3_1 $T=435 940 0 0 $X=-465 $Y=-360
X9 4 5 Gnd B nmos25x_Auto_3_1 $T=1435 940 0 0 $X=535 $Y=-360
.ENDS
***************************************
