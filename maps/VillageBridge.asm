VillageBridge_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VillageBridgeTileScript

	def_warp_events
	warp_event 61, 20, ROUTE_12_VILLAGE_BRIDGE_GATE, 3
	warp_event 61, 21, ROUTE_12_VILLAGE_BRIDGE_GATE, 4
	
	def_coord_events
	coord_event 26, 16, 1, VillageBridgeOverheadTrigger
	coord_event 26, 17, 1, VillageBridgeOverheadTrigger
	coord_event 26, 18, 1, VillageBridgeOverheadTrigger
	coord_event 27, 16, 0, VillageBridgeUnderfootTrigger
	coord_event 27, 17, 0, VillageBridgeUnderfootTrigger
	coord_event 27, 18, 0, VillageBridgeUnderfootTrigger
	coord_event 38, 16, 0, VillageBridgeUnderfootTrigger
	coord_event 38, 17, 0, VillageBridgeUnderfootTrigger
	coord_event 38, 18, 0, VillageBridgeUnderfootTrigger
	coord_event 39, 16, 1, VillageBridgeOverheadTrigger
	coord_event 39, 17, 1, VillageBridgeOverheadTrigger
	coord_event 39, 18, 1, VillageBridgeOverheadTrigger
	coord_event 21, 30, 1, VillageBridgeOverheadTrigger
	coord_event 21, 31, 1, VillageBridgeOverheadTrigger
	coord_event 44, 30, 1, VillageBridgeOverheadTrigger
	coord_event 44, 31, 1, VillageBridgeOverheadTrigger

	def_bg_events
	bg_event 22,  7, BGEVENT_ITEM + PP_MAX, EVENT_VILLAGE_BRIDGE_PP_MAX
	bg_event 38, 14, BGEVENT_ITEM + FULL_RESTORE, EVENT_VILLAGE_BRIDGE_FULL_RESTORE
	bg_event  4, 31, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_VILLAGE_BRIDGE_BIG_MUSHROOM
	bg_event 54, 28, BGEVENT_ITEM + MAX_ETHER, EVENT_VILLAGE_BRIDGE_MAX_ETHER
	bg_event 55, 28, BGEVENT_ITEM + MAX_ETHER, EVENT_VILLAGE_BRIDGE_MAX_ETHER
	bg_event 60, 14, BGEVENT_ITEM + BLUE_SHARD, EVENT_VILLAGE_BRIDGE_BLUE_SHARD
	bg_event 61, 14, BGEVENT_ITEM + BLUE_SHARD, EVENT_VILLAGE_BRIDGE_BLUE_SHARD
	
	def_object_events
	object_event 40, 15, SPRITE_LINEBACKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerLinebackerVillageBridge, -1
	object_event 22, 28, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerMusicianVillageBridge, -1
	object_event 45, 28, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerSmasher1VillageBridge, -1
	object_event 54, 31, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSmasher2VillageBridge, -1
	object_event 11,  6, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_GENERICTRAINER, 3, TrainerHoopster1VillageBridge, -1
	object_event 15,  7, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_GENERICTRAINER, 2, TrainerHoopster2VillageBridge, -1
	fruittree_event  6,  7, FRUITTREE_VILLAGE_BRIDGE, CHESTO_BERRY, PAL_NPC_PURPLE
	itemball_event 32,  9, CALCIUM, 1, EVENT_VILLAGE_BRIDGE_CALCIUM
	itemball_event 26,  7, QUICK_BALL, 3, EVENT_VILLAGE_BRIDGE_QUICK_BALL
	itemball_event 56, 35, CARBOS, 1, EVENT_VILLAGE_BRIDGE_CARBOS
	itemball_event 55,  6, RARE_CANDY, 1, EVENT_VILLAGE_BRIDGE_RARE_CANDY
	itemball_event 38, 33, HEART_SCALE, 1, EVENT_VILLAGE_BRIDGE_HEART_SCALE
	
VillageBridgeTileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock 28, 14, $a0, VILLAGE_BRIDGE
	changebridgeblock 30, 14, $a1, VILLAGE_BRIDGE
	changebridgeblock 32, 14, $9a, VILLAGE_BRIDGE
	changebridgeblock 34, 14, $a2, VILLAGE_BRIDGE
	changebridgeblock 36, 14, $a3, VILLAGE_BRIDGE
	changebridgeblock 28, 16, $b3, VILLAGE_BRIDGE
	changebridgeblock 30, 16, $a4, VILLAGE_BRIDGE
	changebridgeblock 32, 16, $b1, VILLAGE_BRIDGE
	changebridgeblock 34, 16, $a4, VILLAGE_BRIDGE
	changebridgeblock 36, 16, $e3, VILLAGE_BRIDGE
	changebridgeblock 28, 18, $ac, VILLAGE_BRIDGE
	changebridgeblock 30, 18, $ad, VILLAGE_BRIDGE
	changebridgeblock 32, 18, $b5, VILLAGE_BRIDGE
	changebridgeblock 34, 18, $ad, VILLAGE_BRIDGE
	changebridgeblock 36, 18, $af, VILLAGE_BRIDGE
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock 28, 14, $9c, VILLAGE_BRIDGE
	changebridgeblock 30, 14, $9d, VILLAGE_BRIDGE
	changebridgeblock 32, 14, $99, VILLAGE_BRIDGE
	changebridgeblock 34, 14, $9e, VILLAGE_BRIDGE
	changebridgeblock 36, 14, $9f, VILLAGE_BRIDGE
	changebridgeblock 28, 16, $a5, VILLAGE_BRIDGE
	changebridgeblock 30, 16, $56, VILLAGE_BRIDGE
	changebridgeblock 32, 16, $b0, VILLAGE_BRIDGE
	changebridgeblock 34, 16, $56, VILLAGE_BRIDGE
	changebridgeblock 36, 16, $a6, VILLAGE_BRIDGE
	changebridgeblock 28, 18, $a8, VILLAGE_BRIDGE
	changebridgeblock 30, 18, $a9, VILLAGE_BRIDGE
	changebridgeblock 32, 18, $b4, VILLAGE_BRIDGE
	changebridgeblock 34, 18, $a9, VILLAGE_BRIDGE
	changebridgeblock 36, 18, $ab, VILLAGE_BRIDGE
	jmp BufferScreen
	
VillageBridgeOverheadTrigger:
	callthisasm
	changebridgeblock 28, 14, $a0, VILLAGE_BRIDGE
	changebridgeblock 30, 14, $a1, VILLAGE_BRIDGE
	changebridgeblock 32, 14, $9a, VILLAGE_BRIDGE
	changebridgeblock 34, 14, $a2, VILLAGE_BRIDGE
	changebridgeblock 36, 14, $a3, VILLAGE_BRIDGE
	changebridgeblock 28, 16, $b3, VILLAGE_BRIDGE
	changebridgeblock 30, 16, $a4, VILLAGE_BRIDGE
	changebridgeblock 32, 16, $b1, VILLAGE_BRIDGE
	changebridgeblock 34, 16, $a4, VILLAGE_BRIDGE
	changebridgeblock 36, 16, $e3, VILLAGE_BRIDGE
	changebridgeblock 28, 18, $ac, VILLAGE_BRIDGE
	changebridgeblock 30, 18, $ad, VILLAGE_BRIDGE
	changebridgeblock 32, 18, $b5, VILLAGE_BRIDGE
	changebridgeblock 34, 18, $ad, VILLAGE_BRIDGE
	changebridgeblock 36, 18, $af, VILLAGE_BRIDGE

	xor a
	jr VillageBridge_FinishBridge
	
VillageBridgeUnderfootTrigger:
	callthisasm
	changebridgeblock 28, 14, $9c, VILLAGE_BRIDGE
	changebridgeblock 30, 14, $9d, VILLAGE_BRIDGE
	changebridgeblock 32, 14, $99, VILLAGE_BRIDGE
	changebridgeblock 34, 14, $9e, VILLAGE_BRIDGE
	changebridgeblock 36, 14, $9f, VILLAGE_BRIDGE
	changebridgeblock 28, 16, $a5, VILLAGE_BRIDGE
	changebridgeblock 30, 16, $56, VILLAGE_BRIDGE
	changebridgeblock 32, 16, $b0, VILLAGE_BRIDGE
	changebridgeblock 34, 16, $56, VILLAGE_BRIDGE
	changebridgeblock 36, 16, $a6, VILLAGE_BRIDGE
	changebridgeblock 28, 18, $a8, VILLAGE_BRIDGE
	changebridgeblock 30, 18, $a9, VILLAGE_BRIDGE
	changebridgeblock 32, 18, $b4, VILLAGE_BRIDGE
	changebridgeblock 34, 18, $a9, VILLAGE_BRIDGE
	changebridgeblock 36, 18, $ab, VILLAGE_BRIDGE

	ld a, $1
VillageBridge_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wVillageBridgeSceneID], a
	jmp GenericFinishBridge

TrainerLinebackerVillageBridge:
	trainer LINEBACKER, LINEBACKER_VILLAGE_BRIDGE, EVENT_BEAT_LINEBACKER_VILLAGE_BRIDGE, LinebackerVillageBridgeSeenText, LinebackerVillageBridgeBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_LINEBACKER_DEAN
	opentext
	checkflag ENGINE_DEAN_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_LINEBACKER_DEAN
	iftruefwd .NumberAccepted
	checkevent EVENT_DEAN_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext LinebackerVillageBridgeAfterText
	promptbutton
	setevent EVENT_DEAN_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LINEBACKER_DEAN
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_DEAN
	gettrainername LINEBACKER, LINEBACKER_VILLAGE_BRIDGE, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext LinebackerVillageBridgeBeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight1
; Fight0
	loadtrainer LINEBACKER, LINEBACKER_VILLAGE_BRIDGE
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DEAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer LINEBACKER, DEAN_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DEAN_READY_FOR_REMATCH
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
	
TrainerMusicianVillageBridge:
	generictrainer MUSICIAN, MUSICIAN_VILLAGE_BRIDGE, EVENT_BEAT_MUSICIAN_VILLAGE_BRIDGE, .SeenText, .BeatenText

	text "Your song is truly"
	line "inspirational!"
	done
	
.SeenText:
	text "Hum fiercely! My"
	line "battle song!"
	
	para "Battle fiercely!"
	line "My #mon!"
	done

.BeatenText:
	text "Hm… I guess"
	line "strumming instead"
	
	para "of tapping would"
	line "be best…"
	done
	
TrainerSmasher1VillageBridge:
	generictrainer SMASHER, SMASHER_VILLAGE_BRIDGE_1, EVENT_BEAT_SMASHER_VILLAGE_BRIDGE_1, .SeenText, .BeatenText

	text "A rally that goes"
	line "on for ages… It's"
	
	para "tough, but still"
	line "so fulfilling!"
	done
	
.SeenText:
	text "My serve is 120"
	line "miles per hour!"
	
	para "That's the kind of"
	line "killer attack I'm"
	cont "about to show you!"
	done

.BeatenText:
	text "I wanted to cont-"
	line "inue the rally a"
	cont "little bit longer!"
	done
	
TrainerSmasher2VillageBridge:
	generictrainer SMASHER, SMASHER_VILLAGE_BRIDGE_2, EVENT_BEAT_SMASHER_VILLAGE_BRIDGE_2, .SeenText, .BeatenText

	text "Someday I want to"
	line "play a doubles"
	
	para "match with people"
	line "and #mon!"
	done
	
.SeenText:
	text "Watch my furious"
	line "tennis footwork!"
	
	para "you get it now?"
	line "We're tough!"
	done

.BeatenText:
	text "But… I'm tough"
	line "enough to play all"
	cont "day and all night…"
	done
	
TrainerHoopster1VillageBridge:
	generictrainer HOOPSTER, HOOPSTER_VILLAGE_BRIDGE_1, EVENT_BEAT_HOOPSTER_VILLAGE_BRIDGE_1, .SeenText, .BeatenText

	text "I wanna play in"
	line "Nimbasa City"
	cont "someday…"
	done
	
.SeenText:
	text "Oh! You look"
	line "pretty good! Let's"
	cont "play some pickup!"
	done

.BeatenText:
	text "That's game! You"
	line "totally crushed"
	cont "me!"
	done
	
TrainerHoopster2VillageBridge:
	generictrainer HOOPSTER, HOOPSTER_VILLAGE_BRIDGE_2, EVENT_BEAT_HOOPSTER_VILLAGE_BRIDGE_2, .SeenText, .BeatenText

	text "How are you gonna"
	line "get past an oppo-"
	cont "nent? That's vital"
	
	para "for battles and"
	line "basketball."
	done
	
.SeenText:
	text "Fooling you fair"
	line "and square! That's"
	
	para "what we call a"
	line "trick play!"
	done

.BeatenText:
	text "What the hoops? I"
	line "was the one who"
	cont "was tricked!"
	done
	
LinebackerVillageBridgeSeenText:
	text "Shut up and battle"
	line "with me!"
	done
	
LinebackerVillageBridgeBeatenText:
	text "…!"
	done
	
LinebackerVillageBridgeAfterText:
	text "You're strong!"
	done
