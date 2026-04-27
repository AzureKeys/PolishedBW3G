VictoryRoadPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, VICTORY_ROAD_ENTRANCE_NORTH, 1
	warp_event  5,  9, VICTORY_ROAD_ENTRANCE_NORTH, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_DARK_GREEN
	object_event  1,  7, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VictoryRoadPokecenterCooltrainerMText, -1
	object_event  8,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, VictoryRoadPokecenterRangerFText, -1
	
VictoryRoadPokecenterCooltrainerMText:
	text "Thanks to my #-"
	line "mon, I've collect-"
	cont "ed 8 Gym Badges!"
	
	para "But I'm too afraid"
	line "to go further. I'm"
	
	para "stuck at Victory"
	line "Road."
	done
	
VictoryRoadPokecenterRangerFText:
	text "First of all, go"
	line "through this long"
	
	para "and difficult"
	line "Victory Road."
	
	para "Then, defeat even"
	line "one of the Elite"
	
	para "Four. Increase"
	line "what you can do"
	
	para "little by little,"
	line "and get close to"
	cont "the Champion!"
	done
