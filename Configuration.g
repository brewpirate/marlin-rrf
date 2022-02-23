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

set global.TEMP_SENSOR_0 = thermistor
set global.TEMP_SENSOR_BED = thermistor

set global.HEATER_0_MAXTEMP = 275
set global.BED_MAXTEMP = 150


; PID Hotend
; ---------------------
;set global.PIDTEMP = true
;set global.BANG_MAX 255 
;set global.PID_K1 0.95 
;set global.DEFAULT_Kp_LIST {  22.20,  22.20 }
;set global.DEFAULT_Ki_LIST {   1.08,   1.08 }
;set global.DEFAULT_Kd_LIST { 114.00, 114.00 }

; PID Bed Heating
; ---------------------
;set global.PIDTEMPBED
;set global.MAX_BED_POWER 255
;set global.DEFAULT_bedKp 10.00
;set global.DEFAULT_bedKi .023
;set global.DEFAULT_bedKd 305.4

;===========================================================================
;============================== Endstop Settings ===========================
;===========================================================================
; Specify here all the endstop connectors that are connected to any endstop or probe.
; Almost all printers will be using one per axis. Probes will use one or more of the
; extra connectors. Leave undefined any used for non-endstop and non-probe purposes.
;set global.USE_XMIN_PLUG
;set global.USE_YMIN_PLUG
;set global.USE_ZMIN_PLUG
;set global.USE_XMAX_PLUG
;set global.USE_YMAX_PLUG
;set global.USE_ZMAX_PLUG

; Mechanical endstop with COM to ground and NC to Signal uses "false" here (most common setup).
;set global.X_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
;set global.Y_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
;set global.Z_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
;set global.X_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
;set global.Y_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
;set global.Z_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.