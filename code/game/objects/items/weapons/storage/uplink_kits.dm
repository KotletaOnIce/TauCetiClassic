/obj/item/weapon/storage/box/syndicate/
	New()
		..()
		var/tagname = pick("bloodyspai", "stealth", "screwed", "ninja", "guns", "implant", "hacker", "smoothoperator", "poisons", "gadgets")
		switch (tagname)
			if("bloodyspai")
				new /obj/item/clothing/under/chameleon(src)
				new /obj/item/clothing/mask/gas/voice(src)
				new /obj/item/weapon/card/id/syndicate(src)
				new /obj/item/clothing/shoes/syndigaloshes(src)
				new /obj/item/weapon/melee/powerfist(src)
				new /obj/item/device/camera_bug(src)
				new /obj/item/weapon/grenade/clusterbuster/soap(src)

			if("stealth")
				new /obj/item/weapon/gun/energy/crossbow(src)
				new /obj/item/device/healthanalyzer/rad_laser(src)
				new /obj/item/device/chameleon(src)
				new /obj/item/weapon/card/id/syndicate(src)
				new /obj/item/clothing/gloves/black/strip(src)

			if("screwed")
				new /obj/item/weapon/grenade/syndieminibomb(src)
				new /obj/item/weapon/grenade/syndieminibomb(src)
				new /obj/item/device/powersink(src)
				new /obj/item/clothing/suit/space/syndicate(src)
				new /obj/item/clothing/head/helmet/space/syndicate(src)
				new /obj/item/clothing/gloves/yellow(src)
				new /obj/item/weapon/plastique(src)

			if("guns")
				new /obj/item/weapon/gun/projectile/revolver/syndie(src)
				new /obj/item/ammo_box/a357(src)
				new /obj/item/weapon/card/emag(src)
				new /obj/item/weapon/card/id/syndicate(src)
				new /obj/item/weapon/plastique(src)

			if("implant")
				var/obj/item/weapon/implanter/O = new /obj/item/weapon/implanter(src)
				O.imp = new /obj/item/weapon/implant/freedom(O)
				var/obj/item/weapon/implanter/U = new /obj/item/weapon/implanter(src)
				U.imp = new /obj/item/weapon/implant/uplink(U)
				new /obj/item/weapon/implanter/explosive(src)
				new /obj/item/weapon/implanter/adrenalin(src)
				new /obj/item/weapon/implanter/storage(src)

			if("hacker")
				new /obj/item/weapon/aiModule/syndicate(src)
				new /obj/item/weapon/card/emag(src)
				new /obj/item/device/encryptionkey/binary(src)
				new /obj/item/device/multitool/ai_detect(src)
				new /obj/item/device/flashlight/emp(src)

			if("smoothoperator")
				new /obj/item/weapon/gun/projectile/automatic/pistol(src)
				new /obj/item/weapon/silencer(src)
				new /obj/item/ammo_box/magazine/m9mm(src)
				new /obj/item/weapon/soap/syndie(src)
				new /obj/item/weapon/storage/bag/trash(src)
				new /obj/item/bodybag(src)
				new /obj/item/clothing/under/suit_jacket(src)
				new /obj/item/clothing/shoes/laceup(src)
				new /obj/item/weapon/storage/fancy/cigarettes/cigpack_syndicate(src)
				new /obj/item/clothing/glasses/sunglasses/big(src)


			if("poisons")
				new /obj/item/weapon/reagent_containers/glass/bottle/carpotoxin(src)
				new /obj/item/weapon/reagent_containers/glass/bottle/alphaamanitin(src)
				new /obj/item/weapon/reagent_containers/glass/bottle/chefspecial(src)
				new /obj/item/weapon/reagent_containers/glass/bottle/cyanide(src)
				new /obj/item/weapon/reagent_containers/glass/bottle/chloralhydrate(src)
				new /obj/item/weapon/reagent_containers/syringe(src)
				new /obj/item/weapon/gun/syringe/syndicate(src)

			if("ninja")
				new /obj/item/weapon/pen/edagger(src)
				new /obj/item/weapon/melee/energy/sword/black(src)
				new /obj/item/device/powersink(src)
				new /obj/item/weapon/storage/box/syndie_kit/throwing_weapon(src)
				new /obj/item/clothing/under/color/black(src)
				new /obj/item/clothing/head/chaplain_hood(src)
				new /obj/item/clothing/glasses/thermal/syndi(src)
				new /obj/item/clothing/mask/gas/voice(src)
				new /obj/item/clothing/gloves/black/strip(src)
				new /obj/item/clothing/shoes/syndigaloshes(src)
				new /obj/item/weapon/storage/backpack/satchel/flat(src)

			if("gadgets")
				new /obj/item/clothing/gloves/yellow(src)
				new /obj/item/weapon/pen/paralysis(src)
				new /obj/item/clothing/glasses/thermal/syndi(src)
				new /obj/item/device/flashlight/emp(src)
				new /obj/item/clothing/shoes/syndigaloshes(src)
				new /obj/item/device/multitool/ai_detect(src)
				new /obj/item/device/chameleon(src)

		tag = tagname


/obj/item/weapon/storage/box/syndie_kit
	name = "box"
	desc = "A sleek, sturdy box."
	icon_state = "box_of_doom"

/obj/item/weapon/storage/box/syndie_kit/imp_freedom
	name = "boxed freedom implant (with injector)"

/obj/item/weapon/storage/box/syndie_kit/imp_freedom/New()
	..()
	var/obj/item/weapon/implanter/O = new(src)
	O.imp = new /obj/item/weapon/implant/freedom(O)
	O.update()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_compress
	name = "box (C)"

/obj/item/weapon/storage/box/syndie_kit/imp_compress/New()
	new /obj/item/weapon/implanter/compressed(src)
	..()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_explosive
	name = "box (E)"

/obj/item/weapon/storage/box/syndie_kit/imp_explosive/New()
	new /obj/item/weapon/implanter/explosive(src)
	..()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_uplink
	name = "boxed uplink implant (with injector)"

/obj/item/weapon/storage/box/syndie_kit/imp_uplink/New()
	..()
	var/obj/item/weapon/implanter/O = new(src)
	O.imp = new /obj/item/weapon/implant/uplink(O)
	O.update()
	return

/obj/item/weapon/storage/box/syndie_kit/space
	name = "boxed space suit and helmet"

/obj/item/weapon/storage/box/syndie_kit/space/New()
	..()
	new /obj/item/clothing/suit/space/syndicate(src)
	new /obj/item/clothing/head/helmet/space/syndicate(src)
	return
/obj/item/weapon/storage/box/syndie_kit/chameleon
	name = "Chameleon Kit"
	desc = "Comes with all the clothes you need to impersonate most people.  Acting lessons sold seperately."
	storage_slots = 10

/obj/item/weapon/storage/box/syndie_kit/chameleon/New()
	..()
	new /obj/item/clothing/under/chameleon(src)
	new /obj/item/clothing/head/chameleon(src)
	new /obj/item/clothing/suit/chameleon(src)
	new /obj/item/clothing/shoes/chameleon(src)
	new /obj/item/weapon/storage/backpack/chameleon(src)
	new /obj/item/clothing/gloves/chameleon(src)
	new /obj/item/clothing/mask/chameleon(src)
	new /obj/item/clothing/glasses/chameleon(src)
	new /obj/item/weapon/gun/projectile/chameleon(src)
	new /obj/item/ammo_box/magazine/chameleon(src)

/obj/item/weapon/storage/box/syndie_kit/throwing_weapon
	name = "box (F)"

/obj/item/weapon/storage/box/syndie_kit/throwing_weapon/New()
	..()
	new /obj/item/weapon/legcuffs/bola/tactical(src)
	new /obj/item/weapon/legcuffs/bola/tactical(src)
	for(var/i = 1 to 5)
		new /obj/item/weapon/throwing_star(src)

/obj/item/weapon/storage/box/syndie_kit/cutouts
	name = "box (G)"

/obj/item/weapon/storage/box/syndie_kit/cutouts/New()
	..()
	for(var/i = 1 to 3)
		new /obj/item/cardboard_cutout(src)
	new /obj/item/toy/crayon/rainbow (src)
