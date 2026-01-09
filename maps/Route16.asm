Route16_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 20,  4, ROUTE_16_LOSTLORN_GATE, 3
	warp_event 20,  5, ROUTE_16_LOSTLORN_GATE, 4

	def_coord_events

	def_bg_events
	bg_event  5, 20, BGEVENT_JUMPTEXT, Route16SignText
	
	def_object_events
	object_event 18, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerMR16, -1
	object_event 22,  8, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, TrainerBackpackerFR16, -1
	object_event 14, 22, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersMR16, -1
	object_event 15, 22, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersMR16, -1
	object_event 30, 22, SPRITE_CYCLIST_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerCyclistMR16, -1
	object_event 13, 18, SPRITE_CYCLIST_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 2, TrainerCyclistFR16, -1
	itemball_event 29, 10, RARE_CANDY, 1, EVENT_ROUTE_16_RARE_CANDY
	itemball_event 17,  9, TINYMUSHROOM, 2, EVENT_ROUTE_16_TINYMUSHROOM
	itemball_event  8, 13, QUICK_CLAW, 1, EVENT_ROUTE_16_QUICK_CLAW
	tmhmball_event 33, 24, TM_SUNNY_DAY, EVENT_ROUTE_16_TM_SUNNY_DAY
	cuttree_event 25, 20, EVENT_ROUTE_16_CUT_TREE
	
TrainerBackpackerMR16:
	generictrainer BACKPACKERM, BACKPACKERM_R16, EVENT_BEAT_BACKPACKERM_R16, .SeenText, .BeatenText

	text "There are some"
	line "moves that can be"

	para "used on things in"
	line "the environment."
	
	para "Do you know any"
	line "of them?"
	done
	
.SeenText:
	text "A spot of greenery"
	line "growing right next"
	cont "to a big city!"
	
	para "Truly an oasis! I"
	line "feel so refreshed…"
	
	para "And now I'd like"
	line "to battle!"
	done

.BeatenText:
	text "Oh… It no longer"
	line "feels like an"
	cont "oasis if I lose."
	done
	
TrainerBackpackerFR16:
	generictrainer BACKPACKERF, BACKPACKERF_R16, EVENT_BEAT_BACKPACKERF_R16, .SeenText, .BeatenText

	text "The best place for"
	line "humans to live"
	
	para "isn't necessarily"
	line "the best place for"
	cont "#mon."
	
	para "Of course, the"
	line "best place for me"
	
	para "to live is in my"
	line "bed!"
	done
	
.SeenText:
	text "City #mon or"
	line "#mon that live"
	cont "in the forest…"
	
	para "Which do you"
	line "prefer?"
	done

.BeatenText:
	text "I love both kinds"
	line "of #mon, but I"
	cont "don't like losing…"
	done
	
TrainerBackersMR16:
	generictrainer BACKERSM, BACKERSM_R16, EVENT_BEAT_BACKERSM_R16, .SeenText, .BeatenText

	text "Your #mon"
	line "certainly have"
	cont "what it takes!"
	done
	
.SeenText:
	text "This battle will"
	line "be a home run!"
	done

.BeatenText:
	text "Farewell, you won!"
	done
	
TrainerCyclistMR16:
	generictrainer CYCLISTM, CYCLISTM_R16, EVENT_BEAT_CYCLISTM_R16, .SeenText, .BeatenText

	text "Cycling is a sport"
	line "too! Follow the"
	
	para "rules and ride"
	line "safely!"
	done
	
.SeenText:
	text "When I'm riding my"
	line "bicycle, don't you"
	
	para "think I look"
	line "stronger?"
	done

.BeatenText:
	text "The cool breeze in"
	line "my face stopped!"
	done
	
TrainerCyclistFR16:
	generictrainer CYCLISTF, CYCLISTF_R16, EVENT_BEAT_CYCLISTF_R16, .SeenText, .BeatenText

	text "When people are"
	line "running by, you"

	para "can't help but"
	line "stop and look at"
	cont "them."
	done
	
.SeenText:
	text "Ting-a-ling-ling!"
	line "Full speed attack,"
	cont "coming your way!"
	done

.BeatenText:
	text "Ting-a-ling-ling!"
	line "That's the sound of"
	cont "my bicycle's bell!"
	done
	
Route16SignText:
	text "Nimbasa City"
	line "ahead."
	done
	