Route8_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 41, 13, TUBELINE_BRIDGE, 3
	warp_event 41, 14, TUBELINE_BRIDGE, 4
	
	def_coord_events

	def_bg_events
	bg_event 18, 16, BGEVENT_JUMPTEXT, R8SignText
	bg_event 36, 10, BGEVENT_JUMPTEXT, R8BridgeSignText
	bg_event  6, 19, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_8_RARE_CANDY
	
	def_object_events
	object_event  8,  9, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerParasolLadyR8, -1
	object_event 27, 13, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerMR8, -1
	object_event 19, 11, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerFR8, -1
	object_event 32, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerFisherR8, -1
	itemball_event 39,  5, ELIXIR, 1, EVENT_ROUTE_8_ELIXIR
	itemball_event 14,  4, FULL_RESTORE, 1, EVENT_ROUTE_8_FULL_RESTORE
	itemball_event  7,  4, LOVE_BALL, 3, EVENT_ROUTE_8_LOVE_BALL
	itemball_event 21,  4, BIG_PEARL, 1, EVENT_ROUTE_8_BIG_PEARL
	
TrainerParasolLadyR8:
	trainer PARASOL_LADY, PARASOL_LADY_R8, EVENT_BEAT_PARASOL_LADY_R8, ParasolLadyR8SeenText, ParasolLadyR8BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PARASOL_LADY_LOIS
	opentext
	checkflag ENGINE_LOIS_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_PARASOL_LADY_LOIS
	iftruefwd .NumberAccepted
	checkevent EVENT_LOIS_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext ParasolLadyR8AfterText
	promptbutton
	setevent EVENT_LOIS_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_PARASOL_LADY_LOIS
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_LOIS
	gettrainername PARASOL_LADY, PARASOL_LADY_R8, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext ParasolLadyR8BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight1
; Fight0
	loadtrainer PARASOL_LADY, PARASOL_LADY_R8
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LOIS_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer PARASOL_LADY, LOIS_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LOIS_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftf
	rematchgift REMATCHGIFT_TIER_3
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
	
TrainerPkmnRangerMR8:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_R8, EVENT_BEAT_PKMN_RANGERM_R8, .SeenText, .BeatenText

	text "Maybe I should"
	line "train more under"
	
	para "that waterfall. I"
	line "can get clean too"
	cont "while I'm at it!"
	done
	
.SeenText:
	text "I trained my body"
	line "and mind by"
	
	para "standing under a"
	line "waterfall! Nothing"
	cont "will faze me now!"
	done

.BeatenText:
	text "What… I mean how?"
	done
	
TrainerPkmnRangerFR8:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_R8, EVENT_BEAT_PKMN_RANGERF_R8, .SeenText, .BeatenText

	text "According to foot-"
	line "step fortune"
	cont "telling…"
	
	para "Those whose foot-"
	line "steps make a"
	
	para "splish and splosh"
	line "are trainers that"
	cont "#mon like."
	done
	
.SeenText:
	text "The splish-splosh"
	line "sounds! Those were"
	
	para "your footsteps,"
	line "weren't they?"
	
	para "So cute!"
	done

.BeatenText:
	text "You're so strong!"
	line "Too strong to be"
	cont "cute!"
	done
	
TrainerFisherR8:
	generictrainer FISHER, FISHER_R8, EVENT_BEAT_FISHER_R8, .SeenText, .BeatenText

	text "You've got to stay"
	line "optimistic if you"
	
	para "want to be a good"
	line "fisherman!"
	done
	
.SeenText:
	text "Argh! It got away!"
	line "I almost caught"
	cont "it, too!"
	done

.BeatenText:
	text "I lost again, but"
	line "it was nice to"
	
	para "take my mind off"
	line "of fishing for a"
	cont "bit."
	done
	
ParasolLadyR8SeenText:
	text "If you turn a"
	line "parasol around,"
	
	para "it's like a flower"
	line "blossoming in the"
	cont "rain!"
	done
	
ParasolLadyR8BeatenText:
	text "I'll spin my para-"
	line "sol around and"
	
	para "send some water"
	line "droplets your way!"
	done

ParasolLadyR8AfterText:
	text "On rainy days, use"
	line "a parasol, wear a"
	
	para "coat, or get wet."
	line "Do as you like!"
	done
	
R8SignText:
	text "Route 8"
	
	para "Icirrus City"
	line "ahead."
	done
	
R8BridgeSignText:
	text "Tubeline Bridge"
	
	para "Passage to"
	line "Opelucid City."
	done
	