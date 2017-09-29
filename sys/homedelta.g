G91                         ; use relative positioning
G1 S1 X300 Y300 Z300 F1200  ; move all carriages up 300mm, stopping at the endstops
G1 S2 X-5 Y-5 Z-5           ; move all towers down 5mm
G1 S1 X8 Y8 Z8 F500         ; move towers slowly up 8mm, stopping at the endstops
G1 S2 X-5 Y-5 Z-5 F1200     ; move carriages down 5mm
G90                         ; back to absolute positioning
G1 X0 Y0 F2000				      ; centre the head and set a reasonable feed rate
