; Declare base pin names for endstops
var X_MIN_PIN_BASE = "xstop"
var Y_MIN_PIN_BASE = "ystop"
var Z_MIN_PIN_BASE = "zstop"
var X_MAX_PIN_BASE = "xstop"
var Y_MAX_PIN_BASE = "ystop"
var Z_MAX_PIN_BASE = "zstop"

; X
if exists(global.USE_XMIN_PLUG)
    var X_MIN_PIN = {exists(global.X_MIN_ENDSTOP_INVERTING) ? ("!" ^ var.X_MIN_PIN_BASE) : var.X_MIN_PIN_BASE}
    M574 X1 S1 P{var.X_MIN_PIN}
if exists(global.USE_XMAX_PLUG)
    var X_MAX_PIN = {exists(global.X_MAX_ENDSTOP_INVERTING) ? ("!" ^ var.X_MAX_PIN_BASE) : var.X_MAX_PIN_BASE}
    M574 X2 S1 P{var.X_MAX_PIN}

; Y
if exists(global.USE_YMIN_PLUG)
    var Y_MIN_PIN = {exists(global.Y_MIN_ENDSTOP_INVERTING) ? ("!" ^ var.Y_MIN_PIN_BASE) : var.Y_MIN_PIN_BASE}
    M574 Y1 S1 P{var.Y_MIN_PIN}
if exists(global.USE_YMAX_PLUG)
    var Y_MAX_PIN = {exists(global.Y_MAX_ENDSTOP_INVERTING) ? ("!" ^ var.Y_MAX_PIN_BASE) : var.Y_MAX_PIN_BASE}
    M574 Y2 S1 P{var.Y_MAX_PIN}

; Z
if exists(global.USE_ZMIN_PLUG)
    var Z_MIN_PIN = {exists(global.Z_MIN_ENDSTOP_INVERTING) ? ("!" ^ var.Z_MIN_PIN_BASE) : var.Z_MIN_PIN_BASE}
    M574 Z1 S1 P{var.Z_MIN_PIN}
if exists(global.USE_ZMAX_PLUG)
    var Z_MAX_PIN = {exists(global.Z_MAX_ENDSTOP_INVERTING) ? ("!" ^ var.Z_MAX_PIN_BASE) : var.Z_MAX_PIN_BASE}
    M574 Z2 S1 P{var.Z_MAX_PIN}
