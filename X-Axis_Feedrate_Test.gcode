; ### Speed testing gcode ###
; Version: 1.0
; Author DDecoene
;
;
; This code will start slow and ramp up the speed on the Y axis travel_accel
; Each 'round' will pauze for 10 seconds.
; If your printer is unable to follow, cancel the print.
; The previous settings will remain saved in EEPROM



G28 ; Move toolhead to origin (or home X, Y, Z)
G92 E0.0 ; Reset the extruder position to 0mm
G1 Y100 Z0.5 ; Move hotend nozzle to Z position of 0.2mm
G90 ; Set to absolute positioning as opposed to relative

; ### Test X feedrate settings

M201 X3000.00; Maximum Acceleration (units/s2)
M204 P50.00 T50.00; Acceleration (units/s2): P<print_accel> R<retract_accel> T<travel_accel>

; Round 1
M203 X5.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 2
M203 X10.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 3
M203 X15.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 4
M203 X20.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 5
M203 X25.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 6
M203 X30.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 7
M203 X35.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 8
M203 X40.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 9
M203 X45.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom

; Round 10
M203 X50.00 ; Maximum feedrates (units/s)
G1 X200; move 200mm
G1 X0; move back to starting point
M0 S10; Pauze 10 secs
M503; save current settings to eeprom
