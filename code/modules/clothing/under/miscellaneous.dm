/obj/item/clothing/under/pj/red
	name = "red pj's"
	desc = "Sleepwear."
	icon_state = "red_pyjamas"
	_color = "red_pyjamas"
	item_state = "w_suit"

/obj/item/clothing/under/pj/blue
	name = "blue pj's"
	desc = "Sleepwear."
	icon_state = "blue_pyjamas"
	_color = "blue_pyjamas"
	item_state = "w_suit"

/obj/item/clothing/under/captain_fly
	name = "rogue captains uniform"
	desc = "For the man who doesn't care because he's still free."
	icon_state = "captain_fly"
	item_state = "captain_fly"
	_color = "captain_fly"

/obj/item/clothing/under/scratch
	name = "white suit"
	desc = "A white suit, suitable for an excellent host"
	icon_state = "scratch"
	item_state = "scratch"
	_color = "scratch"

/obj/item/clothing/under/sl_suit
	desc = "It's a very amish looking suit."
	name = "amish suit"
	icon_state = "sl_suit"
	_color = "sl_suit"

/obj/item/clothing/under/waiter
	name = "waiter's outfit"
	desc = "It's a very smart uniform with a special pocket for tip."
	icon_state = "waiter"
	item_state = "waiter"
	_color = "waiter"

/obj/item/clothing/under/rank/mailman
	name = "mailman's jumpsuit"
	desc = "<i>'Special delivery!'</i>"
	icon_state = "mailman"
	item_state = "b_suit"
	_color = "mailman"

/obj/item/clothing/under/sexyclown
	name = "sexy-clown suit"
	desc = "It makes you look HONKable!"
	icon_state = "sexyclown"
	item_state = "sexyclown"
	_color = "sexyclown"

/obj/item/clothing/under/rank/vice
	name = "vice officer's jumpsuit"
	desc = "It's the standard issue pretty-boy outfit, as seen on Holo-Vision."
	icon_state = "vice"
	item_state = "gy_suit"
	_color = "vice"

/obj/item/clothing/under/rank/centcom_officer
	desc = "It's a jumpsuit worn by CentCom Officers."
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "officer"
	item_state = "g_suit"
	_color = "officer"

/obj/item/clothing/under/rank/centcom_commander
	desc = "It's a jumpsuit worn by CentCom's highest-tier Commanders."
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "centcom"
	item_state = "dg_suit"
	_color = "centcom"

/obj/item/clothing/under/rank/centcom/officer
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Lieutenant-Commander\" and bears \"N.C.V. Fearless CV-286\" on the left shounder."
	name = "\improper Nanotrasen Officers Uniform"
	icon_state = "officer"
	item_state = "g_suit"
	_color = "officer"
	displays_id = 0
	flags = ONESIZEFITSALL

/obj/item/clothing/under/rank/centcom/captain
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Captain\" and bears \"N.C.V. Fearless CV-286\" on the left shounder."
	name = "\improper Nanotrasen Captains Uniform"
	icon_state = "centcom"
	item_state = "dg_suit"
	_color = "centcom"
	displays_id = 0

/obj/item/clothing/under/rank/centcom/blueshield
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Lieutenant\" and bears \"N.S.S. Cyberiad\" on the left shounder."
	name = "\improper Nanotrasen Navy Uniform"
	icon_state = "officer"
	item_state = "g_suit"
	_color = "officer"
	displays_id = 0
	flags = ONESIZEFITSALL

/obj/item/clothing/under/rank/centcom/representative
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Ensign\" and bears \"N.S.S. Cyberiad\" on the left shounder."
	name = "\improper Nanotrasen Navy Uniform"
	icon_state = "officer"
	item_state = "g_suit"
	_color = "officer"
	displays_id = 0
	flags = ONESIZEFITSALL

/obj/item/clothing/under/rank/blueshield
	name = "blueshield uniform"
	desc = "A short-sleeved black uniform, paired with grey digital-camo cargo pants. Standard issue to Blueshield officers."
	icon_state = "ert_uniform"
	item_state = "bl_suit"
	_color = "ert_uniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/under/space
	name = "\improper NASA jumpsuit"
	desc = "It has a NASA logo on it and is made of space-proofed materials."
	icon_state = "black"
	item_state = "bl_suit"
	_color = "black"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS //Needs gloves and shoes with cold protection to be fully protected.
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = UPPER_TORSO | LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/under/acj
	name = "administrative cybernetic jumpsuit"
	icon_state = "syndicate"
	item_state = "bl_suit"
	_color = "syndicate"
	desc = "it's a cybernetically enhanced jumpsuit used for administrative duties."
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS|HEAD
	armor = list(melee = 100, bullet = 100, laser = 100,energy = 100, bomb = 100, bio = 100, rad = 100)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = UPPER_TORSO | LOWER_TORSO|LEGS|FEET|ARMS|HANDS | HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	slowdown = -10
	siemens_coefficient = 0

/obj/item/clothing/under/johnny
	name = "johnny~~ jumpsuit"
	desc = "Johnny~~"
	icon_state = "johnny"
	_color = "johnny"

/obj/item/clothing/under/rainbow
	name = "rainbow"
	desc = "rainbow"
	icon_state = "rainbow"
	item_state = "rainbow"
	_color = "rainbow"

/obj/item/clothing/under/cloud
	name = "cloud"
	desc = "cloud"
	icon_state = "cloud"
	_color = "cloud"

/obj/item/clothing/under/psysuit
	name = "dark undersuit"
	desc = "A thick, layered grey undersuit lined with power cables. Feels a little like wearing an electrical storm."
	icon_state = "psysuit"
	item_state = "psysuit"
	_color = "psysuit"

/obj/item/clothing/under/gimmick/rank/captain/suit
	name = "captain's suit"
	desc = "A green suit and yellow necktie. Exemplifies authority."
	icon_state = "green_suit"
	item_state = "dg_suit"
	_color = "green_suit"

/obj/item/clothing/under/gimmick/rank/head_of_personnel/suit
	name = "head of personnel's suit"
	desc = "A teal suit and yellow necktie. An authoritative yet tacky ensemble."
	icon_state = "teal_suit"
	item_state = "g_suit"
	_color = "teal_suit"

/obj/item/clothing/under/suit_jacket
	name = "black suit"
	desc = "A black suit and red tie. Very formal."
	icon_state = "black_suit"
	item_state = "bl_suit"
	_color = "black_suit"

/obj/item/clothing/under/suit_jacket/really_black
	name = "executive suit"
	desc = "A formal black suit and red tie, intended for the station's finest."
	icon_state = "really_black_suit"
	item_state = "bl_suit"
	_color = "black_suit"

/obj/item/clothing/under/suit_jacket/female
	name = "executive suit"
	desc = "A formal trouser suit for women, intended for the station's finest."
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	_color = "black_suit_fem"

/obj/item/clothing/under/suit_jacket/red
	name = "red suit"
	desc = "A red suit and blue tie. Somewhat formal."
	icon_state = "red_suit"
	item_state = "r_suit"
	_color = "red_suit"
	species_fit = list("Vox")
	flags = ONESIZEFITSALL

/obj/item/clothing/under/suit_jacket/navy
	name = "navy suit"
	desc = "A navy suit and red tie, intended for the station's finest."
	icon_state = "navy_suit"
	item_state = "navy_suit"
	_color = "navy_suit"

/obj/item/clothing/under/suit_jacket/tan
	name = "tan suit"
	desc = "A tan suit with a yellow tie. Smart, but casual."
	icon_state = "tan_suit"
	item_state = "tan_suit"
	_color = "tan_suit"

/obj/item/clothing/under/suit_jacket/burgundy
	name = "burgundy suit"
	desc = "A burgundy suit and black tie. Somewhat formal."
	icon_state = "burgundy_suit"
	item_state = "burgundy_suit"
	_color = "burgundy_suit"

/obj/item/clothing/under/suit_jacket/charcoal
	name = "charcoal suit"
	desc = "A charcoal suit and red tie. Very professional."
	icon_state = "charcoal_suit"
	item_state = "charcoal_suit"
	_color = "charcoal_suit"

/obj/item/clothing/under/blackskirt
	name = "black skirt"
	desc = "A black skirt, very fancy!"
	icon_state = "blackskirt"
	_color = "blackskirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/schoolgirl
	name = "schoolgirl uniform"
	desc = "It's just like one of my Japanese animes!"
	icon_state = "schoolgirl"
	item_state = "schoolgirl"
	_color = "schoolgirl"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/overalls
	name = "laborer's overalls"
	desc = "A set of durable overalls for getting the job done."
	icon_state = "overalls"
	item_state = "lb_suit"
	_color = "overalls"

/obj/item/clothing/under/pirate
	name = "pirate outfit"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	_color = "pirate"

/obj/item/clothing/under/pirate_rags
	name = "pirate rags"
	desc = "an old ragged set of clothing"
	icon_state = "piraterags"
	item_state = "piraterags"
	_color = "piraterags"

/obj/item/clothing/under/soviet
	name = "soviet uniform"
	desc = "For the Motherland!"
	icon_state = "soviet"
	item_state = "soviet"
	_color = "soviet"

/obj/item/clothing/under/redcoat
	name = "redcoat uniform"
	desc = "Looks old."
	icon_state = "redcoat"
	item_state = "redcoat"
	_color = "redcoat"

/obj/item/clothing/under/kilt
	name = "kilt"
	desc = "Includes shoes and plaid"
	icon_state = "kilt"
	item_state = "kilt"
	_color = "kilt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|FEET

/obj/item/clothing/under/sexymime
	name = "sexy mime outfit"
	desc = "The only time when you DON'T enjoy looking at someone's rack."
	icon_state = "sexymime"
	item_state = "sexymime"
	_color = "sexymime"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/gladiator
	name = "gladiator uniform"
	desc = "Are you not entertained? Is that not why you are here?"
	icon_state = "gladiator"
	item_state = "gladiator"
	_color = "gladiator"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

//dress

/obj/item/clothing/under/dress/dress_fire
	name = "flame dress"
	desc = "A small black dress with blue flames print on it."
	icon_state = "dress_fire"
	_color = "dress_fire"

/obj/item/clothing/under/dress/dress_green
	name = "green dress"
	desc = "A simple, tight fitting green dress."
	icon_state = "dress_green"
	_color = "dress_green"

/obj/item/clothing/under/dress/dress_orange
	name = "orange dress"
	desc = "A fancy orange gown for those who like to show leg."
	icon_state = "dress_orange"
	_color = "dress_orange"

/obj/item/clothing/under/dress/dress_pink
	name = "pink dress"
	desc = "A simple, tight fitting pink dress."
	icon_state = "dress_pink"
	_color = "dress_pink"

/obj/item/clothing/under/dress/dress_yellow
	name = "yellow dress"
	desc = "A flirty, little yellow dress."
	icon_state = "dress_yellow"
	_color = "dress_yellow"

/obj/item/clothing/under/dress/dress_saloon
	name = "saloon girl dress"
	desc = "A old western inspired gown for the girl who likes to drink."
	icon_state = "dress_saloon"
	_color = "dress_saloon"

/obj/item/clothing/under/dress/dress_rd
	name = "research director dress uniform"
	desc = "Feminine fashion for the style concious RD."
	icon_state = "dress_rd"
	_color = "dress_rd"

/obj/item/clothing/under/dress/dress_cap
	name = "captain dress uniform"
	desc = "Feminine fashion for the style concious captain."
	icon_state = "dress_cap"
	_color = "dress_cap"

/obj/item/clothing/under/dress/dress_hop
	name = "head of personal dress uniform"
	desc = "Feminine fashion for the style concious HoP."
	icon_state = "dress_hop"
	_color = "dress_hop"

/obj/item/clothing/under/dress/dress_hr
	name = "human resources director uniform"
	desc = "Superior class for the nosy H.R. Director."
	icon_state = "huresource"
	_color = "huresource"

/obj/item/clothing/under/dress/plaid_blue
	name = "blue plaid skirt"
	desc = "A preppy blue skirt with a white blouse."
	icon_state = "plaid_blue"
	_color = "plaid_blue"

/obj/item/clothing/under/dress/plaid_red
	name = "red plaid skirt"
	desc = "A preppy red skirt with a white blouse."
	icon_state = "plaid_red"
	_color = "plaid_red"

/obj/item/clothing/under/dress/plaid_purple
	name = "blue purple skirt"
	desc = "A preppy purple skirt with a white blouse."
	icon_state = "plaid_purple"
	_color = "plaid_purple"

//wedding stuff

/obj/item/clothing/under/wedding/bride_orange
	name = "orange wedding dress"
	desc = "A big and puffy orange dress."
	icon_state = "bride_orange"
	_color = "bride_orange"
	flags_inv = HIDESHOES

/obj/item/clothing/under/wedding/bride_purple
	name = "purple wedding dress"
	desc = "A big and puffy purple dress."
	icon_state = "bride_purple"
	_color = "bride_purple"
	flags_inv = HIDESHOES

/obj/item/clothing/under/wedding/bride_blue
	name = "blue wedding dress"
	desc = "A big and puffy blue dress."
	icon_state = "bride_blue"
	_color = "bride_blue"
	flags_inv = HIDESHOES

/obj/item/clothing/under/wedding/bride_red
	name = "red wedding dress"
	desc = "A big and puffy red dress."
	icon_state = "bride_red"
	_color = "bride_red"
	flags_inv = HIDESHOES

/obj/item/clothing/under/wedding/bride_white
	name = "orange wedding dress"
	desc = "A white wedding gown made from the finest silk."
	icon_state = "bride_white"
	_color = "bride_white"
	flags_inv = HIDESHOES

/obj/item/clothing/under/sundress
	name = "sundress"
	desc = "Makes you want to frolic in a field of daisies."
	icon_state = "sundress"
	item_state = "sundress"
	_color = "sundress"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/roman
	name = "roman armor"
	desc = "An ancient Roman armor. Made of metallic strips and leather straps."
	icon_state = "roman"
	_color = "roman"
	item_state = "armor"

/obj/item/clothing/under/maid
	name = "maid costume"
	desc = "Maid in China."
	icon_state = "meido"
	item_state = "meido"
	_color = "meido"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/janimaid
	name = "maid uniform"
	desc = "A simple maid uniform for housekeeping."
	icon_state = "janimaid"
	item_state = "janimaid"
	_color = "janimaid"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/flappers
	name = "flappers"
	desc = "Nothing like the roarin' '20s, flapping the night away on the dance floor."
	icon_state = "flapper"
	item_state = "flapper"
	_color = "flapper"

/obj/item/clothing/under/mafia
	name = "mafia outfit"
	desc = "The business of the mafia is business."
	icon_state = "mafia"
	item_state = "mafia"
	_color = "mafia"

/obj/item/clothing/under/mafia/vest
	name = "mafia vest"
	desc = "Extreme problems often require extreme solutions."
	icon_state = "mafiavest"
	item_state = "mafiavest"
	_color = "mafiavest"

/obj/item/clothing/under/mafia/white
	name = "white mafia outfit"
	desc = "The best defense against the treacherous is treachery."
	icon_state = "mafiawhite"
	item_state = "mafiawhite"
	_color = "mafiawhite"

/obj/item/clothing/under/mafia/sue
	name = "mafia vest"
	desc = "The business is born into."
	icon_state = "suevest"
	item_state = "suevest"
	_color = "suevest"

/obj/item/clothing/under/mafia/tan
	name = "leather mafia outfit"
	desc = "The big drum sounds good only from a distance."
	icon_state = "mafiatan"
	item_state = "mafiatan"
	_color = "mafiatan"


/obj/item/clothing/under/bane
	name = "Bane Harness"
	desc = "Wear this harness to become the bane of the station."
	icon_state = "bane"
	item_state = "bane"
	_color = "bane"

/obj/item/clothing/under/vox_grey
	name = "Grey Vox Jumpsuit"
	desc = "An assistant's jumpsuit ripped to better fit a vox."
	icon_state = "vgrey"
	item_state = "vgrey"
	_color = "vgrey"

/obj/item/clothing/under/vox_robotics
	name = "Vox Robotics Jumpsuit"
	desc = "A roboticist's jumpsuit ripped to better fit a vox."
	icon_state = "vrobotics"
	item_state = "vrobotics"
	_color = "vrobotics"

/obj/item/clothing/under/vox_toxins
	name = "Vox Toxins Jumpsuit"
	desc = "A Toxin Researcher's jumpsuit ripped to better fit a vox."
	icon_state = "vtoxinswhite"
	item_state = "vtoxinswhite"
	_color = "vtoxinswhite"

/obj/item/clothing/under/vox_atmos
	name = "Vox Atmos Jumpsuit"
	desc = "An Atmos Tech's jumpsuit ripped to better fit a vox."
	icon_state = "vatmos"
	item_state = "vatmos"
	_color = "vatmos"

/obj/item/clothing/under/vox_engi
	name = "Vox Engineer Jumpsuit"
	desc = "An Engineer's jumpsuit ripped to better fit a vox."
	icon_state = "vengine"
	item_state = "vengine"
	_color = "vengine"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 10)

/obj/item/clothing/under/vox_toxins
	name = "Vox Security Jumpsuit"
	desc = "A Security Uniform ripped to better fit a vox."
	icon_state = "vred"
	item_state = "vred"
	_color = "vred"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/under/vox_toxins
	name = "Vox Chemist Jumpsuit"
	desc = "A Security Uniform ripped to better fit a vox."
	icon_state = "vchem"
	item_state = "vchem"
	_color = "vchem"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/under/psyjump
	name = "Psychic Amp Jumpsuit"
	desc = "A suit made of strange materials."
	icon_state = "psyamp"
	item_state = "psyamp"
	_color = "psyamp"

/obj/item/clothing/under/rebeloutfit
	name = "Rebel Outfit"
	desc = "Made in Seattle, 2216."
	icon_state = "colin_earle"
	item_state = "colin_earle"
	_color = "colin_earle"

/obj/item/clothing/under/officeruniform
	name = "Clown Officer's Uniform"
	desc = "For Clown officers, this uniform was designed by the great clown designer Hugo Boss."
	icon_state = "officeruniform"
	_color = "officeruniform"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/soldieruniform
	name = "Clown Soldier's Uniform"
	desc = "For the basic grunt of the Clown army."
	icon_state = "soldieruniform"
	_color = "soldieruniform"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/pennywise
	name = "Pennywise Costume"
	desc = "It's everything you ever were afraid of."
	icon_state = "pennywise"
	_color = "pennywise"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/assistantformal
	name = "assistant's formal uniform"
	desc = "An assistant's formal-wear. Why an assistant needs formal-wear is still unknown."
	icon_state = "assistant_formal"
	item_state = "gy_suit"
	_color = "assistant_formal"

/obj/item/clothing/under/blacktango
	name = "black tango dress"
	desc = "Filled with Latin fire."
	icon_state = "black_tango"
	item_state = "wcoat"
	_color = "black_tango"

/obj/item/clothing/under/stripeddress
	name = "striped dress"
	desc = "Fashion in space."
	icon_state = "striped_dress"
	item_state = "stripeddress"
	_color = "striped_dress"

/obj/item/clothing/under/sailordress
	name = "sailor dress"
	desc = "Formal wear for a leading lady."
	icon_state = "sailor_dress"
	item_state = "sailordress"
	_color = "sailor_dress"

/obj/item/clothing/under/redeveninggown
	name = "red evening gown"
	desc = "Fancy dress for space bar singers."
	icon_state = "red_evening_gown"
	item_state = "redeveninggown"
	_color = "red_evening_gown"

/obj/item/clothing/under/suit_jacket/checkered
	name = "checkered suit"
	desc = "That's a very nice suit you have there. Shame if something were to happen to it, eh?"
	icon_state = "checkered_suit"
	item_state = "checkered_suit"
	_color = "checkered_suit"

/obj/item/clothing/under/owl
	name = "owl uniform"
	desc = "A soft brown jumpsuit made of synthetic feathers and strong conviction."
	icon_state = "owl"
	_color = "owl"
	flags = NODROP

/obj/item/clothing/under/griffin
	name = "griffon uniform"
	desc = "A soft brown jumpsuit with a white feather collar made of synthetic feathers and a lust for mayhem."
	icon_state = "griffin"
	_color = "griffin"
	flags = NODROP