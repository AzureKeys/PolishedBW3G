ChargestoneCaveB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 27, 35, CHARGESTONE_CAVE_1F, 2
	warp_event  3, 31, CHARGESTONE_CAVE_1F, 3
	warp_event 23,  3, CHARGESTONE_CAVE_1F, 4
	warp_event  9,  4, CHARGESTONE_CAVE_B2F, 1
	
	def_coord_events

	def_bg_events
	bg_event 18,  2, BGEVENT_ITEM + HP_UP, EVENT_CHARGESTONE_CAVE_B1F_HP_UP
	
	def_object_events
	object_event 21, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 0, TrainerDoctorChargestoneCaveB1F, -1
	object_event 14, 34, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerAceTrainerFChargestoneCaveB1F, -1
	object_event 18, 22, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHikerChargestoneCaveB1F, -1
	object_event 26, 21, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBattleGirlChargestoneCaveB1F, -1
	object_event 24,  8, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistFChargestoneCaveB1F, -1
	object_event 16,  6, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerMChargestoneCaveB1F, -1
	itemball_event 19, 24, FULL_HEAL, 3, EVENT_CHARGESTONE_CAVE_B1F_FULL_HEAL
	itemball_event 27, 20, BIG_PEARL, 1, EVENT_CHARGESTONE_CAVE_B1F_BIG_PEARL
	itemball_event  6, 13, IRON, 1, EVENT_CHARGESTONE_CAVE_B1F_IRON
	
TrainerDoctorChargestoneCaveB1F:
	trainer DOCTOR, DOCTOR_CHARGESTONE, EVENT_BEAT_DOCTOR_CHARGESTONE, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a doctor, but"
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
	
TrainerAceTrainerFChargestoneCaveB1F:
	generictrainer ACE_TRAINERF_D, ACE_TRAINERF_CHARGESTONE_2, EVENT_BEAT_ACE_TRAINERF_CHARGESTONE_2, .SeenText, .BeatenText

	text "Do you think that"
	line "maybe you need"
	
	para "some #mon that"
	line "can take attacks,"
	
	para "not just deal them"
	line "out?"
	done
	
.SeenText:
	text "My beloved #mon"
	line "will make their"
	cont "debut!"
	done

.BeatenText:
	text "You were the one"
	line "with the stronger"
	cont "power as a team!"
	done
	
TrainerHikerChargestoneCaveB1F:
	generictrainer HIKER, HIKER_CHARGESTONE_2, EVENT_BEAT_HIKER_CHARGESTONE_2, .SeenText, .BeatenText

	text "Life is filled"
	line "with pitfalls! If"
	
	para "You fall in, do"
	line "your best to crawl"
	cont "out!"
	done
	
.SeenText:
	text "When I say dig,"
	line "say, How low?"
	done

.BeatenText:
	text "I didn't notice"
	line "the pitfall!"
	done
	
TrainerBattleGirlChargestoneCaveB1F:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_CHARGESTONE, EVENT_BEAT_BATTLE_GIRL_CHARGESTONE, .SeenText, .BeatenText

	text "If you like"
	line "sparring with"
	
	para "#mon, you've"
	line "got to see Skyla"
	cont "in Mistralton gym!"
	done
	
.SeenText:
	text "Ai! Ai! Ai!"
	line "Hi-yaaah!"
	done

.BeatenText:
	text "Aww… It was my"
	line "turn next…"
	done
	
TrainerScientistFChargestoneCaveB1F:
	generictrainer SCIENTISTF, SCIENTISTF_CHARGESTONE, EVENT_BEAT_SCIENTISTF_CHARGESTONE, .SeenText, .BeatenText

	text "When a person"
	line "moves, electric"
	
	para "signals travel in"
	line "the body! When a"
	
	para "person has an"
	line "inspiration,"
	
	para "electric signals"
	line "travel to the"
	cont "brain!"
	done
	
.SeenText:
	text "I love this place!"
	line "The electricity"
	
	para "charges up my"
	line "inspiration!"
	done

.BeatenText:
	text "Aha! A lightbulb"
	line "went off in my"
	cont "head!"
	done
	
TrainerPkmnRangerMChargestoneCaveB1F:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_CHARGESTONE, EVENT_BEAT_PKMN_RANGERM_CHARGESTONE, .SeenText, .BeatenText

	text "I don't know if"
	line "it's unfair or"
	
	para "just plain cool"
	line "when #mon use"
	cont "electricity!"
	done
	
.SeenText:
	text "I am a #mon"
	line "Ranger, here to"
	
	para "gather up some"
	line "electric power!"
	done

.BeatenText:
	text "I still can't draw"
	line "forth my electric"
	cont "powers!"
	done
