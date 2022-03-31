#!/bin/bash
# Uses /sys/class/thermal/thermal_zone0/temp to fetch CPU temperature
# Displays output in XX format. (e.g: 45°C) 

T=$(cat /sys/class/thermal/thermal_zone0/temp); 
echo $(( ${T:0:2} ))°C
