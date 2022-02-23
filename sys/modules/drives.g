M569 P0 S0                                         ; physical drive 0 goes backwards
M569 P1 S0                                         ; physical drive 1 goes backwards
M569 P2 S1                                         ; physical drive 2 goes forwards
M569 P3 S0                                         ; physical drive 3 goes backwards
M584 X0 Y1 Z2 E3                                   ; set drive mapping
M350 X16 Y16 Z16 E16 I1                            ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z400.00 E93.00                   ; set steps per mm
M566 X1200.00 Y1200.00 Z24.00 E300.00              ; set maximum instantaneous speed changes (mm/min)
M203 X9000.00 Y9000.00 Z180.00 E6000.00            ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z100.00 E5000.00              ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 E1000 I50                      ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                            ; Set idle timeout
