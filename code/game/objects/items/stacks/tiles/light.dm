#define LIGHTFLOOR_ON 1
#define LIGHTFLOOR_WHITE 2
#define LIGHTFLOOR_RED 3
#define LIGHTFLOOR_GREEN 4
#define LIGHTFLOOR_YELLOW 5
#define LIGHTFLOOR_BLUE 6
#define LIGHTFLOOR_PURPLE 7

/obj/item/stack/tile/light
	name = "light tiles"
	singular_name = "light floor tile"
	desc = "A floor tile, made out off glass. Use a multitool on it to change its color."
	icon_state = "tile_light blue"
	w_class = 3.0
	force = 3.0
	throwforce = 5.0
	throw_speed = 5
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "smashed")
	var/on = 1
	var/state = LIGHTFLOOR_ON

/obj/item/stack/tile/light/proc/color_desc()
	switch(state)
		if(LIGHTFLOOR_ON) return "light blue"
		if(LIGHTFLOOR_WHITE) return "white"
		if(LIGHTFLOOR_RED) return "red"
		if(LIGHTFLOOR_GREEN) return "green"
		if(LIGHTFLOOR_YELLOW) return "yellow"
		if(LIGHTFLOOR_BLUE) return "dark blue"
		if(LIGHTFLOOR_PURPLE) return "purple"
		else return "broken"

/obj/item/stack/tile/light/attackby(var/obj/item/O as obj, var/mob/user as mob, params)
	..()
	if(istype(O,/obj/item/weapon/crowbar))
		new/obj/item/stack/sheet/metal(user.loc)
		amount--
		new/obj/item/stack/light_w(user.loc)
		if(amount <= 0)
			user.unEquip(src, 1)
			del(src)
	else if(istype(O,/obj/item/device/multitool))
		state++
		if(state>LIGHTFLOOR_PURPLE) state=LIGHTFLOOR_ON
		icon_state="tile_"+color_desc()
		user << "[src] is now "+color_desc()

	return ..()