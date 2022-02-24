;===========================================================================
;============================= Thermal Settings ============================
;===========================================================================
; @see https://duet3d.dozuki.com/Wiki/M308
;
; Options
; ---------------------
; thermistor
; pt1000
; rtd-max31865
; thermocouple-max31855
; thermocouple-max31856
; linear-analog
; dht21
; dht22
; dhthumidity
; current-loop-pyro
; drivers
; mcu-temp
; drivers-duex

global TEMP_SENSOR_0 = "thermistor"
global TEMP_SENSOR_BED = "thermistor"

global HEATER_0_MAXTEMP = 275
global BED_MAXTEMP = 150


; PID Hotend
; ---------------------
;global PIDTEMP = true
;global BANG_MAX 255 
;global PID_K1 0.95 
;global DEFAULT_Kp_LIST {  22.20,  22.20 }
;global DEFAULT_Ki_LIST {   1.08,   1.08 }
;global DEFAULT_Kd_LIST { 114.00, 114.00 }

; PID Bed Heating
; ---------------------
;global PIDTEMPBED
;global MAX_BED_POWER 255
;global DEFAULT_bedKp 10.00
;global DEFAULT_bedKi .023
;global DEFAULT_bedKd 305.4

;===========================================================================
;============================== Endstop Settings ===========================
;===========================================================================
; Specify here all the endstop connectors that are connected to any endstop or probe.
; Almost all printers will be using one per axis. Probes will use one or more of the
; extra connectors. Leave undefined any used for non-endstop and non-probe purposes.
global USE_XMIN_PLUG = true
global USE_YMIN_PLUG = true
global USE_ZMIN_PLUG = true
;global USE_XMAX_PLUG = true
;global SE_YMAX_PLUG = true
;global USE_ZMAX_PLUG = true

; Mechanical endstop with COM to ground and NC to Signal uses "false" here (most common setup).
;global X_MIN_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.
;global Y_MIN_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.
;global Z_MIN_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.
;global X_MAX_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.
;global Y_MAX_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.
;global Z_MAX_ENDSTOP_INVERTING = true // Set to true to invert the logic of the endstop.