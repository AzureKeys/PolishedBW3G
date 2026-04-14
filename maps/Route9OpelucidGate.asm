Route9OpelucidGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  4, OPELUCID_CITY, 3
	warp_event  9,  5, OPELUCID_CITY, 4
	warp_event  0,  4, ROUTE_9, 1
	warp_event  0,  5, ROUTE_9, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R9OpelucidGateOfficerText, -1
	
R9OpelucidGateOfficerText:
	text "Are you a #mon"
	line "trainer? The Mall"
	
	para "on Route 9 has all"
	line "kinds of items"
	cont "for sale."
	
	para "Just watch out for"
	line "the tough guys who"
	
	para "gather out on the"
	line "road!"
	done
	