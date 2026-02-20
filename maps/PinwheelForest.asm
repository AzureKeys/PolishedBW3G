PinwheelForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37,  5, PINWHEEL_SKYARROW_BRIDGE_GATE, 1
	warp_event 17, 25, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event 37, 20, -1, PinwheelForestTopOfficerScript
	coord_event 38, 20, -1, PinwheelForestTopOfficerScript
	coord_event 39, 20, -1, PinwheelForestTopOfficerScript
	coord_event 36, 25, -1, PinwheelForestBottomOfficerScript
	coord_event 37, 25, -1, PinwheelForestBottomOfficerScript
	coord_event 38, 25, -1, PinwheelForestBottomOfficerScript
	coord_event  8, 26, 0, PinwheelForestInferScript1
	coord_event  8, 27, 0, PinwheelForestInferScript2

	def_bg_events
	bg_event 25, 37, BGEVENT_ITEM + ULTRA_BALL, EVENT_PINWHEEL_FOREST_ULTRA_BALL
	bg_event 14, 19, BGEVENT_ITEM + HYPER_POTION, EVENT_PINWHEEL_FOREST_HYPER_POTION
	bg_event 27, 41, BGEVENT_ITEM + NUGGET, EVENT_PINWHEEL_FOREST_NUGGET
	bg_event 25, 37, BGEVENT_ITEM + GREEN_SHARD, EVENT_PINWHEEL_FOREST_GREEN_SHARD
	bg_event 17, 25, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_PINWHEEL
	bg_event 18, 25, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_PINWHEEL
	
	def_object_events
	object_event 14, 27, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PINWHEEL_FOREST_INFER
	object_event 36, 20, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PinwheelForestOfficer1Script, EVENT_PINWHEEL_FOREST_BLOCKERS
	object_event 39, 25, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PinwheelForestOfficer2Script, EVENT_PINWHEEL_FOREST_BLOCKERS
	object_event 30, 10, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerM1Pinwheel, -1
	object_event  1, 19, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 1, TrainerPkmnRangerM2Pinwheel, -1
	object_event 17,  9, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerF1Pinwheel, -1
	object_event 19, 28, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerF2Pinwheel, -1
	object_event 30, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerYoungsterPinwheel, -1
	object_event 16, 32, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPsychicMPinwheel, -1
	object_event 27, 20, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerHexManiacPinwheel, -1
	object_event 12, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 2, TrainerLassPinwheel, -1
	itemball_event 22, 18, SILVERPOWDER, 1, EVENT_PINWHEEL_FOREST_SILVERPOWDER
	itemball_event 15,  6, FULL_HEAL, 3, EVENT_PINWHEEL_FOREST_FULL_HEAL
	itemball_event 20, 38, BIG_ROOT, 1, EVENT_PINWHEEL_FOREST_BIG_ROOT
	itemball_event 16, 21, CARBOS, 1, EVENT_PINWHEEL_FOREST_CARBOS
	itemball_event 14, 31, NET_BALL, 3, EVENT_PINWHEEL_FOREST_NET_BALL
	itemball_event 23, 29, SHELL_STONE, 1, EVENT_PINWHEEL_FOREST_SHELL_STONE
	
	object_const_def
	const PINWHEELFOREST_INFER
	const PINWHEELFOREST_OFFICER_1
	const PINWHEELFOREST_OFFICER_2
	
PinwheelForestInferScript1:
	applymovement PINWHEELFOREST_INFER, PinwheelForest_Up1Movement
	; fallthrough
PinwheelForestInferScript2:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement PINWHEELFOREST_INFER, .ArriveMovement
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked PINWHEELFOREST_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
;Tepig
	loadtrainer INFER1, INFER4_OSHAWOTT
	sjumpfwd .StartBattle
.Oshawott
	loadtrainer INFER1, INFER4_SNIVY
	sjumpfwd .StartBattle
.Snivy
	loadtrainer INFER1, INFER4_TEPIG
	; fallthrough
.StartBattle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext .AfterText
	applymovement PINWHEELFOREST_INFER, .LeaveMovement
	disappear PINWHEELFOREST_INFER
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	setscene 1
	end
	
.ArriveMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
.LeaveMovement:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
	
.SeenText:
	text "Infer: You again?"
	
	para "I don't have time"
	line "to deal with you"
	cont "right now."
	
	para "What? A robbery?"
	line "What, you think I"
	cont "have something to"
	cont "do with it?"
	
	para "Tch! The nerve!"
	line "I'll beat you down"
	cont "right here!"
	
	para "Come on!"
	done
	
.BeatenText:
	text "H-how can this be?"
	done
	
.AfterText:
	text "I-I don't under-"
	line "stand. How can I"
	cont "keep losing?"
	
	para "I promise you,"
	line "I'm going to keep"
	
	para "getting stronger,"
	line "and beat you!"
	
	para "Don't follow me!"
	done
	
PinwheelForestTopOfficerScript:
	checkevent EVENT_PINWHEEL_FOREST_BLOCKERS
	iftruefwd .done
	turnobject PLAYER, LEFT
	showtext PinwheelForestOfficerText
	applymovement PLAYER, PinwheelForest_Up1Movement
.done
	end
	
PinwheelForest_Up1Movement:
	step_up
	step_end
	
PinwheelForestBottomOfficerScript:
	checkevent EVENT_PINWHEEL_FOREST_BLOCKERS
	iftruefwd .done
	turnobject PLAYER, RIGHT
	showtext PinwheelForestOfficerText
	applymovement PLAYER, .DownMovement
.done
	end
.DownMovement:
	step_down
	step_end
	
PinwheelForestOfficer1Script:
	showtextfaceplayer PinwheelForestOfficerText
	turnobject PINWHEELFOREST_OFFICER_1, RIGHT
	end
	
PinwheelForestOfficer2Script:
	showtextfaceplayer PinwheelForestOfficerText
	turnobject PINWHEELFOREST_OFFICER_2, LEFT
	end
	
PinwheelForestOfficerText:
	text "There's been a"
	line "robbery in Nacrene"
	cont "City."
	
	para "We're not letting"
	line "anyone through"
	cont "right now."
	done
	
TrainerPkmnRangerM1Pinwheel:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_PINWHEEL_1, EVENT_BEAT_PKMN_RANGERM_PINWHEEL_1, .SeenText, .BeatenText

	text "It's not like I'm"
	line "collecting them,"

	para "but when I'm with"
	line "lots of bug-type"

	para "#mon, my lust"
	line "for adventure is"
	cont "fulfilled!"
	done
	
.SeenText:
	text "Onward, my bug"
	line "#mon swarm!"
	done

.BeatenText:
	text "Pretty cool, huh?"
	line "My bug-type #-"
	cont "mon are the best!"
	done
	
TrainerPkmnRangerM2Pinwheel:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_PINWHEEL_2, EVENT_BEAT_PKMN_RANGERM_PINWHEEL_2, .SeenText, .BeatenText

	text "#mon are always"
	line "standing by their"
	cont "trainers, right?"

	para "You have no idea"
	line "how lucky we are!"
	done
	
.SeenText:
	text "Hey, hey, hey! It's"
	line "all because of"
	
	para "havin' love for"
	line "#mon, right?"
	
	para "Yeah, you know"
	line "what I mean!"
	done

.BeatenText:
	text "Man, your love for"
	line "#mon hit me"
	
	para "like a ton of"
	line "bricks!"
	done
	
TrainerPkmnRangerF1Pinwheel:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_PINWHEEL_1, EVENT_BEAT_PKMN_RANGERF_PINWHEEL_1, .SeenText, .BeatenText

	text "My #mon really"
	line "go into a funk"
	
	para "when we don't win,"
	line "though."
	done
	
.SeenText:
	text "I hold no grudge,"
	line "whether I win or"
	
	para "lose. The point of"
	line "battle is to train"
	
	para "my #mon, after"
	line "all."
	done

.BeatenText:
	text "Aww… But I really"
	line "wanted to win!"
	done
	
TrainerPkmnRangerF2Pinwheel:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_PINWHEEL_2, EVENT_BEAT_PKMN_RANGERF_PINWHEEL_2, .SeenText, .BeatenText

	text "#mon are just"
	line "too amazing, so we"
	
	para "end up depending"
	line "on them for every-"
	cont "thing. Great power"
	cont "can be dangerous."
	done
	
.SeenText:
	text "Get great powers"
	line "drawn from nature"
	
	para "without opposing"
	line "it. That is the"
	
	para "strength of #-"
	line "mon Rangers!"
	done

.BeatenText:
	text "What great power!"
	line "Your #mon are"
	cont "marvelous!"
	done
	
TrainerYoungsterPinwheel:
	generictrainer YOUNGSTER, YOUNGSTER_PINWHEEL, EVENT_BEAT_YOUNGSTER_PINWHEEL, .SeenText, .BeatenText

	text "I want to ride"
	line "through the forest"
	cont "on a #mon!"
	done
	
.SeenText:
	text "The forest is full"
	line "of little hollows"
	
	para "and hillocks, and"
	line "walking in it is"
	cont "so fun!"
	done

.BeatenText:
	text "Your #mon are"
	line "so cool!"
	done
	
TrainerPsychicMPinwheel:
	generictrainer PSYCHICM_T, PSYCHICM_PINWHEEL, EVENT_BEAT_PSYCHICM_PINWHEEL, .SeenText, .BeatenText

	text "There is a #mon"
	line "called Musharna"
	
	para "that can eat"
	line "dreams… And even"
	
	para "make dreams real,"
	line "or so people say."
	done
	
.SeenText:
	text "This is a power"
	line "spot! It awakens"
	
	para "your dormant"
	line "power!"
	done

.BeatenText:
	text "Did you spot my"
	line "weakness?"
	done
	
TrainerHexManiacPinwheel:
	generictrainer HEX_MANIAC, HEX_MANIAC_PINWHEEL, EVENT_BEAT_HEX_MANIAC_PINWHEEL, .SeenText, .BeatenText

	text "So many feelings"
	line "fill this forest,"

	para "giving rise to a"
	line "mysterious energy."
	done
	
.SeenText:
	text "You… Who are you?"
	
	para "There is another"
	line "person here aside"
	cont "from me?"
	done

.BeatenText:
	text "So, you are a"
	line "normal person… A"
	
	para "normal #mon"
	line "trainer…"
	done
	
TrainerLassPinwheel:
	generictrainer LASS_D, LASS_PINWHEEL, EVENT_BEAT_LASS_PINWHEEL, .SeenText, .BeatenText

	text "There are #mon"
	line "hiding beyond the"
	cont "bushes!"
	done
	
.SeenText:
	text "Oh! And I just"
	line "heard a #mon,"
	cont "too! Oh, boo…"
	done

.BeatenText:
	text "Your #mon seem"
	line "kinda happy,"
	cont "trainer!"
	done
