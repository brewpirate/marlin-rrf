M308 S0 P"bedtemp" Y{var.TEMP_SENSOR_BED} T100000 B4092     ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                                       ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B0 S1.00                                            ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                                     ; map heated bed to heater 0
M143 H0 S{var.BED_MAXTEMP}                                     ; set temperature limit for heater 0 to 150C


M308 S1 P"e0temp" Y{var.TEMP_SENSOR_0} T100000 B4092      ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                                    ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                                   ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S{var.HEATER_0_MAXTEMP}                                     ; set temperature limit for heater 1 to 275C
