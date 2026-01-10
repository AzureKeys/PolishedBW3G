Route5_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 31,  5, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event  5, 10, BGEVENT_JUMPTEXT, R5BridgeSignText
	bg_event 32, 13, BGEVENT_JUMPTEXT, R5NimbasaSignText
	bg_event 31,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_5
	bg_event 32,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_5
	
	def_object_events
	object_event  7, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R5CharlesScript, -1
	object_event 22, 15, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN_D, OBJECTTYPE_TRAINER, 3, TrainerDancer1R5, -1
	object_event 20, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN_D, OBJECTTYPE_GENERICTRAINER, 3, TrainerDancer2R5, -1
	object_event 17, 14, SPRITE_LINEBACKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerLinebackerR5, -1
	object_event 10, 13, SPRITE_BAKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerBakerR5, -1
	object_event 14, 16, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerArtistR5, -1
	object_event 12, 11, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersFR5, -1
	object_event 13, 11, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersFR5, -1
	fruittree_event 28, 11, FRUITTREE_ROUTE_5, CHERI_BERRY, PAL_NPC_RED
	itemball_event 33,  6, FRIEND_BALL, 3, EVENT_ROUTE_5_FRIEND_BALL
	itemball_event  5,  8, CALCIUM, 1, EVENT_ROUTE_5_CALCIUM
	itemball_event  9, 16, REVIVE, 1, EVENT_ROUTE_5_REVIVE
	itemball_event 17, 10, HEART_SCALE, 1, EVENT_ROUTE_5_HEART_SCALE
	
	object_const_def
	const ROUTE5_CHARLES
	
R5CharlesScript:
	faceplayer
	checkevent EVENT_GOT_DAWN_STONE_FROM_CHARLES
	iftrue_jumptext .AfterText
	checkevent EVENT_BEAT_BIKER_R5
	iftruefwd .OfferStone
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked ROUTE5_CHARLES
	loadtrainer BIKER, BIKER_R5
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_R5
.OfferStone
	opentext
	writethistext
	text "You have defeated"
	line "Charles…"

	para "Take this with"
	line "you…"

	para "A gift… From"
	line "Charles's heart…"
	done
	
	promptbutton
	verbosegiveitem SHINY_STONE
	iffalsefwd .NoRoom
	setevent EVENT_GOT_DAWN_STONE_FROM_CHARLES
.NoRoom
	closetext
	end
	
.SeenText:
	text "I'm a heart-"
	line "breaker… My name…"
	cont "Charles…"

	para "You… You wish to"
	line "challenge me…?"
	
	para "Prepare… to be…"
	line "heartbroken…"
	done
	
.BeatenText:
	text "…"
	line "Charles's heart…"
	cont "broken…"
	done
	
.AfterText:
	text "Charles has more"
	line "battles to win…"

	para "More hearts to"
	line "break…"

	para "I am… Charles…"
	line "I am…"
	cont "heartbreaker…"
	done
	
TrainerDancer1R5:
	trainer DANCER, DANCER_R5_1, EVENT_BEAT_DANCER_R5_1, Dancer1R5SeenText, Dancer1R5BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_DANCER_ERIC
	opentext
	checkflag ENGINE_ERIC_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_DANCER_ERIC
	iftruefwd .NumberAccepted
	checkevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext Dancer1R5AfterText
	promptbutton
	setevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_DANCER_ERIC
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_ERIC
	gettrainername DANCER, DANCER_R5_1, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext Dancer1R5BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight5
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight4
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight3
	; checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	; iftrue .LoadFight2
	; checkevent EVENT_BIANCA_CASTELIA_CALL
	; iftrue .LoadFight1
; Fight0
	loadtrainer DANCER, DANCER_R5_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	sjump .Gift
	
.LoadFight1
	loadtrainer DANCER, ERIC_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	sjump .Gift
	
.LoadFight2
	loadtrainer DANCER, ERIC_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	sjump .Gift
	
.LoadFight3
	loadtrainer DANCER, ERIC_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	sjump .Gift
	
.LoadFight4
	loadtrainer DANCER, ERIC_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	sjump .Gift
	
.LoadFight5
	loadtrainer DANCER, ERIC_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
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
	
TrainerDancer2R5:
	generictrainer DANCER, DANCER_R5_2, EVENT_BEAT_DANCER_R5_2, .SeenText, .BeatenText

	text "I'm shocked! I"
	line "need a Cheri"
	cont "Berry!"
	done
	
.SeenText:
	text "I can feel it in"
	line "the air… This"

	para "battle will be"
	line "electrifying!"
	done

.BeatenText:
	text "What electrifying"
	line "strength! You"
	cont "shocked me good!"
	done
	
TrainerLinebackerR5:
	generictrainer LINEBACKER, LINEBACKER_R5, EVENT_BEAT_LINEBACKER_R5, .SeenText, .BeatenText

	text "Ah! Maybe I should"
	line "just pick up my"

	para "ball and charge"
	line "outta here! No one"
	
	para "would doubt how"
	line "wild I am then!"
	done
	
.SeenText:
	text "Heheh! Nobody can"
	line "beat my speed and"
	cont "fury!"
	done

.BeatenText:
	text "I have lost! I am"
	line "such a loser!"
	done
	
TrainerBakerR5:
	generictrainer BAKER, BAKER_R5, EVENT_BEAT_BAKER_R5, .SeenText, .BeatenText

	text "My #mon and I"
	line "bake bread. It's"
	cont "so fun!"
	done
	
.SeenText:
	text "These #mon"
	line "usually help me"

	para "bake. But today,"
	line "they'll help me"
	cont "battle you!"
	done

.BeatenText:
	text "Battling is much"
	line "more difficult"
	cont "than baking!"
	done
	
TrainerArtistR5:
	generictrainer ARTIST, ARTIST_R5, EVENT_BEAT_ARTIST_R5, .SeenText, .BeatenText

	text "Boom!"
	
	para "Colors collide to"
	line "form new colors!"
	done
	
.SeenText:
	text "Art is explosions!"
	line "Life forces colli-"
	cont "ding together!"
	done

.BeatenText:
	text "Oh, I just got"
	line "whitewashed!"
	done
	
TrainerBackersFR5:
	generictrainer BACKERSF, BACKERSF_R5, EVENT_BEAT_BACKERSF_R5, .SeenText, .BeatenText

	text "Keeping track of"
	line "wins is important,"

	para "but don't lose"
	line "sight of every-"
	cont "thing else!"
	done
	
.SeenText:
	text "After watching a"
	line "football game, we"
	
	para "want to get rowdy"
	line "ourselves!"
	done

.BeatenText:
	text "Too rowdy!"
	done
	
Dancer1R5SeenText:
	text "Turn around, and"
	line "it's my turn. Turn"

	para "around, and it's"
	line "your turn!"
	done

Dancer1R5BeatenText:
	text "Turn around, turn"
	line "around… and turn"
	cont "around some more!"
	done
	
Dancer1R5AfterText:
	text "My #mon are"
	line "masters of dance!"
	done

R5BridgeSignText:
	text "Driftveil"
	line "Drawbridge."
	
	para "Inquire inside"
	line "for bridge access."
	done

R5NimbasaSignText:
	text "Nimbasa City"
	line "ahead."
	done
