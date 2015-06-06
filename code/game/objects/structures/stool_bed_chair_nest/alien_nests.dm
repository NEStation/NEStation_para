//Alium nests. Essentially beds with an unbuckle delay that only aliums can buckle mobs to.
#define NEST_RESIST_TIME 1200

/obj/structure/stool/bed/nest
	name = "alien nest"
	desc = "It's a gruesome pile of thick, sticky resin shaped like a nest."
	icon = 'icons/mob/alien.dmi'
	icon_state = "nest"
	var/health = 100

/obj/structure/stool/bed/nest/manual_unbuckle(mob/user as mob)
	if(buckled_mob)
		if(buckled_mob.buckled == src)
			if(buckled_mob != user)
				buckled_mob.visible_message(\
					"<span class='notice'>[user.name] pulls [buckled_mob.name] free from the sticky nest!</span>",\
					"<span class='notice'>[user.name] pulls you free from the gelatinous resin.</span>",\
					"<span class='notice'>You hear squelching...</span>")
				buckled_mob.pixel_y = 0
				unbuckle()
			else
				if(world.time <= buckled_mob.last_special+NEST_RESIST_TIME)
					return
				buckled_mob.visible_message(\
					"<span class='warning'>[buckled_mob.name] struggles to break free of the gelatinous resin...</span>",\
					"<span class='warning'>You struggle to break free from the gelatinous resin... (This will take around 2 minutes and you need to stay still)</span>",\
					"<span class='notice'>You hear squelching...</span>")
				spawn(NEST_RESIST_TIME)
					if(user && buckled_mob && user.buckled == src)
						buckled_mob.last_special = world.time
						buckled_mob.pixel_y = 0
						unbuckle()
			src.add_fingerprint(user)
	return

/obj/structure/stool/bed/nest/buckle_mob(mob/M as mob, mob/user as mob)
	if ( !ismob(M) || (get_dist(src, user) > 1) || (M.loc != src.loc) || user.restrained() || usr.stat || M.buckled || istype(user, /mob/living/silicon/pai) )
		return

	if(istype(M,/mob/living/carbon/alien))
		return
	if(!istype(user,/mob/living/carbon/alien/humanoid))
		return

	unbuckle()

	if(M == usr)
		return
	else
		M.visible_message(\
			"<span class='notice'>[user.name] secretes a thick vile goo, securing [M.name] into [src]!</span>",\
			"<span class='warning'>[user.name] drenches you in a foul-smelling resin, trapping you in the [src]!</span>",\
			"<span class='notice'>You hear squelching...</span>")
	M.buckled = src
	M.loc = src.loc
	M.dir = src.dir
	M.update_canmove()
	M.pixel_y += 1
	M.pixel_x += 2
	M.anchored = anchored
	src.buckled_mob = M
	src.add_fingerprint(user)
	src.overlays += image('icons/mob/alien.dmi', "nestoverlay", layer=6)
	return

/obj/structure/stool/bed/nest/unbuckle()
	if(buckled_mob)
		buckled_mob.pixel_y -= 1
		buckled_mob.pixel_x -= 2
	overlays.Cut()
	..()

/obj/structure/stool/bed/nest/attackby(obj/item/weapon/W as obj, mob/user as mob, params)
	var/aforce = W.force
	health = max(0, health - aforce)
	playsound(loc, 'sound/effects/attackblob.ogg', 100, 1)
	visible_message("<span class='warning'>[user] hits [src] with [W]!</span>", 1)
	healthcheck()

/obj/structure/stool/bed/nest/proc/healthcheck()
	if(health <=0)
		density = 0
		del(src)
	return