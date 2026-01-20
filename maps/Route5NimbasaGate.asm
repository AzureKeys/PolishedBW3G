Route5NimbasaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  4, NIMBASA_CITY, 3
	warp_event  9,  5, NIMBASA_CITY, 4
	warp_event  0,  4, ROUTE_5, 1
	warp_event  0,  5, ROUTE_5, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R5NimbasaGateOfficerText, -1
	
R5NimbasaGateOfficerText:
	text "There are athletes"
	line "and performers"

	para "that gather on"
	line "Route 5."
	done
	