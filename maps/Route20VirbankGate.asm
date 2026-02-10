Route20VirbankGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_20, 1
	warp_event  0,  5, ROUTE_20, 2
	warp_event  9,  4, VIRBANK_CITY, 1
	warp_event  9,  5, VIRBANK_CITY, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R20VirbankGateOfficerText, -1
	
R20VirbankGateOfficerText:
	text "Virbank City is a"
	line "bustling burg."

	para "Be careful around"
	line "the construction!"
	done
	