VictoryRoadGrove_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 24, VICTORY_ROAD_CAVE_1F, 9
	warp_event 14, 24, VICTORY_ROAD_CAVE_1F, 10
	warp_event  5,  5, VICTORY_ROAD_OUTDOOR_1F, 1
	warp_event  6,  5, VICTORY_ROAD_OUTDOOR_1F, 2
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 11, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMVictoryRoadGrove, -1
	object_event 11, 20, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerFVictoryRoadGrove, -1
	itemball_event 17,  6, MAX_REVIVE, 1, EVENT_VICTORY_ROAD_GROVE_MAX_REVIVE
	itemball_event  5, 23, BRIGHTPOWDER, 1, EVENT_VICTORY_ROAD_GROVE_BRIGHTPOWDER
	cuttree_event  6, 13, EVENT_VICTORY_ROAD_CUT_TREE_1
	cuttree_event  0, 19, EVENT_VICTORY_ROAD_CUT_TREE_2
	
TrainerAceTrainerMVictoryRoadGrove:
	generictrainer ACE_TRAINERM_D, ACE_TRAINERM_VICTORY_ROAD_EXT_2, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_EXT_2, .SeenText, .BeatenText

	text "One, I'm strong."
	line "Two, you're"
	cont "stronger."
	done
	
.SeenText:
	text "One, you are a"
	line "#mon trainer."
	
	para "Two, I am an Ace"
	line "Trainer. Put them"
	
	para "together, and it's"
	line "obvious that we're"
	cont "going to battle!"
	done

.BeatenText:
	text "One, you won! Two,"
	line "I lost…"
	done
	
TrainerAceTrainerFVictoryRoadGrove:
	generictrainer ACE_TRAINERF, ACE_TRAINERF_VICTORY_ROAD_EXT_1, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_EXT_1, .SeenText, .BeatenText

	text "I-I can't express"
	line "my gratitude"
	
	para "toward my #mon"
	line "except by winning."
	
	para "What should I do?"
	done
	
.SeenText:
	text "I want to show how"
	line "much I love #-"
	cont "mon by winning!"
	done

.BeatenText:
	text "I can't show my"
	line "love for my #-"
	
	para "mon if I go and"
	line "lose…"
	done
