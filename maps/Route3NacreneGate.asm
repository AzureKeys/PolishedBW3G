Route3NacreneGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, NACRENE_CITY, 7
	warp_event  0,  5, NACRENE_CITY, 8
	warp_event  9,  4, ROUTE_3, 1
	warp_event  9,  5, ROUTE_3, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R3NacreneGateOfficerText, -1
	
R3NacreneGateOfficerText:
	text "Have you been to"
	line "the Day Care on"
	cont "Route 3?"

	para "It's a convenient"
	line "place to leave"
	cont "your #mon."
	done
	