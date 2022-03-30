#!/bin/bash
# Uses /sys/class/thermal/thermal_zone0/temp to fetch CPU temperature
# Displays output in XX.X format. (e.g: 45.7°C) 

T=$(cat /sys/class/thermal/thermal_zone0/temp); 
echo $(( ${T:0:2} )).$(( ${10#T:2:3} ))°C
