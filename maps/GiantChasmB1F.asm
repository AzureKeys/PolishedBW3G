GiantChasmB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 35, GIANT_CHASM_ROOMS, 2
	warp_event 32,  1, GIANT_CHASM_ROOMS, 3
	warp_event 13, 27, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 31, 24, BGEVENT_ITEM + RARE_CANDY, EVENT_GIANT_CHASM_B1F_RARE_CANDY
	bg_event  2, 10, BGEVENT_ITEM + MAX_REVIVE, EVENT_GIANT_CHASM_B1F_MAX_REVIVE
	bg_event 13, 27, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_GIANT_CHASM
	
	def_object_events
	object_event 16, 26, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerMGiantChasm, -1
	object_event 13, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerFGiantChasm, -1
	object_event 36, 14, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMGiantChasm, -1
	object_event 20, 12, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerFGiantChasm, -1
	object_event 10, 28, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerHikerGiantChasm, -1
	itemball_event 28, 21, X_DEFEND, 1, EVENT_GIANT_CHASM_B1F_X_DEFEND
	itemball_event  3, 31, X_SPEED, 1, EVENT_GIANT_CHASM_B1F_X_SPEED
	itemball_event 26, 35, HYPER_POTION, 3, EVENT_GIANT_CHASM_B1F_HYPER_POTION
	itemball_event 14, 20, ELIXIR, 1, EVENT_GIANT_CHASM_B1F_ELIXIR
	itemball_event 23, 27, RED_SHARD, 1, EVENT_GIANT_CHASM_B1F_RED_SHARD
	tmhmball_event 24, 21, TM_HAIL, EVENT_GIANT_CHASM_B1F_TM_HAIL
	
TrainerBackpackerMGiantChasm:
	generictrainer BACKPACKERM, BACKPACKERM_GIANT_CHASM, EVENT_BEAT_BACKPACKERM_GIANT_CHASM, .SeenText, .BeatenText

	text "Backpacking is"
	line "exciting, but it"
	
	para "can sometimes get"
	line "lonely…"
	done
	
.SeenText:
	text "What's this? A"
	line "visitor? Ooh, I'm"

	para "so happy to meet"
	line "someone else here!"

	para "Could I ask you to"
	line "be my opponent?"
	done

.BeatenText:
	text "There is a certain"
	line "thrill to battling"
	cont "another trainer!"
	done
	
TrainerBackpackerFGiantChasm:
	generictrainer BACKPACKERF, BACKPACKERF_GIANT_CHASM, EVENT_BEAT_BACKPACKERF_GIANT_CHASM, .SeenText, .BeatenText

	text "There is a cave in"
	line "the back of this"

	para "crater, up past"
	line "the waterfall. I"

	para "just know there's"
	line "treasure in there!"
	done
	
.SeenText:
	text "I may be a Back-"
	line "packer, but I'm"

	para "also a treasure"
	line "hunter!"
	done

.BeatenText:
	text "I missed that"
	line "elusive treasure"
	cont "called victory."
	done
	
TrainerAceTrainerMGiantChasm:
	generictrainer ACE_TRAINERM_D, ACE_TRAINERM_GIANT_CHASM, EVENT_BEAT_ACE_TRAINERM_GIANT_CHASM, .SeenText, .BeatenText

	text "My #mon are"
	line "very important to"

	para "me. They've always"
	line "been by my side to"

	para "see my smiles of"
	line "joy and tears of"
	cont "frustration!"
	done
	
.SeenText:
	text "Let's train! We'll"
	line "get stronger with"
	cont "our #mon!"
	done

.BeatenText:
	text "Not yet! I still"
	line "haven't shared my"
	cont "true strength!"
	done
	
TrainerAceTrainerFGiantChasm:
	generictrainer ACE_TRAINERF_D, ACE_TRAINERF_GIANT_CHASM, EVENT_BEAT_ACE_TRAINERF_GIANT_CHASM, .SeenText, .BeatenText

	text "Droplets of water"
	line "containing lime"
	
	para "keep dripping down"
	line "for hundreds of"
	
	para "years… Then they"
	line "harden into stone"
	
	para "cones. Those are"
	line "what we call"
	cont "stalagmites!"
	done
	
.SeenText:
	text "Have you ever"
	line "noticed the stone"
	cont "cones in the cave?"
	done

.BeatenText:
	text "That marvelous"
	line "power of yours! I"
	cont "wasn't aware!"
	done
	
TrainerHikerGiantChasm:
	generictrainer HIKER_D, HIKER_GIANT_CHASM, EVENT_BEAT_HIKER_GIANT_CHASM, .SeenText, .BeatenText

	text "Once you've"
	line "reached the top of"

	para "a peak, there's no"
	line "place to go but"

	para "down. Life is full"
	line "of ups and downs."
	done
	
.SeenText:
	text "Hi-ho!"
	done

.BeatenText:
	text "Hi-ho…"
	done
