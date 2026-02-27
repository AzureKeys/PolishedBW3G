Dreamyard_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, DreamyardTileScript
	callback MAPCALLBACK_STONETABLE, DreamyardBoulderCallback

	def_warp_events
	warp_event  1, 16, STRIATON_CITY, 7
	warp_event  1, 17, STRIATON_CITY, 8
	warp_event 10, 21, DREAMYARD, 1 ; hole
	warp_event 37,  4, DREAMYARD_B1F, 1
	warp_event 37,  5, DREAMYARD_B1F, 2
	warp_event 13, 24, DREAMYARD_B1F, 3
	warp_event 13, 25, DREAMYARD_B1F, 4
	warp_event 37, 28, DREAMYARD_B1F, 5
	warp_event 37, 29, DREAMYARD_B1F, 6
	
	def_coord_events
	coord_event 23,  5, 1, DreamyardBridgeOverheadTrigger
	coord_event  3, 16, 1, DreamyardBridgeOverheadTrigger
	coord_event  3, 17, 1, DreamyardBridgeOverheadTrigger
	coord_event 23,  4, 0, DreamyardBridgeUnderfootTrigger

	def_bg_events
	bg_event 18, 13, BGEVENT_ITEM + MAX_POTION, EVENT_DREAMYARD_MAX_POTION
	bg_event  6, 27, BGEVENT_ITEM + REVIVE, EVENT_DREAMYARD_REVIVE
	
	def_object_events
	strengthboulder_event 10, 20, EVENT_DREAMYARD_BOULDER
	object_event 29, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerYoungsterDreamyard, -1
	object_event 25, 33, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 3, TrainerSchoolKidMDreamyard, -1
	object_event 16,  3, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerSchoolKidFDreamyard, -1
	itemball_event 27, 12, MOON_STONE, 1, EVENT_DREAMYARD_MOON_STONE
	itemball_event 25,  3, LEVEL_BALL, 3, EVENT_DREAMYARD_LEVEL_BALL
	itemball_event 22, 26, PP_UP, 1, EVENT_DREAMYARD_PP_UP
	itemball_event  9,  7, WIDE_LENS, 1, EVENT_DREAMYARD_WIDE_LENS
	tmhmball_event 12,  9, TM_DAZZLINGLEAM, EVENT_DREAMYARD_TM_DAZZLINGLEAM
	cuttree_event 13, 16, EVENT_DREAMYARD_CUT_TREE
	
	object_const_def
	const DREAMYARD_BOULDER
	
DreamyardTileScript:
	checkevent EVENT_DREAMYARD_BOULDER
	iffalsefwd .checkbridge
	changeblock 10, 20, $21
.checkbridge
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock 10,  0, $43, DREAMYARD
	changebridgeblock 14,  0, $eb, DREAMYARD
	changebridgeblock 16,  0, $43, DREAMYARD
	changebridgeblock 18,  0, $43, DREAMYARD
	changebridgeblock 20,  0, $43, DREAMYARD
	changebridgeblock 12,  2, $40, DREAMYARD
	changebridgeblock 12,  4, $44, DREAMYARD
	changebridgeblock 12,  6, $46, DREAMYARD
	changebridgeblock 12,  8, $42, DREAMYARD
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock 10,  0, $4a, DREAMYARD
	changebridgeblock 14,  0, $ec, DREAMYARD
	changebridgeblock 16,  0, $4a, DREAMYARD
	changebridgeblock 18,  0, $4a, DREAMYARD
	changebridgeblock 20,  0, $4a, DREAMYARD
	changebridgeblock 12,  2, $41, DREAMYARD
	changebridgeblock 12,  4, $45, DREAMYARD
	changebridgeblock 12,  6, $49, DREAMYARD
	changebridgeblock 12,  8, $49, DREAMYARD
	jmp BufferScreen
	
DreamyardBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, DREAMYARD_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	disappear DREAMYARD_BOULDER
	changeblock 10, 20, $21
	refreshmap
	waitbutton
	closetext
	end
	
DreamyardBridgeOverheadTrigger:
	callthisasm
	changebridgeblock 10,  0, $43, DREAMYARD
	changebridgeblock 14,  0, $eb, DREAMYARD
	changebridgeblock 16,  0, $43, DREAMYARD
	changebridgeblock 18,  0, $43, DREAMYARD
	changebridgeblock 20,  0, $43, DREAMYARD
	changebridgeblock 12,  2, $40, DREAMYARD
	changebridgeblock 12,  4, $44, DREAMYARD
	changebridgeblock 12,  6, $46, DREAMYARD
	changebridgeblock 12,  8, $42, DREAMYARD
	xor a
	jr Dreamyard_FinishBridge
	
DreamyardBridgeUnderfootTrigger:
	callthisasm
	changebridgeblock 10,  0, $4a, DREAMYARD
	changebridgeblock 14,  0, $ec, DREAMYARD
	changebridgeblock 16,  0, $4a, DREAMYARD
	changebridgeblock 18,  0, $4a, DREAMYARD
	changebridgeblock 20,  0, $4a, DREAMYARD
	changebridgeblock 12,  2, $41, DREAMYARD
	changebridgeblock 12,  4, $45, DREAMYARD
	changebridgeblock 12,  6, $49, DREAMYARD
	changebridgeblock 12,  8, $49, DREAMYARD
	ld a, $1
Dreamyard_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wDreamyardSceneID], a
	jmp GenericFinishBridge
	
TrainerYoungsterDreamyard:
	generictrainer YOUNGSTER, YOUNGSTER_DREAMYARD, EVENT_BEAT_YOUNGSTER_DREAMYARD, .SeenText, .BeatenText

	text "I'm wearing shorts"
	line "to help toughen up"
	
	para "my kneecaps! Do"
	line "you want to feel"
	cont "them?"
	done
	
.SeenText:
	text "Shorts and #-"
	line "mon! This is the"
	
	para "ultimate"
	line "combination!"
	done

.BeatenText:
	text "It's not my #-"
	line "mon's fault! It's"
	
	para "not my shorts'"
	line "fault either!"
	done
	
TrainerSchoolKidMDreamyard:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_DREAMYARD, EVENT_BEAT_SCHOOL_KIDM_DREAMYARD, .SeenText, .BeatenText

	text "My #mon's strong"
	line "points? Hmm… I"
	
	para "don't know, 'cause"
	line "there are too many"
	cont "to count!"
	done
	
.SeenText:
	text "My #mon's"
	line "strong points!"
	
	para "You'll see them if"
	line "you fight!"
	done

.BeatenText:
	text "Hey! Did you see"
	line "my #mon's strong"
	cont "points?"
	done
	
TrainerSchoolKidFDreamyard:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_DREAMYARD, EVENT_BEAT_SCHOOL_KIDF_DREAMYARD, .SeenText, .BeatenText

	text "When you feel a"
	line "#mon breathing,"
	
	para "you can really"
	line "feel how alive"
	cont "they are!"
	done
	
.SeenText:
	text "See my extra-"
	line "ordinarily pretty"
	cont "#mon!"
	done

.BeatenText:
	text "Ah! Its beauty has"
	line "been weakened!"
	done
