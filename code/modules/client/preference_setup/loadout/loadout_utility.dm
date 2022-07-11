/datum/gear/utility
	display_name = "clipboard"
	path = /obj/item/clipboard
	sort_category = "Utility"

/datum/gear/utility/briefcase
	display_name = "briefcase selection"
	description = "A selection of briefcases."
	path = /obj/item/storage/briefcase

/datum/gear/utility/briefcase/New()
	..()
	var/list/briefcases = list()
	briefcases["brown briefcase"] = /obj/item/storage/briefcase
	briefcases["black briefcase"] = /obj/item/storage/briefcase/black
	briefcases["metal briefcase"] = /obj/item/storage/briefcase/aluminium
	briefcases["NT briefcase"] = /obj/item/storage/briefcase/nt
	gear_tweaks += new /datum/gear_tweak/path(briefcases)

/datum/gear/utility/secure
	display_name = "secure briefcase"
	path = /obj/item/storage/secure/briefcase
	cost = 2

/datum/gear/utility/purse
	display_name = "purse"
	description = "A small, fashionable bag typically worn over the shoulder."
	path = /obj/item/storage/backpack/satchel/pocketbook/purse
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/utility/folder
	display_name = "folders"
	path = /obj/item/folder

/datum/gear/utility/folder/New()
	..()
	var/list/folders = list()
	folders["blue folder"] = /obj/item/folder/blue
	folders["grey folder"] = /obj/item/folder
	folders["red folder"] = /obj/item/folder/red
	folders["white folder"] = /obj/item/folder/white
	folders["yellow folder"] = /obj/item/folder/yellow
	gear_tweaks += new /datum/gear_tweak/path(folders)

/datum/gear/utility/fountainpen
	display_name = "fountain pen selection"
	description = "A selection of fountain pens."
	path = /obj/item/pen/fountain
	cost = 1

/datum/gear/utility/fountainpen/New()
	..()
	var/list/fountainpens = list()
	fountainpens["black fountain pen"] = /obj/item/pen/fountain/black
	fountainpens["grey fountain pen"] = /obj/item/pen/fountain
	fountainpens["silver fountain pen"] = /obj/item/pen/fountain/silver
	fountainpens["white fountain pen"] = /obj/item/pen/fountain/white
	gear_tweaks += new /datum/gear_tweak/path(fountainpens)

/datum/gear/utility/paicard
	display_name = "personal AI device"
	path = /obj/item/device/paicard

/datum/gear/utility/wallet
	display_name = "wallet selection"
	description = "A selection of wallets and purses, featuring optional passcards, passports and other trinkets within."
	path = /obj/item/storage/wallet
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/utility/wallet/New()
	..()
	var/list/wallet = list()
	wallet["wallet, colourable"] = /obj/item/storage/wallet/colourable
	wallet["wallet, purse"] = /obj/item/storage/wallet/purse
	gear_tweaks += new /datum/gear_tweak/path(wallet)
	gear_tweaks += new /datum/gear_tweak/contents(wallet_passcards(), wallet_passports(), wallet_cash())

/datum/gear/utility/lanyard
	display_name = "lanyard"
	path = 	/obj/item/storage/wallet/lanyard
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/utility/recorder
	display_name = "universal recorder"
	path = /obj/item/device/taperecorder

/datum/gear/utility/camera
	display_name = "camera"
	path = /obj/item/device/camera

/datum/gear/utility/himeo_kit
	display_name = "himean voidsuit kit"
	path = /obj/item/voidsuit_modkit/himeo
	allowed_roles = list("Shaft Miner", "Operations Manager", "Engineer", "Atmospheric Technician", "Chief Engineer", "Engineering Apprentice")

/datum/gear/utility/wheelchair/color
	display_name = "wheelchair"
	path = /obj/item/material/stool/chair/wheelchair
	cost = 4

/datum/gear/utility/business_card_holder
	display_name = "business cards and holders"
	description = "Comes in different selections for both!"
	path = /obj/item/storage/business_card_holder
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION

/datum/gear/utility/business_card_holder/spawn_item(var/location, var/metadata)
	. = ..()
	var/obj/item/storage/business_card_holder/spawned_holder = .
	spawned_holder.update_icon()
	if(length(spawned_holder.contents))
		for(var/i = 1 to spawned_holder.storage_slots)
			var/obj/item/paper/O_new
			new O_new(src) // make copies of the OG business card
			O_new.info = spawned_holder.contents[1].info // transfer the info

/datum/gear/utility/business_card_holder/New()
	..()
	var/list/holders = list()
	holders["business card holder, metal"] = /obj/item/storage/business_card_holder
	holders["business card holder, wood"] = /obj/item/storage/business_card_holder/wood
	holders["business card holder, leather"] = /obj/item/storage/business_card_holder/leather
	holders["business card holder, plastic"] = /obj/item/storage/business_card_holder/plastic
	gear_tweaks += new /datum/gear_tweak/path(holders)
	gear_tweaks += new /datum/gear_tweak/contents(business_cards())
	gear_tweaks += new /datum/gear_tweak/paper_data()

/datum/gear/utility/pills
	display_name = "pill bottle selection"
	description = "A selection of prescription pills. NOTICE: most of these are considered contraband if possessed without the relevant prescription noted in the medical records."
	path = /obj/item/reagent_containers/pill

/datum/gear/utility/pills/New()
	..()
	var/list/pills = list()
	pills["Emoxanyl"] = /obj/item/storage/pill_bottle/emoxanyl
	pills["Minaphobin"] = /obj/item/storage/pill_bottle/minaphobin/small
	pills["Neurostabin "] = /obj/item/storage/pill_bottle/neurostabin
	pills["Orastabin"] = /obj/item/storage/pill_bottle/orastabin
	pills["Parvosil"] = /obj/item/storage/pill_bottle/parvosil
	gear_tweaks += new /datum/gear_tweak/path(pills)

/datum/gear/utility/buddy_tag
	display_name = "buddy tag"
	path = /obj/item/clothing/accessory/buddytag
	cost = 2

/datum/gear/utility/buddy_tag/New()
	..()
	gear_tweaks += new /datum/gear_tweak/buddy_tag_config()
