Route19AspertiaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	;warp_event  4,  0, ROUTE_19, 1
	;warp_event  5,  0, ROUTE_19, 2
	warp_event  4,  7, ASPERTIA_CITY, 5
	warp_event  5,  7, ASPERTIA_CITY, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R19AspertiaGateOfficerText, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R19AspertiaGateYoungsterText, -1
	
R19AspertiaGateOfficerText:
	text "The path ahead"
	line "leads to Floccesy"
	cont "Town."

	para "There are a lot of"
	line "trainers out on"
	
	para "the path, so be"
	line "prepared!"
	done
	
R19AspertiaGateYoungsterText:
	text "Some #mon only"
	line "appear out at the"
	cont "Floccesy Ranch!"

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere!"
	done
	