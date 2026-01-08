LostlornForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37,  5, LENTIMAS_LOSTLORN_GATE, 3
	warp_event 17, 54, ROUTE_16_LOSTLORN_GATE, 1
	warp_event 17, 55, ROUTE_16_LOSTLORN_GATE, 2
	warp_event 13, 25, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event  5, 27, 0, LostlornForestGruntsScript
	coord_event 10, 36, 1, LostlornForestInferScript

	def_bg_events
	bg_event 37,  7, BGEVENT_JUMPTEXT, LostlornForestSignText
	bg_event 15, 53, BGEVENT_JUMPTEXT, LostlornForestRoute16SignText
	bg_event  0,  4, BGEVENT_ITEM + ETHER, EVENT_LOSTLORN_FOREST_ETHER_2
	bg_event 15,  8, BGEVENT_ITEM + SUPER_POTION, EVENT_LOSTLORN_FOREST_SUPER_POTION_2
	bg_event 15,  8, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_LOSTLORN_FOREST_BIG_MUSHROOM
	bg_event 13, 25, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_LOSTLORN
	bg_event 14, 25, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_LOSTLORN
	
	def_object_events
	object_event  9, 41, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_INFER
	object_event  8, 27, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_GRUNTS
	object_event  9, 27, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_GRUNTS
	object_event 15, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederMLostlorn, -1
	object_event 12, 44, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederFLostlorn, -1
	object_event 30, 17, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 2, TrainerSchoolKidFLostlorn, -1
	object_event  1,  8, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 3, TrainerSchoolKidMLostlorn, -1
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 1, TrainerYoungsterLostlorn, -1
	object_event  8, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerLassLostlorn, -1
	itemball_event 21, 19, SUPER_POTION, 1, EVENT_LOSTLORN_FOREST_SUPER_POTION_1
	itemball_event 11, 50, ETHER, 1, EVENT_LOSTLORN_FOREST_ETHER_1
	itemball_event  7, 15, ANTIDOTE, 3, EVENT_LOSTLORN_FOREST_ANTIDOTE
	itemball_event 31, 16, NET_BALL, 3, EVENT_LOSTLORN_FOREST_NET_BALL
	itemball_event 12, 17, MIRACLE_SEED, 1, EVENT_LOSTLORN_FOREST_MIRACLE_SEED
	itemball_event 23, 28, LEAF_STONE, 1, EVENT_LOSTLORN_FOREST_LEAF_STONE
	tmhmball_event 26, 29, TM_SOLAR_BEAM, EVENT_LOSTLORN_FOREST_TM_SOLAR_BEAM
	cuttree_event 14,  9, EVENT_LOSTLORN_FOREST_CUT_TREE_1
	cuttree_event  2, 23, EVENT_LOSTLORN_FOREST_CUT_TREE_2
	
	object_const_def
	const LOSTLORNFOREST_INFER
	const LOSTLORNFOREST_GRUNTM
	const LOSTLORNFOREST_GRUNTF
	const LOSTLORNFOREST_PKMN_BREEDERM
	const LOSTLORNFOREST_PKMN_BREEDERF
	
LostlornForestGruntsScript:
	showtext .IntroText
	showemote EMOTE_SHOCK, LOSTLORNFOREST_GRUNTF, 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .BehindYouText
	turnobject LOSTLORNFOREST_GRUNTM, LEFT
	showtext .Seen1Text
	applymovement LOSTLORNFOREST_GRUNTM, LostlornForestGruntM_ApproachMovement
	winlosstext .Beaten1Text, 0
	setlasttalked LOSTLORNFOREST_GRUNTM
	loadtrainer GRUNTM, GRUNTM_LOSTLORN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	pause 15
	applymovement LOSTLORNFOREST_GRUNTM, LostlornForestGruntM_BackUpMovement
	showtext .Seen2Text
	applymovement LOSTLORNFOREST_GRUNTF, LostlornForestGruntF_ApproachMovement
	winlosstext .Beaten2Text, 0
	setlasttalked LOSTLORNFOREST_GRUNTF
	loadtrainer GRUNTF, GRUNTF_LOSTLORN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	pause 15
	applymovement LOSTLORNFOREST_GRUNTF, LostlornForestGruntF_BackUpMovement
	showtext .AfterText
	applymovement LOSTLORNFOREST_GRUNTM, LostlornForestGrunt_LeaveMovement
	applymovement LOSTLORNFOREST_GRUNTF, LostlornForestGrunt_LeaveMovement
	disappear LOSTLORNFOREST_GRUNTM
	disappear LOSTLORNFOREST_GRUNTF
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	setscene 1
	end
	
.IntroText:
	text "Are you sure we're"
	line "going the right"
	cont "way?"

	para "Nimbasa City has"
	line "got to be around"
	cont "here somewhere…"
	done
	
.BehindYouText:
	text "Hey! There's"
	line "someone behind"
	cont "you!"
	done
	
.Seen1Text:
	text "Hey, you better"
	line "not mess with us!"
	
	para "I'll show you the"
	line "power of Team"
	cont "Plasma!"
	done
	
.Beaten1Text:
	text "Arrgh, no way!"
	done
	
.Seen2Text:
	text "Darn it, you were"
	line "too soft."
	
	para "I'll show you how"
	line "it's done!"
	done
	
.Beaten2Text:
	text "No, how could I"
	line "lose?!"
	done
	
.AfterText:
	text "C'mon, let's get"
	line "out of here!"
	
	para "You haven't seen"
	line "the last of us!"
	done
	
LostlornForestInferScript:
	special Special_FadeOutMusic
	pause 30
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	applymovement LOSTLORNFOREST_INFER, LostlornForestInfer_ApproachMovement
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LOSTLORNFOREST_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
	loadtrainer INFER1, INFER2_OSHAWOTT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.Oshawott:
	loadtrainer INFER1, INFER2_SNIVY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.Snivy:
	loadtrainer INFER1, INFER2_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
; fallthrough
.AfterBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext .AfterText
	applymovement LOSTLORNFOREST_INFER, LostlornForestInfer_LeaveMovement
	disappear LOSTLORNFOREST_INFER
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	setscene 2
	end
	
.SeenText:
	text "You, what are you"
	line "doing here?"

	para "What? Team Plasma?"
	line "I don't know what"
	cont "you're talking"
	cont "about."
	
	para "I told you not"
	line "to follow me."
	
	para "Guess I'll have"
	line "to teach you a"
	cont "lesson!"
	done
	
.BeatenText:
	text "No! How could"
	line "I lose?"
	done
	
.AfterText:
	text "Darn, I'm still"
	line "not strong enough…"

	para "Whatever, this"
	line "won't hold me"
	cont "back."
	
	para "I'm telling you,"
	line "don't get involved"
	cont "with Team Plasma."
	
	para "Next time we meet,"
	line "you won't be so"
	cont "lucky!"
	done
	
TrainerPkmnBreederMLostlorn:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_LOSTLORN, EVENT_BEAT_PKMN_BREEDERM_LOSTLORN, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LOSTLORNFOREST_PKMN_BREEDERM
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_LOSTLORN
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "Having lots of"
	line "battles is the"

	para "best way to raise"
	line "#mon quickly."
	done
	
.BeatenText:
	text "Your training"
	line "method is great,"
	
	para "I'm going to copy"
	line "it!"
	done
	
.AfterText:
	text "I want to battle"
	line "you again some"
	cont "time!"
	
	para "Come talk to me if"
	line "you want another"
	cont "battle!"
	done
	
TrainerPkmnBreederFLostlorn:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_LOSTLORN, EVENT_BEAT_PKMN_BREEDERF_LOSTLORN, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LOSTLORNFOREST_PKMN_BREEDERF
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_LOSTLORN
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "I need to practice"
	line "more as a #mon"
	cont "breeder."
	
	para "Please, be my"
	line "opponent!"
	done
	
.BeatenText:
	text "I've still got a"
	line "long way to go…"
	
	para "I'll keep raising"
	line "my #mon!"
	done
	
.AfterText:
	text "Thank you so much!"
	line "I learned a lot"
	cont "from our battle."
	
	para "Come talk to me if"
	line "you want to"
	cont "battle again!"
	done
	
TrainerSchoolKidMLostlorn:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_LOSTLORN, EVENT_BEAT_SCHOOL_KIDM_LOSTLORN, .SeenText, .BeatenText

	text "I guess it was"
	line "pretty distant for"
	cont "me…"
	done
	
.SeenText:
	text "I have a riddle"
	line "for you! Do you"
	
	para "know what is"
	line "distant but close?"
	done

.BeatenText:
	text "The difference"
	line "between winning"
	cont "and losing!"
	done
	
TrainerSchoolKidFLostlorn:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_LOSTLORN, EVENT_BEAT_SCHOOL_KIDF_LOSTLORN, .SeenText, .BeatenText

	text "I see! If a high-"
	line "level #mon"
	
	para "defeats a lower"
	line "level #mon,"
	
	para "they don't receive"
	line "many Exp points!"
	done
	
.SeenText:
	text "I need to research"
	line "the Exp points of"
	
	para "#mon for my"
	line "homework!"
	done

.BeatenText:
	text "It's not fair to"
	line "use moves I wasn't"
	cont "expecting!"
	done
	
TrainerYoungsterLostlorn:
	generictrainer YOUNGSTER_D, YOUNGSTER_LOSTLORN, EVENT_BEAT_YOUNGSTER_LOSTLORN, .SeenText, .BeatenText

	text "I still have no"
	line "idea what this"
	cont "place is like!"
	
	para "I never carry a"
	line "map with me."
	done
	
.SeenText:
	text "I might be lost"
	line "right now, but"
	
	para "I'll battle you"
	line "anyway!"
	done

.BeatenText:
	text "I don't stand a"
	line "chance if I fight"
	cont "when I'm lost!"
	done
	
TrainerLassLostlorn:
	generictrainer LASS, LASS_LOSTLORN, EVENT_BEAT_LASS_LOSTLORN, .SeenText, .BeatenText

	text "If you don't have"
	line "many #mon with"
	
	para "you, it's easy to"
	line "get into trouble."
	done
	
.SeenText:
	text "Are you ready? I"
	line "am! Let's go!"
	done

.BeatenText:
	text "What? I never even"
	line "considered losing"
	
	para "before going into"
	line "battle!"
	done
	
LostlornForestGruntM_ApproachMovement:
	step_left
	step_left
	step_end
	
LostlornForestGruntM_BackUpMovement:
	fix_facing
	step_right
	step_right
	remove_fixed_facing
	step_end
	
LostlornForestGruntF_ApproachMovement:
	step_down
	step_left
	step_left
	step_up
	step_left
	step_end
	
LostlornForestGruntF_BackUpMovement:
	fix_facing
	step_right
	remove_fixed_facing
	step_end
	
LostlornForestGrunt_LeaveMovement:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
	
LostlornForestInfer_ApproachMovement:
	step_up
	step_up
	step_right
	step_up
	step_up
	step_end
	
LostlornForestInfer_LeaveMovement:
	big_step_down
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	step_end
	
LostlornForestSignText:
	text "Lostlorn Forest"

	para "Take caution not"
	line "to become lost."
	done
	
LostlornForestRoute16SignText:
	text "Route 16 ahead."

	para "Passage to"
	line "Nimbasa City."
	done
	