* SPICE NETLIST
***************************************

.SUBCKT pmos25_Auto_14_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_15_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT Inverter_2 Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25_Auto_14_1 $T=6535 35105 0 0 $X=4085 $Y=34355
X1 Gnd Out Gnd In nmos25_Auto_15_1 $T=6535 32510 0 0 $X=4585 $Y=32210
.ENDS
***************************************
.SUBCKT pmos25_Auto_5_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_4_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT XOR Vdd Gnd Out 4 In1 6 In2
** N=11 EP=7 IP=44 FDC=12
X0 Vdd 6 Gnd In1 Inverter_2 $T=-5225 -17030 0 0 $X=-1235 $Y=13795
X1 Vdd 11 Gnd In2 Inverter_2 $T=24005 -17030 1 180 $X=15625 $Y=13795
X2 Vdd 4 Out In1 pmos25_Auto_5_1 $T=6190 18115 0 0 $X=4790 $Y=17365
X3 Vdd 10 Out 6 pmos25_Auto_5_1 $T=7440 18115 1 180 $X=5790 $Y=17365
X4 Vdd Vdd 10 In2 pmos25_Auto_5_1 $T=12105 18275 1 180 $X=10455 $Y=17525
X5 Vdd Vdd 4 11 pmos25_Auto_5_1 $T=12855 18275 0 0 $X=11455 $Y=17525
X6 Gnd 8 Gnd In1 nmos25_Auto_4_1 $T=6440 15160 1 180 $X=5290 $Y=13860
X7 Gnd 9 Gnd 6 nmos25_Auto_4_1 $T=7190 15160 0 0 $X=6290 $Y=13860
X8 8 Out Gnd In2 nmos25_Auto_4_1 $T=11855 15100 0 0 $X=10955 $Y=13800
X9 9 Out Gnd 11 nmos25_Auto_4_1 $T=13105 15100 1 180 $X=11955 $Y=13800
.ENDS
***************************************
.SUBCKT INV Vdd Gnd Out In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25_Auto_5_1 $T=705 855 0 0 $X=-695 $Y=105
X1 Gnd Out Gnd In nmos25_Auto_4_1 $T=705 -2035 0 0 $X=-195 $Y=-3335
.ENDS
***************************************
.SUBCKT pmos25_Auto_16_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25_Auto_17_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT OR Vdd Gnd Out In7 In6 In5 In4 In3 In2 In1
** N=16 EP=10 IP=63 FDC=14
X0 Vdd Vdd 11 In1 pmos25_Auto_16_1 $T=-6405 19220 0 0 $X=-7805 $Y=18470
X1 Vdd 11 12 In2 pmos25_Auto_16_1 $T=-5405 19220 0 0 $X=-6805 $Y=18470
X2 Vdd 12 13 In3 pmos25_Auto_16_1 $T=-4405 19220 0 0 $X=-5805 $Y=18470
X3 Vdd 13 14 In4 pmos25_Auto_16_1 $T=-3405 19220 0 0 $X=-4805 $Y=18470
X4 Vdd 14 15 In5 pmos25_Auto_16_1 $T=-2405 19220 0 0 $X=-3805 $Y=18470
X5 Vdd 15 16 In6 pmos25_Auto_16_1 $T=-1405 19220 0 0 $X=-2805 $Y=18470
X6 Vdd 16 Out In7 pmos25_Auto_16_1 $T=-405 19220 0 0 $X=-1805 $Y=18470
X7 Gnd Out Gnd In1 nmos25_Auto_17_1 $T=-6405 11415 0 0 $X=-7305 $Y=10115
X8 Gnd Out Gnd In2 nmos25_Auto_17_1 $T=-5155 11415 1 180 $X=-6305 $Y=10115
X9 Gnd Out Gnd In3 nmos25_Auto_17_1 $T=-4405 11415 0 0 $X=-5305 $Y=10115
X10 Gnd Out Gnd In4 nmos25_Auto_17_1 $T=-3155 11415 1 180 $X=-4305 $Y=10115
X11 Gnd Out Gnd In5 nmos25_Auto_17_1 $T=-2405 11415 0 0 $X=-3305 $Y=10115
X12 Gnd Out Gnd In6 nmos25_Auto_17_1 $T=-1155 11415 1 180 $X=-2305 $Y=10115
X13 Gnd Out Gnd In7 nmos25_Auto_17_1 $T=-405 11415 0 0 $X=-1305 $Y=10115
.ENDS
***************************************
.SUBCKT pmos25x_Auto_20_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_19_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=7.5e-07 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT inverter Vdd Out Gnd In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_20_1 $T=300 265 0 0 $X=-1100 $Y=-485
X1 Gnd Out Gnd In nmos25x_Auto_19_1 $T=300 -3885 0 0 $X=-600 $Y=-5185
.ENDS
***************************************
.SUBCKT nor_2 Vdd Out Gnd A B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 6 A pmos25x_Auto_20_1 $T=4505 3955 0 0 $X=3105 $Y=3205
X1 Vdd 6 Out B pmos25x_Auto_20_1 $T=5505 3955 0 0 $X=4105 $Y=3205
X2 Gnd Out Gnd A nmos25x_Auto_19_1 $T=4505 -765 0 0 $X=3605 $Y=-2065
X3 Gnd Out Gnd B nmos25x_Auto_19_1 $T=5755 -765 1 180 $X=4605 $Y=-2065
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
.SUBCKT AND_Final Vdd Gnd Out A B
** N=7 EP=5 IP=18 FDC=6
M0 7 B 6 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=410 $Y=505 $D=1
X1 Vdd Vdd 7 A pmos25_Auto_14_1 $T=-590 3460 0 0 $X=-3040 $Y=2710
X2 Vdd Vdd 7 B pmos25_Auto_14_1 $T=660 3460 1 180 $X=-990 $Y=2710
X3 Gnd 6 Gnd A nmos25_Auto_15_1 $T=-590 505 0 0 $X=-2540 $Y=205
X4 Vdd Out Gnd 7 inverter $T=5875 4075 0 0 $X=4770 $Y=-1110
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
.SUBCKT Decode4x16 Gnd Vdd 3 4 5 6 A1 A0 A2 A3 O15 O12 O11 O10 O9 O8 O7 O6 O5 O4
+ O3 O2 O1 O0
** N=26 EP=24 IP=44 FDC=196
X0 Gnd Vdd A3 A2 6 3 4 5 Decoder_2to4 $T=-46585 74575 0 0 $X=-44120 $Y=70650
X1 Gnd Vdd A0 A1 O15 O14 O13 O12 6 Decode2x4_E $T=30755 50790 1 0 $X=18930 $Y=895
X2 Gnd Vdd A0 A1 O11 O10 O9 O8 3 Decode2x4_E $T=30755 44470 0 0 $X=18930 $Y=47320
X3 Gnd Vdd A0 A1 O7 O6 O5 O4 4 Decode2x4_E $T=30755 143800 1 0 $X=18930 $Y=93905
X4 Gnd Vdd A0 A1 O3 O2 O1 O0 5 Decode2x4_E $T=30755 138005 0 0 $X=18930 $Y=140855
.ENDS
***************************************
.SUBCKT Feistel Gnd In<4> In<7> In<6> In<5> Vdd 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ key<7> key<6> key<3> key<2> key<5> key<4> key<0> key<1> In<2> In<1> In<0> In<3> 33 34 35 F_Out<2> F_Out<1> F_Out<0> 39 F_Out<3>
** N=98 EP=40 IP=188 FDC=600
X0 Vdd Gnd 73 78 In<4> 77 key<7> XOR $T=-12115 261190 0 0 $X=-13350 $Y=274985
X1 Vdd Gnd 74 80 In<7> 79 key<6> XOR $T=-12060 275595 0 0 $X=-13295 $Y=289390
X2 Vdd Gnd 75 82 In<6> 81 key<3> XOR $T=-11835 65845 0 0 $X=-13070 $Y=79640
X3 Vdd Gnd 76 84 In<5> 83 key<2> XOR $T=-11495 79790 0 0 $X=-12730 $Y=93585
X4 Vdd Gnd 12 86 In<6> 85 key<5> XOR $T=-6760 326885 0 0 $X=-7995 $Y=340680
X5 Vdd Gnd 33 88 In<5> 87 key<4> XOR $T=-6585 337345 0 0 $X=-7820 $Y=351140
X6 Vdd Gnd 34 90 In<7> 89 key<0> XOR $T=-5960 141350 0 0 $X=-7195 $Y=155145
X7 Vdd Gnd 11 35 In<4> 91 key<1> XOR $T=-5910 132290 0 0 $X=-7145 $Y=146085
X8 Vdd Gnd F_Out<2> 93 In<2> 92 62 XOR $T=186485 334330 0 180 $X=166215 $Y=312695
X9 Vdd Gnd F_Out<1> 95 In<1> 94 63 XOR $T=186670 248090 1 180 $X=166400 $Y=261885
X10 Vdd Gnd F_Out<0> 97 In<0> 96 64 XOR $T=188480 50860 1 180 $X=168210 $Y=64655
X11 Vdd Gnd F_Out<3> 98 In<3> 39 65 XOR $T=189120 139145 0 180 $X=168850 $Y=117510
X12 Vdd Gnd 63 59 INV $T=158195 265880 0 0 $X=157500 $Y=262545
X13 Vdd Gnd 62 58 INV $T=158195 315745 1 0 $X=157500 $Y=311590
X14 Vdd Gnd 64 60 INV $T=160310 68625 0 0 $X=159615 $Y=65290
X15 Vdd Gnd 65 61 INV $T=160310 120770 1 0 $X=159615 $Y=116615
X16 Vdd Gnd 59 15 51 50 49 48 45 20 OR $T=154430 250525 0 0 $X=145800 $Y=260495
X17 Vdd Gnd 58 19 57 56 50 49 48 20 OR $T=154430 331635 1 0 $X=145800 $Y=309110
X18 Vdd Gnd 60 18 13 55 47 46 17 16 OR $T=156525 52930 0 0 $X=147895 $Y=62900
X19 Vdd Gnd 61 54 53 52 14 13 47 46 OR $T=156525 136650 1 0 $X=147895 $Y=114125
X20 Gnd Vdd 41 43 9 7 11 34 76 75 14 16 17 52 67 46 47 53 55 66
+ 54 13 68 18
+ Decode4x16 $T=64380 -2640 0 0 $X=20260 $Y=-1745
X21 Gnd Vdd 42 44 10 8 12 33 74 73 20 71 56 72 45 48 49 50 57 51
+ 69 19 15 70
+ Decode4x16 $T=64380 193410 0 0 $X=20260 $Y=194305
.ENDS
***************************************
.SUBCKT DES Gnd plain_text6 plain_text3 plain_text7 plain_text4 Vdd cipher_text6 cipher_text3 cipher_text7 cipher_text4 key<5> key<9> key<8> key<2> key<7> key<0> key<3> key<6> plain_text2 plain_text0
+ plain_text5 plain_text1 key<4> key<1> cipher_text2 cipher_text5 cipher_text1 cipher_text0
** N=63 EP=28 IP=80 FDC=1200
X0 Gnd plain_text3 plain_text6 plain_text4 plain_text7 Vdd 41 42 7 8 9 10 15 11 12 13 14 16 17 18
+ key<5> key<9> key<3> key<8> key<2> key<7> key<0> key<6> plain_text2 plain_text5 plain_text1 plain_text0 61 60 48 cipher_text3 cipher_text7 cipher_text4 52 cipher_text6
+ Feistel $T=-352135 0 0 0 $X=-369580 $Y=-1745
X1 Gnd cipher_text3 cipher_text6 cipher_text4 cipher_text7 Vdd 44 45 23 24 25 26 31 27 28 29 30 32 33 34
+ 43 key<0> key<4> key<5> key<1> key<9> key<7> key<2> plain_text4 plain_text7 plain_text3 plain_text6 63 62 key<2> cipher_text2 cipher_text5 cipher_text1 plain_text6 cipher_text0
+ Feistel $T=-102960 0 0 0 $X=-120405 $Y=-1745
.ENDS
***************************************
