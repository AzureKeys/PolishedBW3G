Route18_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route18TileScript

	def_warp_events
	warp_event 17, 16, ROUTE_18_HOUSE, 1
	warp_event 29, 31, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events
	coord_event 16, 22, 1, Route18Bridge1OverheadTrigger
	coord_event 17, 22, 1, Route18Bridge1OverheadTrigger
	coord_event 16, 23, 0, Route18Bridge1UnderfootTrigger
	coord_event 17, 23, 0, Route18Bridge1UnderfootTrigger
	coord_event 16, 26, 0, Route18Bridge1UnderfootTrigger
	coord_event 17, 26, 0, Route18Bridge1UnderfootTrigger
	coord_event 15, 26, 1, Route18Bridge1OverheadTrigger
	coord_event 16, 27, 1, Route18Bridge1OverheadTrigger
	coord_event 17, 27, 1, Route18Bridge1OverheadTrigger
	coord_event 18, 26, 1, Route18Bridge1OverheadTrigger
	coord_event 15, 24, 1, Route18Bridge1OverheadTrigger
	coord_event 15, 25, 1, Route18Bridge1OverheadTrigger
	coord_event 20,  6, 1, Route18Bridge2OverheadTrigger
	coord_event 20,  7, 1, Route18Bridge2OverheadTrigger
	coord_event 21,  6, 0, Route18Bridge2UnderfootTrigger
	coord_event 21,  7, 0, Route18Bridge2UnderfootTrigger
	coord_event 24,  6, 0, Route18Bridge2UnderfootTrigger
	coord_event 24,  7, 0, Route18Bridge2UnderfootTrigger
	coord_event 25,  6, 1, Route18Bridge2OverheadTrigger
	coord_event 25,  7, 1, Route18Bridge2OverheadTrigger
	coord_event 22,  9, 1, Route18Bridge2OverheadTrigger
	coord_event 23,  9, 1, Route18Bridge2OverheadTrigger

	def_bg_events
	bg_event 36, 28, BGEVENT_ITEM + BIG_PEARL, EVENT_ROUTE_18_BIG_PEARL
	bg_event 29, 31, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_18
	bg_event 30, 31, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_18
	
	def_object_events
	object_event 26, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBackpackerFR18, -1
	object_event 31, 22, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHikerR18, -1
	object_event 25, 23, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerBlackbeltR18, -1
	object_event  9,  9, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBattleGirlR18, -1
	object_event 33, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerMR18, -1
	itemball_event 10, 15, PEARL, 1, EVENT_ROUTE_18_PEARL
	itemball_event 39, 22, CALCIUM, 1, EVENT_ROUTE_18_CALCIUM
	itemball_event  2, 28, MAX_ELIXIR, 1, EVENT_ROUTE_18_MAX_ELIXIR
	itemball_event 24, 20, BLACK_BELT, 1, EVENT_ROUTE_18_BLACK_BELT
	itemball_event  5, 31, HEART_SCALE, 1, EVENT_ROUTE_18_HEART_SCALE
	tmhmball_event 25, 32, TM_CALM_MIND, EVENT_ROUTE_18_TM_CALM_MIND
	
Route18TileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 16, 22, $b8, ROUTE_18
	changebridgeblock 16, 24, $b9, ROUTE_18
	changebridgeblock 16, 26, $b7, ROUTE_18
	; bridge 2
	changebridgeblock 20,  6, $b0, ROUTE_18
	changebridgeblock 22,  6, $b1, ROUTE_18
	changebridgeblock 24,  6, $b2, ROUTE_18
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 16, 22, $ba, ROUTE_18
	changebridgeblock 16, 24, $bb, ROUTE_18
	changebridgeblock 16, 26, $02, ROUTE_18
	; bridge 2
	changebridgeblock 20,  6, $b4, ROUTE_18
	changebridgeblock 22,  6, $b5, ROUTE_18
	changebridgeblock 24,  6, $b6, ROUTE_18
	jmp BufferScreen
	
Route18Bridge1OverheadTrigger:
	callthisasm
	changebridgeblock 16, 22, $b8, ROUTE_18
	changebridgeblock 16, 24, $b9, ROUTE_18
	changebridgeblock 16, 26, $b7, ROUTE_18
	jp Route18_FinishOverheadBridge
	
Route18Bridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 16, 22, $ba, ROUTE_18
	changebridgeblock 16, 24, $bb, ROUTE_18
	changebridgeblock 16, 26, $02, ROUTE_18
	jp Route18_FinishUnderfootBridge
	
Route18Bridge2OverheadTrigger:
	callthisasm
	changebridgeblock 20,  6, $b0, ROUTE_18
	changebridgeblock 22,  6, $b1, ROUTE_18
	changebridgeblock 24,  6, $b2, ROUTE_18
	; fallthrough
Route18_FinishOverheadBridge:
	xor a
	jr Route18_FinishBridge
	
Route18Bridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 20,  6, $b4, ROUTE_18
	changebridgeblock 22,  6, $b5, ROUTE_18
	changebridgeblock 24,  6, $b6, ROUTE_18
	; fallthrough
Route18_FinishUnderfootBridge:
	ld a, $1
Route18_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute18SceneID], a
	jmp GenericFinishBridge
	
TrainerBackpackerFR18:
	trainer BACKPACKERF, BACKPACKERF_R18, EVENT_BEAT_BACKPACKERF_R18, BackpackerFR18SeenText, BackpackerFR18BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BACKPACKER_JENNY
	opentext
	checkflag ENGINE_JENNY_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_BACKPACKER_JENNY
	iftruefwd .NumberAccepted
	checkevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext BackpackerFR18AfterText
	promptbutton
	setevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BACKPACKER_JENNY
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_JENNY
	gettrainername BACKPACKERF, BACKPACKERF_R18, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext BackpackerFR18BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight3
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight2
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight1
; Fight0
	loadtrainer BACKPACKERF, BACKPACKERF_R18
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer BACKPACKERF, JENNY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer BACKPACKERF, JENNY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3
	loadtrainer BACKPACKERF, JENNY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
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
	
TrainerHikerR18:
	generictrainer HIKER, HIKER_R18, EVENT_BEAT_HIKER_R18, .SeenText, .BeatenText

	text "We climb mountains"
	line "because, no matter"
	
	para "how hard it is,"
	line "the higher we"
	
	para "climb, the closer"
	line "we get to the sky!"
	done
	
.SeenText:
	text "When I look down"
	line "from a high place,"
	cont "I feel very good!"
	
	para "#mon battles"
	line "are the same!"
	done

.BeatenText:
	text "You're great! I"
	line "can't help but look"
	cont "up to you!"
	done
	
TrainerBlackbeltR18:
	generictrainer BLACKBELT_T, BLACKBELT_R18, EVENT_BEAT_BLACKBELT_R18, .SeenText, .BeatenText

	text "I think I'm gonna"
	line "go to bed…"
	done
	
.SeenText:
	text "I just won a"
	line "battle back there,"

	para "so I'm feeling"
	line "good!"
	done

.BeatenText:
	text "Oh whatever! I'm"
	line "in a terrible mood"
	cont "now!"
	done
	
TrainerBattleGirlR18:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_R18, EVENT_BEAT_BATTLE_GIRL_R18, .SeenText, .BeatenText

	text "Whether they win"
	line "or lose, #mon"
	
	para "can become just a"
	line "bit stronger after"
	cont "each battle."
	done
	
.SeenText:
	text "Number! Eight!"
	line "Teen!"
	done

.BeatenText:
	text "OK! Thank you very"
	line "much!"
	done
	
TrainerBackpackerMR18:
	generictrainer BACKPACKERM, BACKPACKERM_R18, EVENT_BEAT_BACKPACKERM_R18, .SeenText, .BeatenText

	text "The purpose of the"
	line "journey is found"

	para "in those that I"
	line "meet! Isn't it"
	
	para "great to encounter"
	line "all the different"
	
	para "#mon there are"
	line "in the world?"
	done
	
.SeenText:
	text "Backpackers are"
	line "exactly what they"
	cont "sound like."
	
	para "They set out on"
	line "the road with only"
	
	para "the packs on their"
	line "backs and the"
	
	para "#mon in their"
	line "#balls!"
	done

.BeatenText:
	text "I wish I could"
	line "pack some wins in"
	cont "my backpack too…"
	done
	
BackpackerFR18SeenText:
	text "Your #mon and"
	line "your strategy!"

	para "I'll be taking"
	line "notes on both!"
	done
	
BackpackerFR18BeatenText:
	text "There's still so"
	line "much more to"
	cont "learn!"
	done

BackpackerFR18AfterText:
	text "Stronger #mon…"
	line "An unbeatable"
	cont "strategy… "

	para "There are no such"
	line "certainties in"
	
	para "#mon… and that's"
	line "why it's so deep!"
	done
	