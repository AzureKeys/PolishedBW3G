IcirrusCityNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 16, 12, BGEVENT_JUMPTEXT, IcirrusBoutiqueSignText
	bg_event  6, 20, BGEVENT_JUMPTEXT, IcirrusFanClubSignText
	
	def_object_events
	object_event 15, 21, SPRITE_VETERAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusCityNorthVeteranFText, -1
	object_event  8, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusCityNorthBlackbeltText, -1
	itemball_event  6, 27, MAX_POTION, 3, EVENT_ICIRRUS_CITY_SOUTH_MAX_POTION ; dummy item
	
IcirrusCityNorthVeteranFText:
	text "Always, the tower"
	line "looms, disdainful"
	
	para "of the wind and"
	line "snow. Perhaps its"
	
	para "presence is tell-"
	line "ing us not to"
	
	para "forget dreams and"
	line "ideals…"
	done
	
IcirrusCityNorthBlackbeltText:
	text "Our former Gym"
	line "Leader, Brycen,"
	
	para "has been surround-"
	line "ed by ice type"
	
	para "#mon and has"
	line "trained in the"
	
	para "martial arts ever"
	line "since he was a"
	cont "child."
	
	para "He's become an"
	line "action star using"
	cont "that experience!"
	done

IcirrusBoutiqueSignText:
	text "Icirrus Boutique"
	
	para "All things fashion"
	line "for people and"
	cont "#mon!"
	done

IcirrusFanClubSignText:
	text "#mon Fan Club"
	
	para "Share your love"
	line "of #mon!"
	done
	