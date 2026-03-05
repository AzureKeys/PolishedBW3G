Route1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 38, ROUTE_1_ROUTE_17_GATE, 3
	warp_event  6, 39, ROUTE_1_ROUTE_17_GATE, 4
	
	def_coord_events

	def_bg_events
	bg_event 31, 17, BGEVENT_JUMPTEXT, R1SignText
	bg_event 23, 12, BGEVENT_ITEM + FULL_RESTORE, EVENT_ROUTE_1_FULL_RESTORE
	bg_event 25, 24, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_ROUTE_1_BIG_MUSHROOM
	
	def_object_events
	object_event 29,  7, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerMaidR1, -1
	object_event 27, 23, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerMR1, -1
	object_event 30, 23, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerFR1, -1
	object_event 27, 38, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerBlackbeltR1, -1
	object_event 20, 15, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBattleGirlR1, -1
	object_event 33, 14, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR1, -1
	object_event 33, 15, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR1, -1
	fruittree_event 31, 40, FRUITTREE_ROUTE_1, CHERI_BERRY, PAL_NPC_RED
	itemball_event 26,  6, HEAVY_BALL, 3, EVENT_ROUTE_1_HEAVY_BALL
	itemball_event 18, 14, PROTEIN, 1, EVENT_ROUTE_1_PROTEIN
	
TrainerMaidR1:
	trainer MAID, MAID_R1, EVENT_BEAT_MAID_R1, MaidR1SeenText, MaidR1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_MAID_CLARISSA
	opentext
	checkflag ENGINE_CLARISSA_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_MAID_CLARISSA
	iftruefwd .NumberAccepted
	checkevent EVENT_CLARISSA_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext MaidR1AfterText
	promptbutton
	setevent EVENT_CLARISSA_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_MAID_CLARISSA
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_CLARISSA
	gettrainername MAID, MAID_R1, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext MaidR1BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight3
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight2
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight1
; ; Fight0
	loadtrainer MAID, MAID_R1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer MAID, CLARISSA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer MAID, CLARISSA_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3
	loadtrainer MAID, CLARISSA_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftf
	rematchgift REMATCHGIFT_TIER_2
	ifequalfwd FALSE, .PackIsFull
	end
	
.NumberAccepted:
	jumpstd numberacceptedf
	
.PhoneFull:
	jumpstd phonefullf
	
.NumberDeclined:
	jumpstd numberdeclinedf
	
.PackIsFull:
	jumpstd packfullf
	
TrainerPkmnRangerMR1:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_R1, EVENT_BEAT_PKMN_RANGERM_R1, .SeenText, .BeatenText

	text "From today to"
	line "tomorrow… people,"

	para "#mon, and the"
	line "world… They're all"
	
	para "connected, you"
	line "know?"
	done
	
.SeenText:
	text "I choose a move,"
	line "and my #mon"
	cont "will do the move."

	para "In a moment, that"
	line "move will reach"
	cont "your #mon!"
	done

.BeatenText:
	text "I lost, but during"
	line "the battle, we"
	
	para "were connected,"
	line "right?"
	done
	
TrainerPkmnRangerFR1:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_R1, EVENT_BEAT_PKMN_RANGERF_R1, .SeenText, .BeatenText

	text "I came all the way"
	line "here to hear Prof."

	para "Bel talk! She used"
	line "to be a #mon"

	para "trainer too, so I"
	line "bet we'd have a"

	para "great time"
	line "swapping tales!"
	done
	
.SeenText:
	text "Hm? You're headed"
	line "for the Juniper"

	para "#mon Lab, aren't"
	line "you? Didn't you"

	para "know? There's a new"
	line "Prof. there now!"
	done

.BeatenText:
	text "You're not an"
	line "opponent one could"
	
	para "defeat without"
	line "trying!"
	done
	
TrainerBlackbeltR1:
	generictrainer BLACKBELT_T, BLACKBELT_R1, EVENT_BEAT_BLACKBELT_R1, .SeenText, .BeatenText

	text "Go forth on your"
	line "path!"
	done
	
.SeenText:
	text "This is my path!"
	done

.BeatenText:
	text "This is everyone's"
	line "path!"
	done
	
TrainerBattleGirlR1:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_R1, EVENT_BEAT_BATTLE_GIRL_R1, .SeenText, .BeatenText

	text "To get stronger,"
	line "have battles with"
	cont "your friends!"
	done
	
.SeenText:
	text "Let me test what"
	line "fighting style is"
	cont "more effective!"
	done

.BeatenText:
	text "By any chance, are"
	line "you a battle"
	cont "genius?"
	done
	
TrainerTwinsR1:
	generictrainer TWINS, TWINS_R1, EVENT_BEAT_TWINS_R1, .SeenText, .BeatenText

	text "We have to get"
	line "stronger so we can"
	
	para "take care of each"
	line "other!"
	done
	
.SeenText:
	text "My sister and I"
	line "are of one mind!"
	done

.BeatenText:
	text "Wow! We lost!"
	done
	
MaidR1SeenText:
	text "What? A battle at"
	line "a place like this?"
	
	para "Everyone is"
	line "watching us!"
	done
	
MaidR1BeatenText:
	text "Well, thanks to"
	line "you, I've overcome"
	
	para "my performance"
	line "anxiety."
	done
	
MaidR1AfterText:
	text "I guess I just"
	line "need to keep"
	
	para "pushing my"
	line "boundaries if I"
	
	para "want to overcome"
	line "my anxiety…"
	done
	
R1SignText:
	text "Route 1."
	
	para "North to Accumula"
	line "Town, South to"
	cont "Nuvema Town."
	done
	