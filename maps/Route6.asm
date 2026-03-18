Route6_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 46, 42, DRIFTVEIL_CITY, 12
	warp_event 46, 43, DRIFTVEIL_CITY, 13
	warp_event 27, 33, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event 43, 42, BGEVENT_JUMPTEXT, Route6SignText
	bg_event 29, 21, BGEVENT_JUMPTEXT, Route6LabSignText
	bg_event  7, 13, BGEVENT_JUMPTEXT, Route6ChargestoneSignText
	bg_event 27, 33, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_6
	bg_event 28, 33, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_6
	
	def_object_events
	object_event 24, 22, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistMR6, -1
	object_event 44, 34, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederFR6, -1
	object_event 14, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederMR6, -1
	object_event 30, 22, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerScientistFR6, -1
	object_event 36, 32, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 3, TrainerParasolLady1R6, -1
	object_event 27, 37, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 2, TrainerParasolLady2R6, -1
	object_event  5, 24, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerMR6, -1
	object_event 43, 27, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerFR6, -1
	object_event  8, 25, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route6AmoongussScript, EVENT_ROUTE_6_AMOONGUSS_1
	object_event 16, 27, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route6AmoongussScript, EVENT_ROUTE_6_AMOONGUSS_2
	object_event 45, 26, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route6AmoongussScript, EVENT_ROUTE_6_AMOONGUSS_3
	itemball_event 37, 38, HYPER_POTION, 3, EVENT_ROUTE_6_HYPER_POTION
	itemball_event 44, 20, ELIXIR, 1, EVENT_ROUTE_6_ELIXIR
	itemball_event 12, 13, FRIEND_BALL, 3, EVENT_ROUTE_6_FRIEND_BALL
	itemball_event 10, 24, TINYMUSHROOM, 3, EVENT_ROUTE_6_TINYMUSHROOM
	itemball_event  4, 27, BIG_MUSHROOM, 1, EVENT_ROUTE_6_BIG_MUSHROOM
	fruittree_event 27, 19, FRUITTREE_ROUTE_6, SITRUS_BERRY, PAL_NPC_BROWN
	
Route6AmoongussScript:
	cry AMOONGUSS
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end

TrainerScientistMR6:
	trainer SCIENTISTM, SCIENTISTM_R6, EVENT_BEAT_SCIENTISTM_R6, ScientistMR6SeenText, ScientistMR6BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCIENTIST_MARCO
	opentext
	checkflag ENGINE_MARCO_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_SCIENTIST_MARCO
	iftruefwd .NumberAccepted
	checkevent EVENT_MARCO_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext ScientistMR6AfterText
	promptbutton
	setevent EVENT_MARCO_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCIENTIST_MARCO
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_MARCO
	gettrainername SCIENTISTM, SCIENTISTM_R6, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext ScientistMR6BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight2
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight1
; Fight0
	loadtrainer SCIENTISTM, SCIENTISTM_R6
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer SCIENTISTM, MARCO_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer SCIENTISTM, MARCO_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftm
	rematchgift REMATCHGIFT_TIER_3
	ifequalfwd FALSE, .PackIsFull
	end
	
.NumberAccepted:
	jumpstd numberacceptedm
	
.PhoneFull:
	jumpstd phonefullm
	
.NumberDeclined:
	jumpstd numberdeclinedm
	
.PackIsFull:
	jumpstd packfullm
	
TrainerPkmnBreederMR6:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R6, EVENT_BEAT_PKMN_BREEDERM_R6, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R6
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "We've just got to"
	line "do what we can!"
	done
	
.BeatenText:
	text "I feel like I"
	line "understood what I"
	
	para "could and couldn't"
	line "do…"
	done
	
.AfterText:
	text "I'll try to"
	line "increase the"
	
	para "things I can do"
	line "and challenge you"
	
	para "again! Come talk"
	line "to me if you want"
	cont "a rematch!"
	done
	
TrainerPkmnBreederFR6:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R6, EVENT_BEAT_PKMN_BREEDERF_R6, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R6
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "Going through"
	line "trials is the best"
	
	para "for growing"
	line "stronger!"
	done
	
.BeatenText:
	text "You were the"
	line "perfect trial!"
	done
	
.AfterText:
	text "We raise our #-"
	line "mon by having them"
	cont "battle!"
	
	para "If you want to"
	line "battle again, come"
	cont "and see me!"
	done
	
TrainerScientistFR6:
	generictrainer SCIENTISTF, SCIENTISTF_R6, EVENT_BEAT_SCIENTISTF_R6, .SeenText, .BeatenText

	text "I wonder if Prof."
	line "Rowan of the"
	
	para "Sinnoh region has"
	line "managed to unlock"
	
	para "the mystery of how"
	line "#mon evolve."
	done
	
.SeenText:
	text "I shall uncover"
	line "the mechanism"
	
	para "behind trainer and"
	line "#mon relation-"
	cont "ships!"
	done

.BeatenText:
	text "Why are #mon"
	line "able to understand"
	
	para "their trainers'"
	line "orders?"
	done
	
TrainerParasolLady1R6:
	generictrainer PARASOL_LADY, PARASOL_LADY_R6_1, EVENT_BEAT_PARASOL_LADY_R6_1, .SeenText, .BeatenText

	text "Rain, rain! I love"
	line "rain! If I'm"
	
	para "crying, I can hide"
	line "my tears with my"
	cont "parasol!"
	done
	
.SeenText:
	text "Pouring rain…"
	line "Fighting #mon…"
	done

.BeatenText:
	text "Ah, the sad melody"
	line "of a total defeat…"
	done
	
TrainerParasolLady2R6:
	generictrainer PARASOL_LADY, PARASOL_LADY_R6_2, EVENT_BEAT_PARASOL_LADY_R6_2, .SeenText, .BeatenText

	text "I'll go home and"
	line "get my boyfriend"
	
	para "to… No, I'll get"
	line "my #mon to"
	cont "cheer me up!"
	done
	
.SeenText:
	text "Water fun with"
	line "#mon! Do you"
	
	para "want to play with"
	line "us?"
	done

.BeatenText:
	text "My oh my… I lost."
	done
	
TrainerPkmnRangerMR6:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_R6, EVENT_BEAT_PKMN_RANGERM_R6, .SeenText, .BeatenText

	text "When we are"
	line "surrounded by"
	
	para "green, we feel"
	line "more energetic."
	cont "Don't you think?"
	done
	
.SeenText:
	text "Nature!"
	done

.BeatenText:
	text "Natuuure!"
	done
	
TrainerPkmnRangerFR6:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_R6, EVENT_BEAT_PKMN_RANGERF_R6, .SeenText, .BeatenText

	text "Be careful when"
	line "checking for"
	cont "items!"
	done
	
.SeenText:
	text "There are some"
	line "#mon that can"
	
	para "disguise them-"
	line "selves!"
	done

.BeatenText:
	text "I lost…"
	done
	
ScientistMR6SeenText:
	text "Testing out one's"
	line "theory is all a"
	cont "part of science!"
	done
	
ScientistMR6BeatenText:
	text "Analyzing the"
	line "current situation"
	
	para "is also a part of"
	line "science!"
	done

ScientistMR6AfterText:
	text "Just because a"
	line "previous method"
	
	para "worked before,"
	line "doesn't mean it"
	cont "will again!"
	done
	
Route6SignText:
	text "Route 6."
	line "West to Charge-"
	cont "stone Cave."
	done
	
Route6LabSignText:
	text "Route 6"
	line "Weather Lab."
	done
	
Route6ChargestoneSignText:
	text "Chargestone Cave"
	line "ahead."
	
	para "Passage to"
	line "Mistralton City."
	done
	