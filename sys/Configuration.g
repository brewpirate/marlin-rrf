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
;global X_MIN_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.
;global Y_MIN_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.
;global Z_MIN_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.
;global X_MAX_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.
;global Y_MAX_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.
;global Z_MAX_ENDSTOP_INVERTING = true ; Set to true to invert the logic of the endstop.


;===========================================================================
;============================= Mechanical Settings =========================
;===========================================================================


;=============================================================================
;============================== Movement Settings ============================
;=============================================================================

;#define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 500 }
;#define DEFAULT_MAX_FEEDRATE          { 300, 300, 5, 25 }
;#define MAX_FEEDRATE_EDIT_VALUES    { 600, 600, 10, 50 } 
;#define DEFAULT_MAX_ACCELERATION      { 3000, 3000, 100, 10000 }
; X Axis
; ---------------------
global X_MAX_CURRENT = 800
global X_MICROSTEPS = 16
global X_STEPS_PER_MM = 80.00
global X_MAX_SPEED = 9000.00
global X_MAX_SPEED_CHANGE = 1200.00
global X_ACCELERATION = 500.00

global INVERT_X_DIR = false

; Y Axis
; ---------------------
global Y_MAX_CURRENT = 800
global Y_MICROSTEPS = 16
global Y_STEPS_PER_MM = 80.00
global Y_MAX_SPEED = 9000.00
global Y_MAX_SPEED_CHANGE = 1200.00
global Y_ACCELERATION = 500.00

; Z Axis
; ---------------------
global Z_MAX_CURRENT = 800
global Z_MICROSTEPS = 16
global Z_STEPS_PER_MM = 400.00
global Z_MAX_SPEED = 180.00
global Z_MAX_SPEED_CHANGE = 24.00
global Z_ACCELERATION = 100.00

; Extruder
; ---------------------
global E0_MAX_CURRENT = 800
global E0_MICROSTEPS = 16
global E0_STEPS_PER_MM = 93.00
global E0_MAX_SPEED = 6000.00 
global E0_MAX_SPEED_CHANGE = 300.00  
global E0_ACCELERATION = 5000.00 
#define INVERT_E0_DIR false

  #define DEFAULT_XJERK 10.0
  #define DEFAULT_YJERK 10.0
  #define DEFAULT_ZJERK  0.3


  //===========================================================================
//============================= Z Probe Options =============================
//===========================================================================

/**
 * Probe Type
 *
 * Allen Key Probes, Servo Probes, Z-Sled Probes, FIX_MOUNTED_PROBE, etc.
 * Activate one of these to use Auto Bed Leveling below.
 */
/**
 * The BLTouch probe uses a Hall effect sensor and emulates a servo.
 */
//#define BLTOUCH

/**
 * Nozzle-to-Probe offsets { X, Y, Z }
 *
 * X and Y offset
 *   Use a caliper or ruler to measure the distance from the tip of
 *   the Nozzle to the center-point of the Probe in the X and Y axes.
 *
 * Z offset
 * - For the Z offset use your best known value and adjust at runtime.
 * - Common probes trigger below the nozzle and have negative values for Z offset.
 * - Probes triggering above the nozzle height are uncommon but do exist. When using
 *   probes such as this, carefully set Z_CLEARANCE_DEPLOY_PROBE and Z_CLEARANCE_BETWEEN_PROBES
 *   to avoid collisions during probing.
 *
 * Tune and Adjust
 * -  Probe Offsets can be tuned at runtime with 'M851', LCD menus, babystepping, etc.
 * -  PROBE_OFFSET_WIZARD (configuration_adv.h) can be used for setting the Z offset.
 *
 * Assuming the typical work area orientation:
 *  - Probe to RIGHT of the Nozzle has a Positive X offset
 *  - Probe to LEFT  of the Nozzle has a Negative X offset
 *  - Probe in BACK  of the Nozzle has a Positive Y offset
 *  - Probe in FRONT of the Nozzle has a Negative Y offset
 *
 * Some examples:
 *   #define NOZZLE_TO_PROBE_OFFSET { 10, 10, -1 }   // Example "1"
 *   #define NOZZLE_TO_PROBE_OFFSET {-10,  5, -1 }   // Example "2"
 *   #define NOZZLE_TO_PROBE_OFFSET {  5, -5, -1 }   // Example "3"
 *   #define NOZZLE_TO_PROBE_OFFSET {-15,-10, -1 }   // Example "4"
 *
 *     +-- BACK ---+
 *     |    [+]    |
 *   L |        1  | R <-- Example "1" (right+,  back+)
 *   E |  2        | I <-- Example "2" ( left-,  back+)
 *   F |[-]  N  [+]| G <-- Nozzle
 *   T |       3   | H <-- Example "3" (right+, front-)
 *     | 4         | T <-- Example "4" ( left-, front-)
 *     |    [-]    |
 *     O-- FRONT --+
 */
#define NOZZLE_TO_PROBE_OFFSET { 10, 10, 0 }

// Most probes should stay away from the edges of the bed, but
// with NOZZLE_AS_PROBE this can be negative for a wider probing area.
#define PROBING_MARGIN 10

// X and Y axis travel speed (mm/min) between probes
#define XY_PROBE_FEEDRATE (133*60)

// Feedrate (mm/min) for the first approach when double-probing (MULTIPLE_PROBING == 2)
#define Z_PROBE_FEEDRATE_FAST (4*60)

// Feedrate (mm/min) for the "accurate" probe of each point
#define Z_PROBE_FEEDRATE_SLOW (Z_PROBE_FEEDRATE_FAST / 2)


// The size of the printable area
global X_BED_SIZE = 235
global Y_BED_SIZE = 235

// Travel limits (mm) after homing, corresponding to endstop positions.
global X_MIN_POS = 0
global Y_MIN_POS = 0
global Z_MIN_POS = 0
global Z_MAX_POS = 260


