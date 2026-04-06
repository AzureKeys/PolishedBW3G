SeasideCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SeasideCave1FTileScript

	def_warp_events
	warp_event  5,  5, ROUTE_21, 1
	warp_event  5, 33, UNDELLA_TOWN, 7
	warp_event 13,  9, SEASIDE_CAVE_B1F, 1
	warp_event 19,  3, SEASIDE_CAVE_B1F, 2
	
	def_coord_events
	coord_event  7, 24, 1, SeasideCave1FBridgeOverheadTrigger
	coord_event  7, 25, 1, SeasideCave1FBridgeOverheadTrigger
	coord_event  8, 24, 0, SeasideCave1FBridgeUnderfootTrigger
	coord_event  8, 25, 0, SeasideCave1FBridgeUnderfootTrigger
	coord_event 13, 24, 0, SeasideCave1FBridgeUnderfootTrigger
	coord_event 13, 25, 0, SeasideCave1FBridgeUnderfootTrigger
	coord_event 14, 24, 1, SeasideCave1FBridgeOverheadTrigger
	coord_event 14, 25, 1, SeasideCave1FBridgeOverheadTrigger
	coord_event  8, 19, 1, SeasideCave1FBridgeOverheadTrigger

	def_bg_events
	bg_event  2, 22, BGEVENT_ITEM + CALCIUM, EVENT_SEASIDE_CAVE_1F_CALCIUM
	
	def_object_events
	object_event  4,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 0, TrainerDoctorSeasideCave1F, -1
	object_event  3, 15, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranFSeasideCave1F, -1
	object_event  3, 25, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerBlackbeltSeasideCave1F, -1
	object_event  9, 11, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBattleGirlSeasideCave1F, -1
	itemball_event 17, 31, FULL_RESTORE, 1, EVENT_SEASIDE_CAVE_1F_FULL_RESTORE
	itemball_event  7, 13, MAX_REVIVE, 1, EVENT_SEASIDE_CAVE_1F_MAX_REVIVE
	itemball_event  8,  4, RARE_CANDY, 1, EVENT_SEASIDE_CAVE_1F_RARE_CANDY
	itemball_event 14, 14, DIVE_BALL, 3, EVENT_SEASIDE_CAVE_1F_DIVE_BALL
	itemball_event  6, 28, HEART_SCALE, 1, EVENT_SEASIDE_CAVE_1F_HEART_SCALE
	itemball_event 14, 26, BLUE_SHARD, 1, EVENT_SEASIDE_CAVE_1F_BLUE_SHARD
	
SeasideCave1FTileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock  8, 24, $5c, SEASIDE_CAVE_1F
	changebridgeblock 10, 24, $5e, SEASIDE_CAVE_1F
	changebridgeblock 12, 24, $5d, SEASIDE_CAVE_1F
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock  8, 24, $5f, SEASIDE_CAVE_1F
	changebridgeblock 10, 24, $5f, SEASIDE_CAVE_1F
	changebridgeblock 12, 24, $5f, SEASIDE_CAVE_1F
	jmp BufferScreen
	
SeasideCave1FBridgeOverheadTrigger:
	callthisasm
	changebridgeblock  8, 24, $5c, SEASIDE_CAVE_1F
	changebridgeblock 10, 24, $5e, SEASIDE_CAVE_1F
	changebridgeblock 12, 24, $5d, SEASIDE_CAVE_1F

	xor a
	jr SeasideCave1F_FinishBridge
	
SeasideCave1FBridgeUnderfootTrigger:
	callthisasm
	changebridgeblock  8, 24, $5f, SEASIDE_CAVE_1F
	changebridgeblock 10, 24, $5f, SEASIDE_CAVE_1F
	changebridgeblock 12, 24, $5f, SEASIDE_CAVE_1F

	ld a, $1
SeasideCave1F_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wSeasideCave1FSceneID], a
	jmp GenericFinishBridge
	
TrainerDoctorSeasideCave1F:
	trainer DOCTOR, DOCTOR_SEASIDE_CAVE, EVENT_BEAT_DOCTOR_SEASIDE_CAVE, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerVeteranFSeasideCave1F:
	generictrainer VETERANF, VETERANF_SEASIDE_CAVE, EVENT_BEAT_VETERANF_SEASIDE_CAVE, .SeenText, .BeatenText

	text "Young kids sure"
	line "have it good. They"

	para "get to meet all"
	line "kinds of #mon!"
	done
	
.SeenText:
	text "Let me show you"
	line "the #mon that I"
	cont "met by fate!"
	done

.BeatenText:
	text "The #mon that"
	line "you've met are"
	
	para "quite formidable,"
	line "aren't they?"
	done
	
TrainerBlackbeltSeasideCave1F:
	generictrainer BLACKBELT_T, BLACKBELT_SEASIDE_CAVE_1, EVENT_BEAT_BLACKBELT_SEASIDE_CAVE_1, .SeenText, .BeatenText

	text "Winners win"
	line "because they"
	cont "deserve to win!"
	done
	
.SeenText:
	text "The path of karate"
	line "is the path of"

	para "humanity… and the"
	line "path of #mon!"
	done

.BeatenText:
	text "Oof! It is not by"
	line "chance that you"
	cont "have won!"
	done
	
TrainerBattleGirlSeasideCave1F:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_SEASIDE_CAVE_1, EVENT_BEAT_BATTLE_GIRL_SEASIDE_CAVE_1, .SeenText, .BeatenText

	text "Hmm… I just can't"
	line "act naturally when"
	
	para "I'm focused on"
	line "winning!"
	done
	
.SeenText:
	text "Greetings! So…"
	line "shall we do this?"
	done

.BeatenText:
	text "What an upset!"
	done
	