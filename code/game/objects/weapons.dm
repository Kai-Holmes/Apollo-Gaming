/obj/item/weapon
	name = "weapon"
	icon = 'icons/obj/weapons.dmi'
	hitsound = "swing_hit"

/obj/item/weapon/Bump(mob/M as mob)
	set waitfor = FALSE
	..()
	return