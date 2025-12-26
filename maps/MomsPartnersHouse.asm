MomsPartnersHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, HUMILAU_CITY, 3
	warp_event  3,  7, HUMILAU_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MomsPartnersHouseDaughterScript, -1
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MomsPartnersHouseNeighborText, EVENT_MOMS_PARTNERS_HOUSE_NEIGHBOR

MomsPartnersHouseDaughterScript:
	checkevent EVENT_GOT_HUMILAU_CITY_HEART_SCALE
	iffalsefwd .GiveScale
	checkflag ENGINE_POKEDEX
	iffalsefwd .NoDex
	jumptextfaceplayer MomsPartnersHouseDaughterText2
	
.NoDex
	jumptextfaceplayer MomsPartnersHouseDaughterText
	
.GiveScale
	faceplayer
	opentext
	writetext MomsPartnersHouseGiveScaleText
	promptbutton
	verbosegiveitem HEART_SCALE
	iffalsefwd .NoRoom
	setevent EVENT_GOT_HUMILAU_CITY_HEART_SCALE
.NoRoom
	closetext
	end
	
MomsPartnersHouseGiveScaleText:
	text "Oh, <PLAYER>!"
	line "I found this"

	para "pretty scale by"
	line "the beach today!"

	para "You should take"
	line "it, maybe it's"
	cont "good luck!"
	done

MomsPartnersHouseDaughterText:
	text "Marlon is so"
	line "cool!"

	para "I heard he can"
	line "catch fish #-"
	cont "mon with his"
	cont "bare hands!"

	para "…sigh…"

	para "I wish I could be"
	line "a Gym Leader like"
	cont "him…"
	done

MomsPartnersHouseDaughterText2:
	text "Hey, <PLAYER>!"
	line "Are you going on a"
	cont "#mon journey?"

	para "You're so lucky!"

	para "Hey, hey! If your"
	line "mom marries my"

	para "mom, then I'll be"
	line "your little"
	cont "sister!"
	
	para "Then you'll have"
	line "to teach me to be"
	cont "a #mon trainer!"
	done
	
MomsPartnersHouseNeighborText:
	text "Oh, hello"
	line "<PLAYER>."

	para "It's been so nice"
	line "since you and your"

	para "mom moved out here"
	line "to Humilau City."

	para "She really is a"
	line "lovely woman!"
	
	para "I think I'll take"
	line "her out on a trip"
	
	para "to the beach for"
	line "our next date."
	
	para "You remember to"
	line "call your mother"
	cont "sometimes!"
	done
