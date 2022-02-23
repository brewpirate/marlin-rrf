M950 S0 C"zprobe.mod"                              ; create servo pin 0 for BLTouch
M558 P9 C"^zprobe.in" H5 F120 T6000                ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X0 Y0 Z2.5                                ; set Z probe trigger value, offset and trigger height
M557 X15:215 Y15:195 S20                           ; define mesh grid