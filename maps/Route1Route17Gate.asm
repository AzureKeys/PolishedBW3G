Route1Route17Gate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_17, 1
	warp_event  0,  5, ROUTE_17, 2
	warp_event  9,  4, ROUTE_1, 1
	warp_event  9,  5, ROUTE_1, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R1R17GateOfficerText, -1
	
R1R17GateOfficerText:
	text "It's been a while"
	line "since someone's"
	cont "come this way!"

	para "Honestly, I enjoy"
	line "this quiet post."
	done
	