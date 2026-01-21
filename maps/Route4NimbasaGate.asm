Route4NimbasaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, NIMBASA_CITY, 13
	warp_event  5,  0, NIMBASA_CITY, 14
	warp_event  4, 21, ROUTE_4, 1
	warp_event  5, 21, ROUTE_4, 1

	def_coord_events

	def_bg_events
	bg_event  0, 15, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_4_NIMBASA_GATE_RARE_CANDY
	
	def_object_events
	object_event  9, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BITTER, MART_NIMBASA_GATE, -1
	object_event  5,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R4NimbasaGatePokefanMText, -1
	object_event  6, 16, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R4NimbasaGateSchoolboyText, -1
	
R4NimbasaGatePokefanMText:
	text "This place used to"
	line "be a shopping"
	
	para "center called Join"
	line "Avenue."
	
	para "But after a few"
	line "years, vendors"
	cont "started to leave."
	
	para "Now the place is"
	line "abandoned."
	done
	
R4NimbasaGateSchoolboyText:
	text "I'm searching to"
	line "see if any of the"
	
	para "vendors left any"
	line "of their stuff"
	cont "behind!"
	done
	