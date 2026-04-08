Route11OpelucidGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, OPELUCID_CITY, 1
	warp_event  0,  5, OPELUCID_CITY, 2
	warp_event  9,  4, ROUTE_11, 1
	warp_event  9,  5, ROUTE_11, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R11OpelucidGateOfficerText, -1
	
R11OpelucidGateOfficerText:
	text "Hello, trainer who"
	line "has come to"
	cont "Opelucid City!"
	
	para "Or, if you're"
	line "going to Route 11,"
	cont "please come again!"
	done
	