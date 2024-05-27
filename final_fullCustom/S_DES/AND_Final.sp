* SPICE NETLIST
***************************************

.SUBCKT pmos25_Auto_13_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT AND_Final Vdd Gnd Out A B
** N=7 EP=5 IP=10 FDC=6
M0 3 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-590 $Y=505 $D=1
M1 4 B 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=410 $Y=505 $D=1
M2 Out 4 Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=6175 $Y=190 $D=1
M3 Out 4 Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=6175 $Y=4340 $D=2
X4 Vdd Vdd 4 A pmos25_Auto_13_1 $T=-590 3460 0 0 $X=-3040 $Y=2710
X5 Vdd Vdd 4 B pmos25_Auto_13_1 $T=660 3460 1 180 $X=-990 $Y=2710
.ENDS
***************************************
