#!/bin/bash



#ANTES TENÍA: !/usr/bin/env bash


icon="/usr/share/icons/Pop/32x32/emblems/emblem-default.svg"
#/usr/share/icons/Pop/32x32/categories/cs-power.svg
#"/usr/share/icons/Pop/32x32/devices/battery.svg" \
sound="/usr/share/sounds/Pop/stereo/notification/system-ready.oga"

export DISPLAY=:0.0
actual_battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
is_plugged_in=$(cat /sys/class/power_supply/AC/online)
if [ $is_plugged_in = 1 ] && [ "$actual_battery_percent" -gt 25 ]; then
	#echo $sound > /tmp/desconectar.txt
	/bin/gdbus call --session --dest org.freedesktop.Notifications \
		--object-path /org/freedesktop/Notifications \
		--method org.freedesktop.Notifications.Notify \
		"Battery Full Notification" "0"\
		$icon \
		"Battery full" \
		"The battery is <b>${actual_battery_percent}%</b> full." \
		"[]" "{}" \
		5000
	/bin/paplay $sound
	/bin/paplay $sound
fi

#gdbus call --session --dest org.freedesktop.Notifications --object-path /org/freedesktop/Notifications --method org.freedesktop.Notifications.Notify "YourAppName" "0" "Icon Path" "Notification Title" "Notification Message" "[]" "{}" 1500
