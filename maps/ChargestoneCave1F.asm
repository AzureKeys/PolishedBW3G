ChargestoneCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 31, ROUTE_6, 6
	warp_event 39, 31, CHARGESTONE_CAVE_B1F, 1
	warp_event 13, 23, CHARGESTONE_CAVE_B1F, 2
	warp_event 29,  3, CHARGESTONE_CAVE_B1F, 3
	warp_event 43,  3, MISTRALTON_CITY, 1
	
	def_coord_events

	def_bg_events
	bg_event  4,  9, BGEVENT_ITEM + MAX_POTION, EVENT_CHARGESTONE_CAVE_1F_MAX_POTION
	
	def_object_events
	object_event  8,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLACK, OBJECTTYPE_GENERICTRAINER, 1, TrainerGuitaristChargestoneCave1F, -1
	object_event 15, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMChargestoneCave1F, -1
	object_event 15, 25, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerPkmnRangerFChargestoneCave1F, -1
	object_event 39, 29, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMChargestoneCave1F, -1
	object_event 33,  6, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerFChargestoneCave1F, -1
	object_event 38, 14, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerHikerChargestoneCave1F, -1
	itemball_event 12, 28, METAL_COAT, 1, EVENT_CHARGESTONE_CAVE_1F_METAL_COAT
	itemball_event  4, 22, ESCAPE_ROPE, 3, EVENT_CHARGESTONE_CAVE_1F_ESCAPE_ROPE
	itemball_event 17,  4, PARALYZEHEAL, 3, EVENT_CHARGESTONE_CAVE_1F_PARALYZEHEAL
	itemball_event 28,  9, HYPER_POTION, 3, EVENT_CHARGESTONE_CAVE_1F_HYPER_POTION
	itemball_event 32, 30, TIMER_BALL, 3, EVENT_CHARGESTONE_CAVE_1F_TIMER_BALL
	itemball_event 37, 13, MAGNET, 1, EVENT_CHARGESTONE_CAVE_1F_MAGNET
	itemball_event 12,  6, YELLOW_SHARD, 1, EVENT_CHARGESTONE_CAVE_1F_YELLOW_SHARD
	
TrainerGuitaristChargestoneCave1F:
	generictrainer GUITARIST, GUITARIST_CHARGESTONE_1, EVENT_BEAT_GUITARIST_CHARGESTONE_1, .SeenText, .BeatenText

	text "Even though we"
	line "lost, I think my"
	cont "#mon had fun!"
	done
	
.SeenText:
	text "All right, let me"
	line "introduce you to"
	
	para "the other super-"
	line "cool and cute"
	cont "member of my band!"
	done

.BeatenText:
	text "If we don't"
	line "recruit more"
	
	para "members, the sound"
	line "won't have enough"
	cont "depth."
	done
	
TrainerScientistMChargestoneCave1F:
	generictrainer SCIENTISTM, SCIENTISTM_CHARGESTONE, EVENT_BEAT_SCIENTISTM_CHARGESTONE, .SeenText, .BeatenText

	text "The sources of my"
	line "energy are my"
	cont "precious #mon!"
	done
	
.SeenText:
	text "This cave is full"
	line "of electricity-"
	cont "generating rocks!"
	
	para "It's charging me"
	line "up!"
	done

.BeatenText:
	text "Yowch! A lightning"
	line "spark!"
	done
	
TrainerPkmnRangerFChargestoneCave1F:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_CHARGESTONE, EVENT_BEAT_PKMN_RANGERF_CHARGESTONE, .SeenText, .BeatenText

	text "Wind blows into"
	line "caves when you're"
	
	para "close to an"
	line "entrance or exit."
	done
	
.SeenText:
	text "There was a"
	line "whisper on the"
	
	para "wind that told me"
	line "of your coming!"
	done

.BeatenText:
	text "I will become the"
	line "wind and go…"
	done
	
TrainerAceTrainerMChargestoneCave1F:
	generictrainer ACE_TRAINERM, ACE_TRAINERM_CHARGESTONE_1, EVENT_BEAT_ACE_TRAINERM_CHARGESTONE_1, .SeenText, .BeatenText

	text "Perhaps I need to"
	line "meet my #mon"
	
	para "head on… Then we"
	line "could be a"
	cont "stronger team!"
	done
	
.SeenText:
	text "Behold the force"
	line "created by my"
	cont "prized #mon!"
	done

.BeatenText:
	text "Your combined"
	line "force as a team is"
	cont "greater than ours!"
	done
	
TrainerAceTrainerFChargestoneCave1F:
	generictrainer ACE_TRAINERF, ACE_TRAINERF_CHARGESTONE_1, EVENT_BEAT_ACE_TRAINERF_CHARGESTONE_1, .SeenText, .BeatenText

	text "I'm called an Ace"
	line "Trainer, but that"
	
	para "doesn't sit well"
	line "with me. Cause I"
	
	para "just love #mon,"
	line "and I just want to"
	cont "be strong!"
	done
	
.SeenText:
	text "Hey! My #mon"
	line "are great. Look,"
	cont "look!"
	done

.BeatenText:
	text "Argh!!"
	done
	
TrainerHikerChargestoneCave1F:
	generictrainer HIKER_D, HIKER_CHARGESTONE_1, EVENT_BEAT_HIKER_CHARGESTONE_1, .SeenText, .BeatenText

	text "#mon are every-"
	line "where inside caves"
	cont "like this!"
	done
	
.SeenText:
	text "This Hiker wander-"
	line "ing the expanses"
	
	para "of the world will"
	line "teach a child like"
	
	para "you the harshness"
	line "of life and the"
	
	para "difficulty of"
	line "#mon battles!"
	done

.BeatenText:
	text "The teacher was"
	line "schooled… You're"
	
	para "very strict,"
	line "aren't you?"
	done
