//Base pistol for inheritance/
//--------------------------------------------------

/obj/item/weapon/gun/pistol
	icon_state = "" //Defaults to revolver pistol when there's no sprite.
	fire_sound = 'sound/weapons/guns/fire/pistol.ogg'
	unload_sound = 'sound/weapons/guns/interact/pistol_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/pistol_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/pistol_cocked.ogg'
	muzzleflash_iconstate = "muzzle_flash_light"
	load_method = MAGAZINE //codex
	flags_equip_slot = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	force = 6
	movement_acc_penalty_mult = 0
	wield_delay = 0.2 SECONDS //If you modify your pistol to be two-handed, it will still be fast to aim
	type_of_casings = "bullet"
	gun_skill_category = GUN_SKILL_PISTOLS
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/gyro,
		/obj/item/attachable/burstfire_assembly,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER

/obj/item/weapon/gun/pistol/unique_action(mob/user)
	return cock(user)

/obj/item/weapon/gun/pistol/get_ammo_type()
	if(!ammo)
		return list("unknown", "unknown")
	else
		return list(ammo.hud_state, ammo.hud_state_empty)

/obj/item/weapon/gun/pistol/get_ammo_count()
	if(!current_mag)
		return in_chamber ? 1 : 0
	else
		return in_chamber ? (current_mag.current_rounds + 1) : current_mag.current_rounds

//-------------------------------------------------------
//TP-14 PISTOL

/obj/item/weapon/gun/pistol/standard_pistol
	name = "\improper TP-14 pistol"
	desc = "The TP-14, produced by Terran Armories. A reliable sidearm that loads 9x19mm Parabellum Auto munitions. Capable of mounting a limited amount of attachments, and firing at a respectable rate of fire, often as fast as you can pull the trigger. Takes 14-round 9mm magazines."
	icon_state = "tp14"
	item_state = "tp14"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 14 //codex
	fire_sound = 'sound/weapons/guns/fire/tp14.ogg'
	reload_sound = 'sound/weapons/guns/interact/tp14_reload.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/standard_pistol

	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 20,"rail_x" = 13, "rail_y" = 23, "under_x" = 19, "under_y" = 13, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.125 SECONDS
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.95
	scatter = -5
	scatter_unwielded = 10

//-------------------------------------------------------
//RT-3 pistol

/obj/item/weapon/gun/pistol/rt3
	name = "\improper RT-3 target pistol"
	desc = "An RT-3 target pistol, a common sight throughout the bubble. Fires 9mm in magazines."
	icon_state = "rt3"
	item_state = "rt3"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 14 //codex
	fire_sound = 'sound/weapons/guns/fire/pistol_service.ogg'
	current_mag = /obj/item/ammo_magazine/pistol

	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 19,"rail_x" = 19, "rail_y" = 21, "under_x" = 21, "under_y" = 15, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.2 SECONDS
	accuracy_mult = 1.15
	scatter = 10

//-------------------------------------------------------
// TP-23 service pistol

/obj/item/weapon/gun/pistol/standard_heavypistol
	name = "\improper TP-23 service pistol"
	desc = "A standard TP-23 chambered in .45 ACP. Has a smaller magazine capacity, but packs a better punch. Has an irremovable laser sight. Uses .45 magazines."
	icon_state = "tp23"
	item_state = "tp23"
	caliber = ".45 ACP" //codex
	max_shells = 11 //codex
	fire_sound = 'sound/weapons/guns/fire/tp23.ogg'
	unload_sound = 'sound/weapons/guns/interact/colt_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/colt_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/colt_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/standard_heavypistol
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.2 SECONDS
	accuracy_mult = 1.20 //Has a forced laser sight.
	accuracy_mult_unwielded = 0.95
	recoil_unwielded = 1

//-------------------------------------------------------
//M1911

/obj/item/weapon/gun/pistol/m1911
	name = "\improper M1911 service pistol"
	desc = "A M1911 chambered in .45 ACP. An archaic weapon, yet its popular and extremely reliable mechanism provided a template for many semi-automatic pistols to come."
	icon_state = "m1911"
	item_state = "m1911"
	caliber = ".45 ACP" //codex
	max_shells = 10 //codex
	fire_sound = 'sound/weapons/guns/fire/colt.ogg'
	unload_sound = 'sound/weapons/guns/interact/colt_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/colt_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/colt_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m1911
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 21,"rail_x" = 17, "rail_y" = 22, "under_x" = 21, "under_y" = 15, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.2 SECONDS
	accuracy_mult = 1.05
	accuracy_mult_unwielded = 0.85
	damage_mult = 1.15
	recoil_unwielded = 2

/obj/item/weapon/gun/pistol/m1911/custom
	name = "\improper M1911A1 custom pistol"
	desc = "A 20th century military firearm that received several modifications. It seems to have been lovingly taken care of and passed down the family. Lacks an auto magazine eject feature."
	icon_state = "m1911c"
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/quickfire,
	)
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 12, "rail_y" = 22, "under_x" = 21, "under_y" = 15, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.15 SECONDS

//-------------------------------------------------------
//Beretta 92FS, the gun McClane carries around in Die Hard. Very similar to the service pistol, all around.

/obj/item/weapon/gun/pistol/b92fs
	name = "\improper Beretta 92FS pistol"
	desc = "A popular police firearm in the 20th century, often employed by hardboiled cops while confronting terrorists. A classic of its time, chambered in 9x19mm."
	icon_state = "b92fs"
	item_state = "b92fs"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 15 //codex
	fire_sound = 'sound/weapons/guns/fire/beretta.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/beretta_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/beretta_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/beretta_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/beretta_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/b92fs
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)

	fire_delay = 0.2 SECONDS

/obj/item/weapon/gun/pistol/b92fs/raffica
	name = "\improper Beretta 93R pistol"
	desc = "A variant of a classic pistol, modified to allow for bursts. It is fitted with a vertical foregrip at the front end of the trigger guard to provide better stability when firing."
	icon_state = "b93r"
	item_state = "b93r"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 20 //codex
	current_mag = /obj/item/ammo_magazine/pistol/b93r
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 21, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/quickfire,
	)

	fire_delay = 0.2 SECONDS
	burst_amount = 3
	accuracy_mult = 1.15
	scatter_unwielded = 25
	aim_slowdown = 0.2

/obj/item/weapon/gun/pistol/b92fs/M9
	name = "\improper M9 custom pistol"
	desc = "A 20th century military firearm customized for special forces use, fires tranq darts to take down enemies nonlethally. It does not seem to accept any other attachments."
	icon_state = "b92fs"
	item_state = "b92fs"
	caliber = "9x19mm tranquilizer" //codex
	max_shells = 12 //codex
	current_mag =/obj/item/ammo_magazine/pistol/b92fstranq
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 21, "under_x" = 21, "under_y" = 15, "stock_x" = 21, "stock_y" = 17)
	starting_attachment_types = list(
		/obj/item/attachable/lasersight,
		/obj/item/attachable/suppressor,
	)

	fire_delay = 0.6 SECONDS
	accuracy_mult = 1.2
	accuracy_mult_unwielded = 1.15
	damage_mult = 0.5


//-------------------------------------------------------
//DEAGLE //Deagle Brand Deagle

/obj/item/weapon/gun/pistol/heavy
	name = "\improper Desert Eagle pistol"
	desc = "A magnum chambered in .50AE that comes with a serious kick. This one is engraved, <i>\"Peace through superior firepower\"</i>."
	icon_state = "deagle"
	item_state = "deagle"
	caliber = ".50 Action Express" //codex
	muzzleflash_iconstate = "muzzle_flash_medium"
	max_shells = 7 //codex
	fire_sound = 'sound/weapons/guns/fire/deagle.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/deagle_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/deagle_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/deagle_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/deagle_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/heavy
	force = 13
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/quickfire,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/compensator,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 19,"rail_x" = 9, "rail_y" = 23, "under_x" = 22, "under_y" = 14, "stock_x" = 20, "stock_y" = 17)

	fire_delay = 0.7 SECONDS
	scatter_unwielded = 25
	damage_mult = 1.2
	recoil = 2
	recoil_unwielded = 4

/obj/item/weapon/gun/pistol/heavy/gold
	name = "\improper Desert Eagle custom pistol"
	desc = "A magnum chambered in .50AE that comes with a serious kick. This one is in a gold finish, with lots of stylistic engravings."
	icon_state = "g_deagle"
	item_state = "g_deagle"
//-------------------------------------------------------
//MAUSER MERC PISTOL //Inspired by the Makarov.

/obj/item/weapon/gun/pistol/c99
	name = "\improper Korovin PK-9 pistol"
	desc = "An updated variant of an old eastern design, dating back to from the 20th century. Features an integrated silencer, and chambered in the razor small .22 rounds. This one is loaded with the more common .22 hollowpoint rounds and appears to be a mercenary version."
	icon_state = "pk9"
	item_state = "pk9"
	caliber = ".22 LR" //codex
	max_shells = 12 //codex
	fire_sound = 'sound/weapons/guns/fire/pistol_holdout.ogg' // Never heard in-game sadly.
	unload_sound = 'sound/weapons/guns/interact/c99_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/c99_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/c99_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/c99
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/quickfire,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/burstfire_assembly,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 19,"rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 18, "stock_x" = 21, "stock_y" = 18)
	//Making the gun have an invisible silencer since it's supposed to have one.
	starting_attachment_types = list(/obj/item/attachable/suppressor/unremovable/invisible)

	fire_delay = 0.175 SECONDS
	accuracy_mult = 1.65
	accuracy_mult_unwielded = 1.5
	scatter = 5
	scatter_unwielded = 10
	damage_mult = 1.3
	aim_slowdown = 0.1

/obj/item/weapon/gun/pistol/c99/russian
	icon_state = "pk9r"
	item_state = "pk9r"

/obj/item/weapon/gun/pistol/c99/upp
	desc = "An updated variant of an old eastern design, dating back to from the 20th century. Features an integrated silencer, and chambered in the razor small .22 rounds. This one is loaded with the more common .22 hollowpoint rounds and appears to be a USL model."
	icon_state = "pk9u"
	item_state = "pk9u"

/obj/item/weapon/gun/pistol/c99/upp/tranq
	desc = "An updated variant of an old eastern design, dating back to from the 20th century. Features an integrated silencer, and chambered in the razor small .22 rounds. This one is usually loaded with special low-recoil .22 dart rounds, which act as a dangerous tranquilizer."
	current_mag = /obj/item/ammo_magazine/pistol/c99t

//-------------------------------------------------------
//PIZZACHIMP PROTECTION

/obj/item/weapon/gun/pistol/holdout
	name = "holdout pistol"
	desc = "A tiny pistol meant for hiding in hard-to-reach areas. Best not ask where it came from."
	icon_state = "holdout"
	item_state = "holdout"
	caliber = ".22 LR" //codex
	max_shells = 5 //codex
	fire_sound = 'sound/weapons/guns/fire/pistol_holdout.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/holdout
	w_class = WEIGHT_CLASS_TINY
	force = 2
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/quickfire,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/burstfire_assembly,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 25, "muzzle_y" = 20,"rail_x" = 12, "rail_y" = 22, "under_x" = 17, "under_y" = 15, "stock_x" = 22, "stock_y" = 17)

	fire_delay = 0.15 SECONDS

//-------------------------------------------------------
//TP-17 Pocket pistol. Based on a PMM.

/obj/item/weapon/gun/pistol/standard_pocketpistol
	name = "\improper TP-17 pocket pistol"
	desc = "A tiny pistol used by the TGMC as an emergency handgun meant to be stored about anywhere. Fits in boots. Uses .380 ACP stored in an eight round magazine."
	icon_state = "tp17"
	item_state = "tp17"
	caliber = ".380 ACP" //codex
	max_shells = 8 //codex
	fire_sound = 'sound/weapons/guns/fire/pistol_holdout.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/standard_pocketpistol
	w_class = WEIGHT_CLASS_TINY
	force = 5
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 21, "rail_y" = 13, "under_x" = 17, "under_y" = 15, "stock_x" = 22, "stock_y" = 17)

	fire_delay = 0.125 SECONDS
	recoil = -2
	recoil_unwielded = -2
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 1
	scatter = -10
	scatter_unwielded = -5


//-------------------------------------------------------
//.45 MARSHALS PISTOL //Inspired by the Browning Hipower

/obj/item/weapon/gun/pistol/highpower
	name = "\improper Highpower automag"
	desc = "A Colonial Marshals issued, powerful semi-automatic pistol chambered in armor piercing 9mm caliber rounds. Used for centuries by law enforcement and criminals alike, recently recreated with this new model."
	icon_state = "highpower"
	item_state = "highpower"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 13 //codex
	fire_sound = 'sound/weapons/guns/fire/hp.ogg'
	unload_sound = 'sound/weapons/guns/interact/hp_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/hp_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/hp_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/highpower
	force = 10
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 27, "muzzle_y" = 20,"rail_x" = 8, "rail_y" = 22, "under_x" = 18, "under_y" = 15, "stock_x" = 16, "stock_y" = 15)

	fire_delay = 1 SECONDS
	damage_mult = 1.5
	recoil = 2
	recoil_unwielded = 3
	accuracy_mult = 1.5
	scatter = 10

//-------------------------------------------------------
//VP70

/obj/item/weapon/gun/pistol/vp70
	name = "\improper 88 Mod 4 combat pistol"
	desc = "An uncommon automatic handgun used for self defense, based on the original VP70 more than a century ago. Fires 9mm armor piercing rounds and is capable of 3-round burst or automatic fire."
	icon_state = "88m4"
	item_state = "88m4"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 18 //codex
	fire_sound = 'sound/weapons/guns/fire/vp70.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/vp70_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/vp70_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/vp70_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/vp70_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/vp70
	force = 8
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/burstfire_assembly,
	)

	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 22,"rail_x" = 19, "rail_y" = 23, "under_x" = 21, "under_y" = 16, "stock_x" = 11, "stock_y" = 10)

	fire_delay = 0.25 SECONDS
	burst_amount = 3
	accuracy_mult = 1.2
	accuracy_mult_unwielded = 0.95
	recoil_unwielded = 2
	aim_slowdown = 0.2
	scatter = 5


//-------------------------------------------------------
//VP78

/obj/item/weapon/gun/pistol/vp78
	name = "\improper VP78 combat pistol"
	desc = "A massive, formidable automatic handgun chambered in 9mm squash-head rounds. Commonly seen in the hands of wealthy Nanotrasen members."
	icon_state = "vp78"
	item_state = "vp78"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 18 //codex
	fire_sound = 'sound/weapons/guns/fire/pistol_large.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/vp70_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/vp70_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/vp70_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/vp70_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/vp78
	force = 8
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 21,"rail_x" = 9, "rail_y" = 24, "under_x" = 23, "under_y" = 13, "stock_x" = 23, "stock_y" = 13)

	fire_delay = 0.3 SECONDS
	burst_amount = 3
	burst_delay = 0.3 SECONDS
	accuracy_mult = 1.15
	accuracy_mult_unwielded = 0.85
	recoil_unwielded = 3

//-------------------------------------------------------
/*
Auto 9 The gun RoboCop uses. A better version of the VP78, with more rounds per magazine. Probably the best pistol around, but takes no attachments.
It is a modified Beretta 93R, and can fire three round burst or single fire. Whether or not anyone else aside RoboCop can use it is not established.
*/

/obj/item/weapon/gun/pistol/auto9
	name = "\improper Auto-9 pistol"
	desc = "An advanced, select-fire machine pistol capable of three round burst. Last seen cleaning up the mean streets of Detroit."
	icon_state = "auto9"
	item_state = "auto9"
	caliber = "9x19mm Parabellum" //codex
	max_shells = 50 //codex
	fire_sound = 'sound/weapons/guns/fire/beretta.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/auto9
	force = 15
	attachable_allowed = list()
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)


	fire_delay = 0.1 SECONDS
	burst_amount = 3
	recoil_unwielded = 3

//-------------------------------------------------------
//The first rule of monkey pistol is we don't talk about monkey pistol.

/obj/item/weapon/gun/pistol/chimp
	name = "\improper CHIMP70 pistol"
	desc = "A powerful sidearm issued mainly to highly trained elite assassin necro-cyber-agents."
	icon_state = "c70"
	item_state = "c70"
	muzzleflash_iconstate = "muzzle_flash_medium"
	caliber = ".70 Mankey" //codex
	max_shells = 300 //codex
	current_mag = /obj/item/ammo_magazine/pistol/chimp
	fire_sound = 'sound/weapons/guns/fire/chimp70.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	force = 8
	type_of_casings = null
	gun_skill_category = GUN_SKILL_PISTOLS
	attachable_allowed = list()
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER

	fire_delay = 0.3 SECONDS
	burst_delay = 0.2 SECONDS
	burst_amount = 2


/obj/item/weapon/gun/pistol/knife
	name = "\improper M6 'Eclipse Raider' ballistic knife"
	desc = "The back issue survival knife issued to a few TerraGov Marine Corps soldiers. There are a surprisingly large amount of attachment points on this... knife."
	icon = 'icons/obj/items/weapons.dmi'
	icon_state = "elite_knife"
	reload_sound = 'sound/weapons/flipblade.ogg'
	cocked_sound = 'sound/weapons/guns/interact/pistol_cocked.ogg'
	flags_equip_slot = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	force = 25
	movement_acc_penalty_mult = 10
	wield_delay = 0.2 SECONDS
	fire_sound = 'sound/weapons/guns/fire/pistol_service.ogg'
	type_of_casings = "bullet"
	gun_skill_category = GUN_SKILL_PISTOLS
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 14,"rail_x" = 9, "rail_y" = 17, "under_x" = 23, "under_y" = 11, "stock_x" = 23, "stock_y" = 10)
	attachable_allowed = list(
						/obj/item/attachable/quickfire,
						/obj/item/attachable/suppressor,
						/obj/item/attachable/bayonet,
						/obj/item/attachable/compensator,
						/obj/item/attachable/reddot,
						/obj/item/attachable/verticalgrip,
						/obj/item/attachable/angledgrip,
						/obj/item/attachable/lasersight,
						/obj/item/attachable/gyro,
						/obj/item/attachable/flashlight,
						/obj/item/attachable/bipod,
						/obj/item/attachable/extended_barrel,
						/obj/item/attachable/heavy_barrel,
						/obj/item/attachable/burstfire_assembly,
						/obj/item/attachable/magnetic_harness,
						/obj/item/attachable/stock/rifle,
						/obj/item/attachable/attached_gun/grenade,
						/obj/item/attachable/attached_gun/flamer,
						/obj/item/attachable/attached_gun/shotgun,
						/obj/item/attachable/scope,
						/obj/item/attachable/scope/mini)


//Halo//

/obj/item/weapon/gun/pistol/m6
	name = "M6G PDWS"
	desc = "The M6G PDWS is a handgun commonly used by all branches of the UNSC. It is known for its extreme reliability and high stopping power."
	icon_state = "m6g"
	item_state = "m6g"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6
	fire_delay = 0.25 SECONDS

/obj/item/weapon/gun/pistol/m6/m6b_officer
	name = "M6B PDWS"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort."
	icon_state = "m6b"
	item_state = "m6b"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/m6b_security
	name = "M6B PDWS Security Model"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort. This version has been designed for security officers."
	icon_state = "m6b_police"
	item_state = "m6b_police"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/captain
	name = "M6G PDWS"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort."
	icon_state = "m6gold"
	item_state = "m6gold"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/SOCOM
	name = "M6C SOCOM"
	desc = "The M6C/SOCOM is a special issued handgun to UNSC special operations forces. It has an integrated suppressor and is commonly seen in the hands of ODSTs."
	icon_state = "socom"
	item_state = "socom"
	fire_sound = 'sound/halo/Magnum_SOCOM_Fire.wav'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/* /obj/item/weapon/gun/pistol/handgonne
	name = "Handgonne"
	desc = "A very rare sidearm made for some kind of big game hunting. Rebel cells often equip themselves with these to take out large targets."
	icon_state = "hg"
	item_state = "hg_e"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/handgonne */ // removed for now because icon states are quite terrible
