; Configuration file for Duet Maestro (firmware version 3.3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.10 on Wed Feb 23 2022 07:28:14 GMT-0800 (Pacific Standard Time)

; Load Configuration
M98 P"Configuration.g"

; General preferences
G90                                                ; send absolute coordinates...
M83                                                ; ...but relative extruder moves
M550 P"Ender 3"                                    ; set printer name

; Network
M552 P0.0.0.0 S1                                   ; enable network and acquire dynamic address via DHCP
M586 P0 S1                                         ; enable HTTP
M586 P1 S0                                         ; disable FTP
M586 P2 S0                                         ; disable Telnet

; Drives
M98 P"modules/drives.g"

; Axis Limits
M208 X{global.X_MIN_POS} Y{global.Y_MIN_POS}  Z{global.Z_MIN_POS}  S1                                   ; set axis minima
M208 X{global.X_BED_SIZE} Y{global.Y_BED_SIZE} Z{global.Z_MAX_POS} S0                             ; set axis maxima

; Endstops
M98 P"modules/endstops.g"

; Z-Probe
M98 P"modules/zprobe.g"

; Heaters
M98 P"modules/thermal.g"

; Fans
M98 P"modules/fans.g"

; Tools
M98 P"modules/tools.g"

; Custom settings are not defined
; Miscellaneous
M501                                               ; load saved parameters from non-volatile memory
M911 S10 R11 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000" ; set voltage thresholds and actions to run on power loss
