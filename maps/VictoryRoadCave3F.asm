VictoryRoadCave3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 19, 19, VICTORY_ROAD_OUTDOOR_2F, 6
	warp_event  7, 29, VICTORY_ROAD_OUTDOOR_2F, 7
	warp_event 15,  7, VICTORY_ROAD_OUTDOOR_2F, 8
	;warp_event  7,  5, POKEMON_LEAGUE_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event  4, 23, BGEVENT_ITEM + NUGGET, EVENT_VICTORY_ROAD_CAVE_3F_NUGGET
	bg_event 19, 14, BGEVENT_ITEM + FULL_RESTORE, EVENT_VICTORY_ROAD_CAVE_3F_FULL_RESTORE
	
	def_object_events
	object_event 15, 26, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranFVictoryRoadCave3F, -1
	itemball_event  5, 15, PP_UP, 1, EVENT_VICTORY_ROAD_CAVE_3F_PP_UP
	
TrainerVeteranFVictoryRoadCave3F:
	generictrainer VETERANF, VETERANF_VICTORY_ROAD_INT_2, EVENT_BEAT_VETERANF_VICTORY_ROAD_INT_2, .SeenText, .BeatenText

	text "All I want are"
	line "powerful #mon!"
	
	para "Only a #mon"
	line "that understands"
	
	para "that can become"
	line "one of my"
	cont "partners!"
	done
	
.SeenText:
	text "All I want are"
	line "powerful #mon!"
	done

.BeatenText:
	text "I can't comprehend"
	line "this! How could my"
	cont "#mon lose?"
	done
