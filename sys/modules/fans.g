M950 F0 C"fan0" Q500                               ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                     ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                               ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T45                                  ; set fan 1 value. Thermostatic control is turned on
M950 F2 C"fan2" Q500                               ; create fan 2 on pin fan2 and set its frequency
M106 P2 S1 H1:0 T45                                ; set fan 2 value. Thermostatic control is turned on
