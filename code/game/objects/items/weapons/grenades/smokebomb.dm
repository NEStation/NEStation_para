/obj/item/weapon/grenade/smokebomb
	desc = "It is set to detonate in 2 seconds."
	name = "smoke bomb"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "flashbang"
	det_time = 20
	item_state = "flashbang"
	icon_override = 'icons/mob/in-hand/tools.dmi'
	slot_flags = SLOT_BELT
	var/datum/effect/effect/system/bad_smoke_spread/smoke

	New()
		..()
		src.smoke = new /datum/effect/effect/system/bad_smoke_spread
		src.smoke.attach(src)

	prime()
		playsound(src.loc, 'sound/effects/smoke.ogg', 50, 1, -3)
		src.smoke.set_up(10, 0, usr.loc)
		spawn(0)
			src.smoke.start()
			sleep(10)
			src.smoke.start()
			sleep(10)
			src.smoke.start()
			sleep(10)
			src.smoke.start()

		for(var/obj/effect/blob/B in view(8,src))
			var/damage = round(30/(get_dist(B,src)+1))
			B.health -= damage
			B.update_icon()
		sleep(80)
		del(src)
		return
