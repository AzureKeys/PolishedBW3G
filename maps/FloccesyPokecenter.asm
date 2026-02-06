FloccesyPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, FLOCCESY_TOWN, 1
	warp_event  5,  9, FLOCCESY_TOWN, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyPokecenterPokefanMText, -1
	object_event  1,  7, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyPokecenterRangerMText, -1
	object_event  9,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyPokecenterRangerFText, -1
	
FloccesyPokecenterPokefanMText:
	text "What's this? Team"
	line "Plasma has come"
	cont "back?"

	para "I saw some men in"
	line "black at Virbank"
	cont "City…"
	done

FloccesyPokecenterRangerMText:
	text "I stop my #mon"
	line "from evolving too"
	cont "early."

	para "I make them learn"
	line "certain moves be-"
	cont "fore I let them"
	cont "evolve."
	done

FloccesyPokecenterRangerFText:
	text "#mon do become"
	line "stronger when they"

	para "evolve, but they"
	line "also learn moves"
	cont "more slowly."
	done
