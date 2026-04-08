Route11VillageBridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_11, 3
	warp_event  0,  5, ROUTE_11, 4
	warp_event  9,  4, VILLAGE_BRIDGE, 3
	warp_event  9,  5, VILLAGE_BRIDGE, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R11VillageBridgeGateOfficerText, -1
	
R11VillageBridgeGateOfficerText:
	text "Village Bridge is"
	line "a bridge that was"
	
	para "built around an"
	line "old village."
	
	para "Most of that"
	line "original village"
	
	para "became Opelucid"
	line "City, though there"
	
	para "are still houses"
	line "built around the"
	cont "bridge."
	done
	