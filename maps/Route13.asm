Route13_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 27, HIDDEN_TREE_GROTTO, 1
	warp_event  8,  3, GIANT_CHASM_1F, 2

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_JUMPTEXT, R13ChasmSignText
	bg_event 28, 46, BGEVENT_JUMPTEXT, R13UndellaSignText
	bg_event  4, 27, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_13
	bg_event 28, 41, BGEVENT_ITEM + RED_SHARD, EVENT_ROUTE_13_RED_SHARD
	bg_event 24, 45, BGEVENT_ITEM + BLUE_SHARD, EVENT_ROUTE_13_BLUE_SHARD
	
	def_object_events
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, R13Blocker1Text, EVENT_ROUTE_13_BLOCKERS
	object_event  5, 12, SPRITE_PATRAT_SIDE, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, R13Blocker2Text, EVENT_ROUTE_13_BLOCKERS
	object_event  6, 12, SPRITE_PURRLOIN_SIDE, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, R13Blocker3Text, EVENT_ROUTE_13_BLOCKERS
	object_event  7, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, R13Blocker4Text, EVENT_ROUTE_13_BLOCKERS
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR13, EVENT_ROUTE_13_YOUNGSTER
	object_event  4, 16, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerLassR13, -1
	object_event 15, 39, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, TrainerSchoolKidMR13, -1
	object_event  8, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 4, TrainerSchoolKidFR13, -1
	fruittree_event  6, 20, FRUITTREE_ROUTE_13, PECHA_BERRY, PAL_NPC_PINK
	itemball_event 10, 43, POTION, 1, EVENT_ROUTE_13_POTION
	itemball_event  4, 23, POKE_BALL, 1, EVENT_ROUTE_13_POKE_BALL
	itemball_event  4, 41, SUPER_POTION, 1, EVENT_ROUTE_13_SUPER_POTION
	itemball_event  5, 38, RARE_CANDY, 1, EVENT_ROUTE_13_RARE_CANDY
	itemball_event 21, 35, NUGGET, 1, EVENT_ROUTE_13_NUGGET
	cuttree_event  7, 41, EVENT_ROUTE_13_CUT_TREE
	
	object_const_def
	const ROUTE13_BLOCKER_1
	const ROUTE13_BLOCKER_2
	const ROUTE13_BLOCKER_3
	const ROUTE13_BLOCKER_4
	const ROUTE13_YOUNGSTER
	
TrainerYoungsterR13:
	trainer YOUNGSTER, YOUNGSTER_R13, EVENT_BEAT_YOUNGSTER_R13, YoungsterR13SeenText, YoungsterR13BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_YOUNGSTER_DAN
	opentext
	checkflag ENGINE_DAN_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_YOUNGSTER_DAN
	iftruefwd .NumberAccepted
	checkevent EVENT_DAN_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext YoungsterR13AfterText
	promptbutton
	setevent EVENT_DAN_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_YOUNGSTER_DAN
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_DAN
	gettrainername YOUNGSTER, YOUNGSTER_R13, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext YoungsterR13BeatenText, 0
	;checkevent EVENT_BEAT_POKEMON_LEAGUE
	;iftruefwd .LoadFight6
	;checkmapscene SEASIDE_CAVE_CHAMBER
	;ifequalfwd SCENE_FINISHED, .LoadFight5
	;checkevent EVENT_FINISHED_PWT
	;iftruefwd .LoadFight4
	;checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	;iftruefwd .LoadFight3
	;checkevent EVENT_BIANCA_CASTELIA_CALL
	;iftruefwd .LoadFight2
	checkevent EVENT_BEAT_MARLON
	iftruefwd .LoadFight1
; Fight0
	loadtrainer YOUNGSTER, YOUNGSTER_R13
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1:
	loadtrainer YOUNGSTER, DAN_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2:
	loadtrainer YOUNGSTER, DAN_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3:
	loadtrainer YOUNGSTER, DAN_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight4:
	loadtrainer YOUNGSTER, DAN_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight5:
	loadtrainer YOUNGSTER, DAN_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight6:
	loadtrainer YOUNGSTER, DAN_REMATCH_6
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftm
	rematchgift REMATCHGIFT_TIER_1
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
	
TrainerLassR13:
	generictrainer LASS, LASS_R13, EVENT_BEAT_LASS_R13, .SeenText, .BeatenText

	text "Maybe I'll try a"
	line "wild #mon next"

	para "time so that I can"
	line "win…"
	done
	
.SeenText:
	text "Hey, you! Have you"
	line "seen my cute #-"
	cont "mon? Take a look!"
	done

.BeatenText:
	text "My #mon are"
	line "cute even if they"
	cont "lose!"
	done
	
TrainerSchoolKidMR13:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_R13, EVENT_BEAT_SCHOOL_KIDM_R13, .SeenText, .BeatenText

	text "I know! I'll go"
	line "home and take a"
	cont "nap!"
	done
	
.SeenText:
	text "I'm the strongest"
	line "trainer in my"
	cont "class!"
	done

.BeatenText:
	text "I guess I'm not"
	line "the strongest in"
	cont "the world."
	done
	
TrainerSchoolKidFR13:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_R13, EVENT_BEAT_SCHOOL_KIDF_R13, .SeenText, .BeatenText

	text "If #mon were a"
	line "subject at school,"
	cont "I'd be the best!"
	done
	
.SeenText:
	text "My favorite class"
	line "is math!"
	done

.BeatenText:
	text "Oh, no!"
	line "How could I lose?"
	done
	
YoungsterR13SeenText:
	text "You can tell how"
	line "much your opponent"
	cont "wants to fight by"
	
	para "looking into their"
	line "eyes, don't you"
	cont "think?"
	done

YoungsterR13BeatenText:
	text "Wow! I could tell"
	line "you really wanted"
	cont "to win!"
	done
	
YoungsterR13AfterText:
	text "I'm gonna keep"
	line "battling to make"

	para "my #mon"
	line "stronger!"
	done
	
R13Blocker1Text:
	text "Hey, watch out!"
	
	para "We're in the"
	line "middle of a #-"
	cont "mon battle!"
	done
	
R13Blocker2Text:
	text "Patrat: Prah!"
	done
	
R13Blocker3Text:
	text "Purrloin: Prrr-"
	done
	
R13Blocker4Text:
	text "Stop bothering"
	line "me! I'll battle"
	
	para "you when I'm"
	line "finished."
	done
	
R13ChasmSignText:
	text "Giant Chasm"
	
	para "Beware of wild"
	line "#mon!"
	done
	
R13UndellaSignText:
	text "Route 13"
	
	para "A beachside"
	line "stroll from"
	
	para "Undella Town to"
	line "Lacunosa Town."
	done
	