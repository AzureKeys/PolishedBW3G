Route7North_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	
	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_JUMPTEXT, Route7TwistMountainSignText
	bg_event  0, 36, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_7_NORTH_RARE_CANDY
	
	def_object_events
	object_event 11, 43, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBackpackerMR7, -1
	object_event  7, 21, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerFR7, -1
	object_event  6, 33, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, TrainerHarlequinR7, -1
	object_event  3, 40, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR7, -1
	object_event  3, 41, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR7, -1
	itemball_event 15, 14, SHELL_STONE, 1, EVENT_ROUTE_7_NORTH_SHELL_STONE
	itemball_event  4, 19, HEAT_ROCK, 1, EVENT_ROUTE_7_NORTH_HEAT_ROCK
	tmhmball_event 19, 44, TM_X_SCISSOR, EVENT_ROUTE_7_NORTH_TM_X_SCISSOR

TrainerBackpackerMR7:
	trainer BACKPACKERM, BACKPACKERM_R7, EVENT_BEAT_BACKPACKERM_R7, BackpackerMR7SeenText, BackpackerMR7BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BACKPACKER_PARKER
	opentext
	checkflag ENGINE_PARKER_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_BACKPACKER_PARKER
	iftruefwd .NumberAccepted
	checkevent EVENT_PARKER_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext BackpackerMR7AfterText
	promptbutton
	setevent EVENT_PARKER_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BACKPACKER_PARKER
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_PARKER
	gettrainername BACKPACKERM, BACKPACKERM_R7, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext BackpackerMR7BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight2
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight1
; Fight0
	loadtrainer BACKPACKERM, BACKPACKERM_R7
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer BACKPACKERM, PARKER_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer BACKPACKERM, PARKER_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
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
	
TrainerBackpackerFR7:
	generictrainer BACKPACKERF, BACKPACKERF_R7, EVENT_BEAT_BACKPACKERF_R7, .SeenText, .BeatenText

	text "#mon are alive,"
	line "just like you or"
	
	para "me, so it's no"
	line "wonder that they"
	cont "might feel down."
	
	para "When that happens,"
	line "just let them take"
	cont "it easy."
	done
	
.SeenText:
	text "Oh my! My #mon"
	line "really seem raring"
	cont "to go today!"
	done

.BeatenText:
	text "It seems my #-"
	line "mon weren't as"
	
	para "ready as I had"
	line "thought!"
	done
	
TrainerHarlequinR7:
	generictrainer HARLEQUIN, HARLEQUIN_R7, EVENT_BEAT_HARLEQUIN_R7, .SeenText, .BeatenText

	text "I guess I was the"
	line "clown after all."
	done
	
.SeenText:
	text "#mon battles"
	line "are no joking"
	cont "matter!"
	done

.BeatenText:
	text "You weren't"
	line "clowining around!"
	done
	
TrainerTwinsR7:
	generictrainer TWINS, TWINS_R7, EVENT_BEAT_TWINS_R7, .SeenText, .BeatenText

	text "If my sister is"
	line "full of energy,"
	
	para "then I'm full of"
	line "energy, too!"
	done
	
.SeenText:
	text "The teamwork of"
	line "twins… A true"
	
	para "example of"
	line "perfection!"
	done

.BeatenText:
	text "I can't believe"
	line "it! We should have"
	
	para "been perfect, but"
	line "we lost!"
	done
	
BackpackerMR7SeenText:
	text "I travel the world"
	line "because I'm look-"
	cont "ing for danger!"
	
	para "Are you dangerous?"
	done
	
BackpackerMR7BeatenText:
	text "You're so danger-"
	line "ous, I was in"
	
	para "danger of giving"
	line "up the match!"
	done
	
BackpackerMR7AfterText:
	text "Why do I seek out"
	line "danger? Because"
	
	para "it's exciting,"
	line "that's why! It"
	
	para "makes me feel"
	line "alive!"
	done
	
Route7TwistMountainSignText:
	text "Twist Mountain"
	line "ahead."
	done
	