Route2AccumulaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_2, 2
	warp_event  0,  5, ROUTE_2, 3
	warp_event  9,  4, ACCUMULA_TOWN, 1
	warp_event  9,  5, ACCUMULA_TOWN, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R2AccumulaGateOfficerText, -1
	
R2AccumulaGateOfficerText:
	text "Sometimes, I can"
	line "hear a pleasant"

	para "song coming from"
	line "out the window."
	
	para "It makes me want"
	line "to get up and go"
	cont "for a walk!"
	done
	