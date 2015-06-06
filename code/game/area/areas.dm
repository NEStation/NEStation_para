// Areas.dm

// ===
/area
	var/global/global_uid = 0
	var/uid
	var/list/ambientsounds = list('sound/ambience/ambigen1.ogg','sound/ambience/ambigen3.ogg',\
								'sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg',\
								'sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg',\
								'sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg',\
								'sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg',\
								'sound/ambience/ambigen12.ogg','sound/ambience/ambigen14.ogg')


/area/New()
	icon_state = ""
	layer = 10
	uid = ++global_uid
	active_areas += src
	all_areas += src

	if(type == /area)	// override defaults for space. TODO: make space areas of type /area/space rather than /area
		requires_power = 1
		always_unpowered = 1
		lighting_use_dynamic = 1
		power_light = 0
		power_equip = 0
		power_environ = 0
//		lighting_state = 4
		//has_gravity = 0    // Space has gravity.  Because.. because.

	if(!requires_power)
		power_light = 0			//rastaf0
		power_equip = 0			//rastaf0
		power_environ = 0		//rastaf0

	..()

//	spawn(15)
	power_change()		// all machines set to current power level, also updates lighting icon


/area/proc/poweralert(var/state, var/obj/source as obj)
	if (state != poweralm)
		poweralm = state
		if(istype(source))	//Only report power alarms on the z-level where the source is located.
			var/list/cameras = list()
			for (var/obj/machinery/camera/C in src)
				if(!report_alerts)
					break
				cameras += C
				if(state == 1)

					C.network.Remove("Power Alarms")
				else
					C.network.Add("Power Alarms")
			for (var/mob/living/silicon/aiPlayer in player_list)
				if(!report_alerts)
					break
				if(aiPlayer.z == source.z)
					if (state == 1)
						aiPlayer.cancelAlarm("Power", src, source)
					else
						aiPlayer.triggerAlarm("Power", src, cameras, source)
			for(var/obj/machinery/computer/station_alert/a in machines)
				if(!report_alerts)
					break
				if(a.z == source.z)
					if(state == 1)
						a.cancelAlarm("Power", src, source)
					else
						a.triggerAlarm("Power", src, cameras, source)
	return

/area/proc/updateDangerLevel()
//	if(type==/area) //No atmos alarms in space
//		return 0 //redudant


	var/danger_level = 0

	// Determine what the highest DL reported by air alarms is
	for(var/obj/machinery/alarm/AA in src)
		if((AA.stat & (NOPOWER|BROKEN)) || AA.shorted || AA.buildstage != 2)
			continue
		var/reported_danger_level=AA.local_danger_level
		if(AA.alarmActivated)
			reported_danger_level=2
		if(reported_danger_level>danger_level)
			danger_level=reported_danger_level
//			testing("Danger level at [AA.name]: [AA.local_danger_level] (reported [reported_danger_level])")

//	testing("Danger level decided upon in [name]: [danger_level] (from [atmosalm])")

	// Danger level change?
	if(danger_level != atmosalm)
		// Going to danger level 2 from something else
		if (danger_level == 2)
			var/list/cameras = list()
			for(var/obj/machinery/camera/C in src)
				if(!report_alerts)
					break
				cameras += C
				C.network.Add("Atmosphere Alarms")
			for(var/mob/living/silicon/aiPlayer in player_list)
				if(!report_alerts)
					break
				aiPlayer.triggerAlarm("Atmosphere", src, cameras, src)
			for(var/obj/machinery/computer/station_alert/a in machines)
				if(!report_alerts)
					break
				a.triggerAlarm("Atmosphere", src, cameras, src)
			air_doors_activated=1
			CloseFirelocks()
		// Dropping from danger level 2.
		else if (atmosalm == 2)
			for(var/obj/machinery/camera/C in src)
				if(!report_alerts)
					break
				C.network.Remove("Atmosphere Alarms")
			for(var/mob/living/silicon/aiPlayer in player_list)
				if(!report_alerts)
					break
				aiPlayer.cancelAlarm("Atmosphere", src, src)
			for(var/obj/machinery/computer/station_alert/a in machines)
				if(!report_alerts)
					break
				a.cancelAlarm("Atmosphere", src, src)
			air_doors_activated=0
			OpenFirelocks()
		atmosalm = danger_level
		for (var/obj/machinery/alarm/AA in src)
			if ( !(AA.stat & (NOPOWER|BROKEN)) && !AA.shorted)
				AA.update_icon()
		return 1
	return 0

/area/proc/CloseFirelocks()
	for(var/obj/machinery/door/firedoor/D in all_doors)
		if(!D.blocked)
			if(D.operating)
				D.nextstate = CLOSED
			else if(!D.density)
				spawn()
					D.close()

/area/proc/OpenFirelocks()
	for(var/obj/machinery/door/firedoor/D in all_doors)
		if(!D.blocked)
			if(D.operating)
				D.nextstate = OPEN
			else if(D.density)
				spawn()
					D.open()

/area/proc/firealert()
	if(name == "Space") //no fire alarms in space
		return
	if( !fire )
		fire = 1
		updateicon()
		mouse_opacity = 0
		CloseFirelocks()
		var/list/cameras = list()
		for (var/obj/machinery/camera/C in src)
			if(!report_alerts)
				continue
			cameras.Add(C)
			C.network.Add("Fire Alarms")
		for (var/mob/living/silicon/ai/aiPlayer in player_list)
			if(!report_alerts)
				continue
			aiPlayer.triggerAlarm("Fire", src, cameras, src)
		for (var/obj/machinery/computer/station_alert/a in machines)
			if(!report_alerts)
				continue
			a.triggerAlarm("Fire", src, cameras, src)

/area/proc/firereset()
	if (fire)
		fire = 0
		mouse_opacity = 0
		updateicon()
		for (var/obj/machinery/camera/C in src)
			if(!report_alerts)
				continue
			C.network.Remove("Fire Alarms")
		for (var/mob/living/silicon/ai/aiPlayer in player_list)
			if(!report_alerts)
				continue
			aiPlayer.cancelAlarm("Fire", src, src)
		for (var/obj/machinery/computer/station_alert/a in machines)
			if(!report_alerts)
				continue
			a.cancelAlarm("Fire", src, src)
		OpenFirelocks()

/area/proc/radiation_alert()
	if(name == "Space")
		return
	if(!radalert)
		radalert = 1
		updateicon()
	return

/area/proc/reset_radiation_alert()
	if(name == "Space")
		return
	if(radalert)
		radalert = 0
		updateicon()
	return

/area/proc/readyalert()
	if(name == "Space")
		return
	if(!eject)
		eject = 1
		updateicon()
	return

/area/proc/readyreset()
	if(eject)
		eject = 0
		updateicon()
	return

/area/proc/partyalert()
	if(name == "Space") //no parties in space!!!
		return
	if (!( party ))
		party = 1
		updateicon()
		mouse_opacity = 0
	return

/area/proc/partyreset()
	if (party)
		party = 0
		mouse_opacity = 0
		updateicon()
	return

/area/proc/updateicon()
	if(radalert) // always show the radiation alert, regardless of power
		icon_state = "radiation"
		blend_mode = BLEND_MULTIPLY
	else if ((fire || eject || party) && ((!requires_power)?(!requires_power):power_environ))//If it doesn't require power, can still activate this proc.
		if(fire && !radalert && !eject && !party)
			icon_state = "red"
			blend_mode = BLEND_MULTIPLY
		/*else if(atmosalm && !fire && !eject && !party)
			icon_state = "bluenew"*/
		else if(!fire && eject && !party)
			icon_state = "red"
			blend_mode = BLEND_MULTIPLY
		else if(party && !fire && !eject)
			icon_state = "party"
			blend_mode = BLEND_MULTIPLY
		else
			icon_state = "blue-red"
			blend_mode = BLEND_MULTIPLY
	else
	//	new lighting behaviour with obj lights
		icon_state = null
		blend_mode = BLEND_DEFAULT

/area/space/updateicon()
	icon_state = null


/*
#define EQUIP 1
#define LIGHT 2
#define ENVIRON 3
*/

/area/proc/powered(var/chan)		// return true if the area has power to given channel

	if(!requires_power)
		return 1
	if(always_unpowered)
		return 0
	switch(chan)
		if(EQUIP)
			return power_equip
		if(LIGHT)
			return power_light
		if(ENVIRON)
			return power_environ

	return 0

/area/space/powered(chan) //Nope.avi
	return 0

// called when power status changes

/area/proc/power_change()
	powerupdate = 2
	for(var/obj/machinery/M in src)	// for each machine in the area
		M.power_change()				// reverify power status (to update icons etc.)
	if (fire || eject || party)
		updateicon()

/area/proc/usage(var/chan)
	var/used = 0
	switch(chan)
		if(LIGHT)
			used += used_light
		if(EQUIP)
			used += used_equip
		if(ENVIRON)
			used += used_environ
		if(TOTAL)
			used += used_light + used_equip + used_environ

	return used

/area/proc/clear_usage()

	used_equip = 0
	used_light = 0
	used_environ = 0

/area/proc/use_power(var/amount, var/chan)
	switch(chan)
		if(EQUIP)
			used_equip += amount
		if(LIGHT)
			used_light += amount
		if(ENVIRON)
			used_environ += amount

/area/proc/use_battery_power(var/amount, var/chan)
	switch(chan)
		if(EQUIP)
			used_equip += amount
		if(LIGHT)
			used_light += amount
		if(ENVIRON)
			used_environ += amount


/area/Entered(A)
	var/area/newarea
	var/area/oldarea

	if(istype(A,/mob))
		var/mob/M=A

		if(!M.lastarea)
			M.lastarea = get_area_master(M)
		newarea = get_area_master(M)
		oldarea = M.lastarea

		if(newarea==oldarea) return

		M.lastarea = src

		// /vg/ - EVENTS!
		CallHook("MobAreaChange", list("mob" = M, "new" = newarea, "old" = oldarea))

	if(!istype(A,/mob/living))	return

	var/mob/living/L = A
	if(!L.ckey)	return
	if((oldarea.has_gravity == 0) && (newarea.has_gravity == 1) && (L.m_intent == "run")) // Being ready when you change areas gives you a chance to avoid falling all together.
		thunk(L)

	// Ambience goes down here -- make sure to list each area seperately for ease of adding things in later, thanks! Note: areas adjacent to each other should have the same sounds to prevent cutoff when possible.- LastyScratch
	if(L && L.client && !L.client.ambience_playing && (L.client.prefs.sound & SOUND_BUZZ))	//split off the white noise from the rest of the ambience because of annoyance complaints - Kluys
		L.client.ambience_playing = 1
		L << sound('sound/ambience/shipambience.ogg', repeat = 1, wait = 0, volume = 35, channel = 2)
	else if (L && L.client && !(L.client.prefs.sound & SOUND_BUZZ)) L.client.ambience_playing = 0

	if(prob(35) && !newarea.media_source && L && L.client && (L.client.prefs.sound & SOUND_AMBIENCE))
		var/sound = pick(ambientsounds)

		if(!L.client.played)
			L << sound(sound, repeat = 0, wait = 0, volume = 25, channel = 1)
			L.client.played = 1
			spawn(600)			//ewww - this is very very bad
				if(L.&& L.client)
					L.client.played = 0

/area/proc/gravitychange(var/gravitystate = 0, var/area/A)
	A.has_gravity = gravitystate

	if(gravitystate)
		for(var/mob/living/carbon/human/M in A)
			thunk(M)

/area/proc/thunk(var/mob/living/carbon/human/M)
	if(istype(M,/mob/living/carbon/human/))  // Only humans can wear magboots, so we give them a chance to.
		if(istype(M.shoes, /obj/item/clothing/shoes/magboots) && (M.shoes.flags & NOSLIP))
			return

	if (M.buckled) //Cam't fall down if you are buckled
		return

	if(istype(get_turf(M), /turf/space)) // Can't fall onto nothing.
		return

	if((istype(M,/mob/living/carbon/human/)) && (M.m_intent == "run")).
		//M.AdjustStunned(5)
		//M.AdjustWeakened(5)

		if(M.stunned <= 5) M.stunned = 5
		if(M.weakened <= 5) M.weakened = 5

	else if (istype(M,/mob/living/carbon/human/))
		//M.AdjustStunned(2)
		//M.AdjustWeakened(2)

		if(M.stunned <= 2) M.stunned = 2
		if(M.weakened <= 2) M.weakened = 2


	M << "Gravity!"

/proc/has_gravity(atom/AT, turf/T)
	if(!T)
		T = get_turf(AT)
	var/area/A = get_area(T)
	if(istype(T, /turf/space)) // Turf never has gravity
		return 0
	else if(A && A.has_gravity) // Areas which always has gravity
		return 1
	else
		// There's a gravity generator on our z level
		if(T && gravity_generators["[T.z]"] && length(gravity_generators["[T.z]"]))
			return 1
	return 0