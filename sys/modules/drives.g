M569 P0 S0                                         ; physical drive 0 goes backwards
M569 P1 S0                                         ; physical drive 1 goes backwards
M569 P2 S1                                         ; physical drive 2 goes forwards
M569 P3 S0                                         ; physical drive 3 goes backwards
M584 X0 Y1 Z2 E3                                   ; set drive mapping
M350 X{global.X_MICROSTEPS} Y{global.Y_MICROSTEPS} Z{global.Z_MICROSTEPS} E{global.E0_MICROSTEPS} I1                                ; configure microstepping with interpolation
M92 X{global.X_STEPS_PER_MM} Y{global.Y_STEPS_PER_MM} Z{global.Z_STEPS_PER_MM} E{global.E0_STEPS_PER_MM}                            ; set steps per mm
M566 X{global.X_MAX_SPEED_CHANGE} Y{global.Y_MAX_SPEED_CHANGE} Z{global.Z_MAX_SPEED_CHANGE} E{global.E0_MAX_SPEED_CHANGE}           ; set maximum instantaneous speed changes (mm/min)
M203 X{global.X_MAX_SPEED} Y{global.Y_MAX_SPEED} Z{global.Z_MAX_SPEED} E{global.E0_MAX_SPEED}                                       ; set maximum speeds (mm/min)
M201 X{global.X_ACCELERATION} Y{global.Y_ACCELERATION} Z{global.Z_ACCELERATION} E{global.E0_ACCELERATION}                           ; set accelerations (mm/s^2)
M906 X{global.X_MAX_CURRENT} Y{global.Y_MAX_CURRENT} Z{global.Z_MAX_CURRENT} E{global.E0_MAX_CURRENT} I50                           ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                                                                                                             ; Set idle timeout
