(Lilly_Kreis_100)
(T4  D=5 CR=0 - ZMIN=-3 - flat end mill)
G90 G94
G17
G21

(2D Contour1 2)
T4
S5000 M3
G54
M8
G0 X0 Y-52.5
Z15
Z5
G1 Z3 F333.3
Z-2
G2 X0 Y52.5 I0 J52.5 F1000
X0 Y-52.5 I0 J-52.5
G1 Z-3 F333.3
G2 X0 Y52.5 I0 J52.5 F1000
X0 Y-52.5 I0 J-52.5
G0 Z15
M9
M5
M30
