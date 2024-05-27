* SPICE NETLIST
***************************************

.SUBCKT pmos25_Auto_3_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT Nand_gate Vdd Gnd Out In1 In2
** N=6 EP=5 IP=10 FDC=4
M0 3 In1 Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=705 $Y=-120 $D=1
M1 Out In2 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=1705 $Y=-120 $D=1
X2 Vdd Vdd Out In1 pmos25_Auto_3_1 $T=705 2835 0 0 $X=-1745 $Y=2085
X3 Vdd Vdd Out In2 pmos25_Auto_3_1 $T=1955 2835 1 180 $X=305 $Y=2085
.ENDS
***************************************
