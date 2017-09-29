; General preferences
M111 S0 ; Debugging off
G21     ; Work in millimetres
G90     ; Send absolute coordinates...
M83     ; ...but relative extruder moves
M555 P1 ; Set firmware compatibility to look like RepRapFirmare

M665 L336.000 R203.432 H230.460 B125.0 X-0.198 Y-0.112 Z0.000 ; set delta radius, diagonal rod length, printable radius and homed height
M666 X0.005 Y0.204 Z-0.210 A0.00 B0.00                        ; put your endstop adjustments here, or let auto calibration find them

; Axis
M208 X0 Y0 Z0 S1       ; Set axis minimum
M208 X200 Y200 Z230 S0 ; Set axis maximum

;Endstops
M574 X2 Y2 Z2 S1 ; Define active high microswitches
M666 X0 Y0 Z0    ; Put your endstop adjustments here, or let auto calibration find them
M557 R90 S20     ; Define mesh grid

; Z probe
M558 P4 X0 Y0 Z1 I1 H30 F120 T3600 ; Set Z probe type to switch, the axes for which it is used and the probe + travel speeds
G31 P500 X45 Y-24 Z0.22            ; Set Z probe trigger value, offset and trigger height

; Drives
M569 P0 R1 ; X axis has inverted enable signal
M569 P1 R1 ; Y axis has inverted enable signal
M569 P2 R1 ; Z axis has inverted enable signal
M569 P3 R1 ; E axis has inverted enable signal

; Motors
M201 X800 Y800 Z15 E1000        ; Accelerations (mm/s^2)
M203 X7200 Y7200 Z7200 E1200    ; Set maximum speeds (mm/min)
M92 X1600 Y1600 Z1600 E3348.360 ; Set steps per mm
M566 X1200 Y1200 Z1200 E1200    ; Set maximum instantaneous speed changes (mm/min)
M84 S30                         ; Set idle timeout

; Heaters
M143 S245                                ; Set maximum heater temperature to 245C
M305 P0 T10000 B3988 C0 R4700            ; Set thermistor + ADC parameters for heater 0
M305 P1 T100000 B4725 C7.060000e-8 R4700 ; Set thermistor + ADC parameters for heater 1

; Tools
M563 P0 D0 H1   ; Define tool 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0    ; Set initial tool 0 active and standby temperatures to 0C

; Network
M552 S0 ; Disable network

; Fans
M106 P0 T60 H1 ; Hotend cooling fan: Enable to auto kick on at 60c (make it thermostatic).
M106 P1 H-1    ; Filament cooling fan: Must do H-1, or it'll turn on with P0 for some reason.
M106 P1 S0     ; Filament cooling fan: Must do, or it will go full blast on start :S

; Thermistors
M305 P0 R4700 T100000 B3950 ; set bed thermistor parameters
M305 P1 R4700 T100000 B4388 ; set E0 thermistor parameters
