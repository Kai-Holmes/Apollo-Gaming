/datum/alarm_handler/power
	category = NETWORK_ALARM_POWER

/datum/alarm_handler/power/on_alarm_change(var/datum/alarm/alarm, var/was_raised)
	var/area/A = alarm.origin
	if(isarea(A))
		A.power_alert(was_raised)
	..()

/area/proc/power_alert(var/alarming)
