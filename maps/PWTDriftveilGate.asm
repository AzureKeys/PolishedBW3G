PWTDriftveilGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, DRIFTVEIL_CITY, 1
	warp_event  5,  0, DRIFTVEIL_CITY, 2
	warp_event  4,  7, PWT_OUTSIDE, 4
	warp_event  5,  7, PWT_OUTSIDE, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTDriftveilGateOfficerText, -1
	
PWTDriftveilGateOfficerText:
	text "The #mon World"
	line "Tournament brings"
	
	para "in the best"
	line "trainers in Unova!"
	done
	