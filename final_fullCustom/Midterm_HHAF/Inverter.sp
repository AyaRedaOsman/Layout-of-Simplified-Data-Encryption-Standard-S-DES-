* SPICE NETLIST
***************************************

.SUBCKT Inverter Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=6535 $Y=32510 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=6535 $Y=35105 $D=2
.ENDS
***************************************
