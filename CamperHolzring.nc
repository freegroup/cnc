(CamperHolzring)
(T4 D=5 CR=0 - ZMIN=-20 - flat end mill)
G90 G94
G17
G21
(-Attention- Property Safe Retracts is set to Clearance Height.)
(Ensure the clearance height will clear the part and or fixtures.)
(Raise the Z-axis to a safe height before starting the program.)

(2D Contour1)
T4
S5000 M3
G17 G90 G94
G54
M8
G0 X40 Y0
Z15
G0 Z5
G1 Z4 F333.3
Z-3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-6 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-9 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-12 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-15 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-18 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G1 Z-20 F333.3
G3 X-40 Y0 I-40 J0 F1000
X40 Y0 I40 J0
G0 Z15

(2D Contour1 2)
G0 X0 Y-54
Z15
Z5
G1 Z4 F333.3
Z-3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-6 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-9 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-12 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-15 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-18 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G1 Z-20 F333.3
G2 X0 Y54 I0 J54 F1000
X0 Y-54 I0 J-54
G0 Z15
M9
M5
M30