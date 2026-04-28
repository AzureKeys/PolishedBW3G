VictoryRoadOutdoor1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 20, VICTORY_ROAD_GROVE, 3
	warp_event  7, 20, VICTORY_ROAD_GROVE, 4
	warp_event 45, 18, VICTORY_ROAD_CAVE_1F, 11
	warp_event 54, 17, VICTORY_ROAD_CAVE_1F, 12
	warp_event 55, 17, VICTORY_ROAD_CAVE_1F, 13
	warp_event  7,  5, VICTORY_ROAD_CAVE_2F, 1
	warp_event 25,  7, VICTORY_ROAD_CAVE_2F, 2
	warp_event 39,  7, VICTORY_ROAD_CAVE_2F, 3
	
	def_coord_events

	def_bg_events
	bg_event 46, 12, BGEVENT_ITEM + RARE_CANDY, EVENT_VICTORY_ROAD_OUTDOOR_1F_RARE_CANDY
	
	def_object_events
	object_event  6,  6, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 0, TrainerNurseVictoryRoadOutdoor1F, -1
	object_event 25, 11, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackpackerFVictoryRoadOutdoor1F, -1
	object_event 49, 12, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranMVictoryRoadOutdoor1F, -1
	object_event  8, 13, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranFVictoryRoadOutdoor1F, -1
	itemball_event 55, 10, MAX_ELIXIR, 1, EVENT_VICTORY_ROAD_OUTDOOR_1F_MAX_ELIXIR
	itemball_event 12,  4, MAX_REPEL, 3, EVENT_VICTORY_ROAD_OUTDOOR_1F_MAX_REPEL
	itemball_event 31,  8, FULL_RESTORE, 3, EVENT_VICTORY_ROAD_OUTDOOR_1F_FULL_RESTORE
	
TrainerNurseVictoryRoadOutdoor1F:
	trainer NURSE, NURSE_VICTORY_ROAD, EVENT_BEAT_NURSE_VICTORY_ROAD, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerBackpackerFVictoryRoadOutdoor1F:
	generictrainer BACKPACKERF, BACKPACKERF_VICTORY_ROAD_EXT, EVENT_BEAT_BACKPACKERF_VICTORY_ROAD_EXT, .SeenText, .BeatenText

	text "There are some"
	line "people who don't"
	
	para "love #mon even"
	line "if they're strong."
	
	para "And there are some"
	line "people who love"
	
	para "even the weakest"
	line "#mon."
	done
	
.SeenText:
	text "I am…"
	
	para "Ex-Team Plasma!"
	done

.BeatenText:
	text "Eek! You're like"
	line "that trainer from"
	
	para "all those years"
	line "ago!"
	done
	
TrainerVeteranMVictoryRoadOutdoor1F:
	generictrainer VETERANM, VETERANM_VICTORY_ROAD_EXT_1, EVENT_BEAT_VETERANM_VICTORY_ROAD_EXT_1, .SeenText, .BeatenText

	text "I battle seriously"
	line "because I am after"
	cont "serious strength."
	
	para "There's nothing"
	line "worse than a half-"
	cont "hearted opponent."
	done
	
.SeenText:
	text "Are you sure you"
	line "want to seriously"
	
	para "take on someone"
	line "like me, who"
	cont "battles seriously?"
	done

.BeatenText:
	text "This is the pain"
	line "that comes from"
	
	para "seriously taking"
	line "someone head on…"
	done
	
TrainerVeteranFVictoryRoadOutdoor1F:
	generictrainer VETERANF, VETERANF_VICTORY_ROAD_EXT_1, EVENT_BEAT_VETERANF_VICTORY_ROAD_EXT_1, .SeenText, .BeatenText

	text "I'd love to brag"
	line "about my #mon,"
	
	para "but it would take"
	line "too long, so I'll"
	cont "resist!"
	done
	
.SeenText:
	text "Wait! You, young"
	line "trainer over"
	
	para "there! Look at my"
	line "#mon."
	done

.BeatenText:
	text "Not bad! I like"
	line "your strength."
	done
