DreamyardB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 21,  2, DREAMYARD, 4
	warp_event 21,  3, DREAMYARD, 5
	warp_event  2, 16, DREAMYARD, 6
	warp_event  2, 17, DREAMYARD, 7
	warp_event 21, 22, DREAMYARD, 8
	warp_event 21, 23, DREAMYARD, 9
	
	def_coord_events

	def_bg_events
	bg_event  9, 23, BGEVENT_ITEM + FULL_HEAL, EVENT_DREAMYARD_B1F_FULL_HEAL
	bg_event 19, 14, BGEVENT_ITEM + MAX_REPEL, EVENT_DREAMYARD_B1F_MAX_REPEL
	
	def_object_events
	object_event  3, 23, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMDreamyard, -1
	object_event 19,  8, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistFDreamyard, -1
	object_event  7,  9, SPRITE_PSYCHIC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicMDreamyard, -1
	object_event 14, 16, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicFDreamyard, -1
	itemball_event  5,  7, HP_UP, 1, EVENT_DREAMYARD_B1F_HP_UP
	itemball_event 21,  5, IRON, 1, EVENT_DREAMYARD_B1F_IRON
	itemball_event  2, 23, CALCIUM, 1, EVENT_DREAMYARD_B1F_CALCIUM
	itemball_event  8,  1, RARE_CANDY, 1, EVENT_DREAMYARD_B1F_RARE_CANDY
	
TrainerScientistMDreamyard:
	generictrainer SCIENTISTM, SCIENTISTM_DREAMYARD, EVENT_BEAT_SCIENTISTM_DREAMYARD, .SeenText, .BeatenText

	text "The more you"
	line "research, the more"
	cont "you can discover."
	
	para "But with #mon,"
	line "you can become"
	
	para "friends even with-"
	line "out understanding"
	cont "everything."
	done
	
.SeenText:
	text "Let us conduct"
	line "some #mon"
	
	para "research. Yes, let"
	line "us show each"
	cont "other our #mon."
	done

.BeatenText:
	text "A new discovery…"
	line "And an ever deep-"
	cont "ening mystery!"
	done
	
TrainerScientistFDreamyard:
	generictrainer SCIENTISTF, SCIENTISTF_DREAMYARD, EVENT_BEAT_SCIENTISTF_DREAMYARD, .SeenText, .BeatenText

	text "The hole in a"
	line "donut… There is"
	
	para "nothing there, and"
	line "yet it exists. I"
	cont "love that!"
	done
	
.SeenText:
	text "The mysterious"
	line "psychic power! You"
	
	para "cannot see it, yet"
	line "it is definitely"
	cont "there!"
	done

.BeatenText:
	text "Argh! I cannot see"
	line "what really"
	cont "matters!"
	done
	
TrainerPsychicMDreamyard:
	generictrainer PSYCHICM_T, PSYCHICM_DREAMYARD, EVENT_BEAT_PSYCHICM_DREAMYARD, .SeenText, .BeatenText

	text "Feelings matter…"
	line "If I believe,"
	
	para "maybe then I can"
	line "be assured to win!"
	done
	
.SeenText:
	text "Heheh…"
	
	para "I always know who"
	line "wins in every"
	cont "battle!"
	done

.BeatenText:
	text "What…? Was every-"
	line "thing up until now"
	cont "a coincidence…?"
	done
	
TrainerPsychicFDreamyard:
	generictrainer PSYCHICF_T, PSYCHICF_DREAMYARD, EVENT_BEAT_PSYCHICF_DREAMYARD, .SeenText, .BeatenText

	text "You can't help but"
	line "to chase after"
	
	para "what runs and to"
	line "want what you"
	cont "can't have!"
	done
	
.SeenText:
	text "I foresaw your"
	line "move… Should I run"
	cont "away from you?"
	done

.BeatenText:
	text "Eek! I foresaw"
	line "your thoughts, but"
	cont "I lost!"
	done
