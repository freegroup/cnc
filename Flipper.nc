(Flipper)
(T1 D=3 CR=0 - ZMIN=-5 - Schaftfrser)
G90 G94
G17
G21
(When using Fusion for Personal Use, the feedrate of rapid)
(moves is reduced to match the feedrate of cutting moves,)
(which can increase machining time. Unrestricted rapid moves)
(are available with a Fusion Subscription.)
G28 G91 Z0
G90

(2D-Kontur1)
T1
S5000 M3
G17 G90 G94
G54
M8
G0 X88.593 Y33.078
Z15
G1 Z5 F1000
Z-3 F333.3
X88.743 Y33.222 F1000
G3 X73.186 Y48.778 I-7.778 J7.778
X88.594 Y33.077 I7.778 J-7.778
G1 X88.593 Y33.078 Z-5 F333.3
G3 X73.334 Y48.924 I-7.63 J7.923 F1000
X88.441 Y32.935 I7.63 J-7.923
G1 X88.593 Y33.078
Z15

M9
G28 G91 Z0
G90
G28 G91 X0 Y0
G90
M5
M30
