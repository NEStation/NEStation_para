/obj/item/weapon/grenade/empgrenade
	name = "classic emp grenade"
	icon_state = "emp"
	item_state = "emp"
	icon_override = 'icons/mob/in-hand/tools.dmi'
	origin_tech = "materials=2;magnets=3"

	prime()
		..()
		if(empulse(src, 4, 10))
			del(src)
		return

