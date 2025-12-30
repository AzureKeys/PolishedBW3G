UndellaTown_MapScriptHeader:
	def_scene_scripts
	scene_script UndellaTownTrigger0
	scene_script UndellaTownTrigger1
	scene_script UndellaTownTrigger2

	def_callbacks
	callback MAPCALLBACK_NEWMAP, UndellaFlyPoint
	callback MAPCALLBACK_TILES, UndellaSetTiles

	def_warp_events
	warp_event 25,  7, ROUTE_13_UNDELLA_TOWN_GATE, 3
	warp_event 29,  9, UNDELLA_POKECENTER, 1
	warp_event 21,  7, UNDELLA_FISHING_GURU_HOUSE, 1

	def_coord_events
	coord_event  4,  9, 1, UndellaTownBlockerScript

	def_bg_events
	bg_event  6,  8, BGEVENT_JUMPTEXT, UndellaReversalSignText
	bg_event 20,  8, BGEVENT_JUMPTEXT, UndellaFishingSignText
	bg_event 16,  8, BGEVENT_JUMPTEXT, UndellaMarineTubeSignText
	bg_event 27,  9, BGEVENT_JUMPTEXT, UndellaTownSignText
	bg_event 18,  6, BGEVENT_ITEM + PEARL, EVENT_UNDELLA_TOWN_PEARL_1
	bg_event  8, 16, BGEVENT_ITEM + PEARL, EVENT_UNDELLA_TOWN_PEARL_2
	bg_event 11,  7, BGEVENT_IFNOTSET, UndellaTownCynthiaDoor

	def_object_events
	object_event 20,  8, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_UNDELLA_TOWN_MARLON
	object_event  5,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UndellaTownBlockerTextScript, -1
	object_event 24, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 0, TrainerFisher1UndellaTown, -1
	object_event 11, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 0, TrainerFisher2UndellaTown, -1
	object_event 17, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndellaTownBugCatcherText, -1
	object_event 18, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, UndellaTownFisherText, -1
	object_event 25, 22, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 2, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndellaTownCooltrainerMText, -1
	itemball_event 35, 14, LUCKY_EGG, 1, EVENT_UNDELLA_TOWN_LUCKY_EGG
	itemball_event 11,  4, FRIEND_BALL, 3, EVENT_UNDELLA_TOWN_FRIEND_BALL
	
	object_const_def
	const UNDELLATOWN_MARLON
	const UNDELLATOWN_BLOCKER
	
UndellaTownTrigger0:
	sdefer UndellaTown_MarlonScene
UndellaTownTrigger1:
UndellaTownTrigger2:
	end
	
UndellaTown_MarlonScene:
	applymovement PLAYER, UndellaTown_DontLeaveMovement
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_MARLON_THEME
	turnobject PLAYER, LEFT
	applymovement UNDELLATOWN_MARLON, UndellaTown_MarlonArriveMovement
	showtext .MarlonText
	applymovement UNDELLATOWN_MARLON, UndellaTown_MarlonLeaveMovement
	disappear UNDELLATOWN_MARLON
	setevent EVENT_MET_MARLON_IN_UNDELLA
	setscene 1
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
.MarlonText:
	text "Marlon: Hey,"
	line "<PLAYER>!"
	
	para "I'm sure ya got a"
	line "taste of #mon"
	
	para "battling on the"
	line "way here!"
	
	para "By the way, some"
	line "#mon trainers"
	
	para "are havin' a"
	line "contest down on"
	
	para "Route 14, just"
	line "south of town."
	
	para "There's a prize"
	line "for anyone who"
	
	para "can beat all of"
	line "'em!"
	
	para "It should give"
	line "you some sweet"
	cont "experience!"
	
	para "After that, you"
	line "may even be ready"
	
	para "to take on my"
	line "Gym!"
	
	para "By the way, the"
	line "Marine Tube here"
	
	para "in town can take"
	line "ya right back home"
	
	para "to Humilau City"
	line "real quick!"
	
	para "Come on by the"
	line "Gym when you're"
	
	para "ready, I'll be"
	line "waitin' for ya,"
	cont "<PLAYER>!"
	done
	
UndellaFlyPoint:
	setflag ENGINE_FLYPOINT_UNDELLA
	endcallback
	
UndellaSetTiles:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalsefwd .done
	changeblock 10,  6, $16 ; unlock Cynthia's door
.done
	endcallback
	
UndellaTownBlockerScript:
	showemote EMOTE_SHOCK, UNDELLATOWN_BLOCKER, 15
	applymovement UNDELLATOWN_BLOCKER, UndellaTown_BlockerBlockMovement
	turnobject PLAYER, UP
	checkflag ENGINE_WAVEBADGE
	iftruefwd .OkayToEnter
	showtext .BlockedText
	applymovement UNDELLATOWN_BLOCKER, UndellaTown_BlockerReturnMovement
	applymovement PLAYER, UndellaTown_DontLeaveMovement
	end
	
.OkayToEnter:
	showtext UndellaTownBlockerSafeText
	applymovement UNDELLATOWN_BLOCKER, UndellaTown_BlockerReturnMovement
	setscene 2
	end
	
.BlockedText:
	text "WAIT!"
	
	para "Reversal Mountain"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #mon!"
	
	para "You should at"
	line "least have a Gym"
	cont "Badge before"
	
	para "entering a place"
	line "like this."
	done
	
UndellaTownBlockerTextScript:
	checkscene
	ifequalfwd 2, .Safe
	checkflag ENGINE_WAVEBADGE
	iffalsefwd .Dangerous
	setscene 2
.Safe
	showtext UndellaTownBlockerSafeText
	end
	
.Dangerous
	jumpthistext
	text "Reversal Mountain"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #mon."
	
	para "You should at"
	line "least have a Gym"
	cont "Badge before"
	
	para "entering a place"
	line "like this."
	done
	
UndellaTownCynthiaDoor:
	dw EVENT_BEAT_POKEMON_LEAGUE
	jumpthistext
	text "Huh? It's locked…"
	done
	
TrainerFisher1UndellaTown:
	generictrainer FISHER, FISHER_UNDELLA_1, EVENT_BEAT_FISHER_UNDELLA_1, .SeenText, .BeatenText

	text "Life is just like"
	line "fishing. You can't"
	
	para "catch what you"
	line "don't aim for, but"
	
	para "even if you aim"
	line "for something, you"
	
	para "still can't catch"
	line "it!"
	done
	
.SeenText:
	text "Okay, good catch!"
	line "My next catch will"
	cont "be called victory!"
	done
	
.BeatenText:
	text "The victory that"
	line "got away was"
	cont "thiiiis big!"
	done
	
TrainerFisher2UndellaTown:
	generictrainer FISHER_D, FISHER_UNDELLA_2, EVENT_BEAT_FISHER_UNDELLA_2, .SeenText, .BeatenText

	text "I guess I'd better"
	line "fish up some more"
	cont "#mon!"
	done
	
.SeenText:
	text "I'll battle you"
	line "with my freshly"
	cont "caught #mon!"
	done
	
.BeatenText:
	text "I lost it!"
	done
	
UndellaTown_MarlonArriveMovement:
	step_right
	step_right
	step_right
	step_right
	step_end

UndellaTown_MarlonLeaveMovement:
	step_left
	step_left
	step_left
	step_left
	step_end
	
UndellaTown_BlockerBlockMovement:
	big_step_left
	turn_head_down
	step_end
	
UndellaTown_BlockerReturnMovement:
	step_right
	turn_head_down
	step_end
	
UndellaTown_DontLeaveMovement:
	step_down
	step_end
	
UndellaTownBlockerSafeText:
	text "Reversal Mountain"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #mon."
	
	para "Oh, I see you have"
	line "the Wave Badge"
	
	para "from the Humilau"
	line "City Gym."
	
	para "Be careful in"
	line "there!"
	done
	
UndellaTownSignText:
	text "Undella Town"
	
	para "A town of"
	line "rippling waves."
	done
	
UndellaReversalSignText:
	text "Reversal Mountain"
	
	para "Enter at your"
	line "own risk!"
	done
	
UndellaFishingSignText:
	text "Fishing Guru's"
	line "house."
	done
	
UndellaMarineTubeSignText:
	text "Marine Tube"
	
	para "Passage to"
	line "Humilau City."
	done
	
UndellaTownBugCatcherText:
	text "I wanted to learn"
	line "how to fish for"
	
	para "#mon, but my"
	line "mom says it's too"
	cont "dangerous…"
	done
	
UndellaTownFisherText:
	text "This little beach-"
	line "side town is so"
	cont "nice for fishing!"
	
	para "If you want to"
	line "learn to fish,"
	
	para "go see the fishing"
	line "guru in town!"
	done

UndellaTownCooltrainerMText:
	text "The kids at the"
	line "school put on a"
	
	para "contest for #-"
	line "mon trainers on"
	cont "Route 14."
	
	para "Beat all five"
	line "trainers, and you"
	cont "receive a prize."
	done
	