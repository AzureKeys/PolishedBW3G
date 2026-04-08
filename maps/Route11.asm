Route11_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route11TileScript

	def_warp_events
	warp_event  4, 12, ROUTE_11_OPELUCID_GATE, 3
	warp_event  4, 13, ROUTE_11_OPELUCID_GATE, 4
	warp_event 37, 12, ROUTE_11_VILLAGE_BRIDGE_GATE, 1
	warp_event 37, 13, ROUTE_11_VILLAGE_BRIDGE_GATE, 2
	warp_event 26,  9, ROUTE_11_TRUCK, 1
	
	def_coord_events
	coord_event 28, 10, 1, Route11BridgeOverheadTrigger
	coord_event 28, 11, 1, Route11BridgeOverheadTrigger
	coord_event 28, 12, 1, Route11BridgeOverheadTrigger
	coord_event 28, 13, 1, Route11BridgeOverheadTrigger
	coord_event 29, 10, 0, Route11BridgeUnderfootTrigger
	coord_event 29, 11, 0, Route11BridgeUnderfootTrigger
	coord_event 29, 12, 0, Route11BridgeUnderfootTrigger
	coord_event 29, 13, 0, Route11BridgeUnderfootTrigger
	coord_event 34, 10, 0, Route11BridgeUnderfootTrigger
	coord_event 34, 11, 0, Route11BridgeUnderfootTrigger
	coord_event 34, 12, 0, Route11BridgeUnderfootTrigger
	coord_event 34, 13, 0, Route11BridgeUnderfootTrigger
	coord_event 35, 10, 1, Route11BridgeOverheadTrigger
	coord_event 35, 11, 1, Route11BridgeOverheadTrigger
	coord_event 35, 12, 1, Route11BridgeOverheadTrigger
	coord_event 35, 13, 1, Route11BridgeOverheadTrigger
	coord_event 30, 15, 1, Route11BridgeOverheadTrigger
	coord_event 31, 15, 1, Route11BridgeOverheadTrigger
	coord_event 32, 15, 1, Route11BridgeOverheadTrigger
	coord_event 33, 15, 1, Route11BridgeOverheadTrigger

	def_bg_events
	bg_event 35, 19, BGEVENT_ITEM + MAX_REVIVE, EVENT_ROUTE_11_MAX_REVIVE
	bg_event 28,  6, BGEVENT_ITEM + MAX_POTION, EVENT_ROUTE_11_MAX_POTION
	bg_event 26,  4, BGEVENT_ITEM + PP_UP, EVENT_ROUTE_11_PP_UP
	
	def_object_events
	object_event 12, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersMR11, -1
	object_event 13, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersMR11, -1
	object_event 19, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersFR11, -1
	object_event 20, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackersFR11, -1
	object_event 10,  6, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route11AmoongussScript, EVENT_ROUTE_11_AMOONGUSS_1
	object_event 30,  6, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route11AmoongussScript, EVENT_ROUTE_11_AMOONGUSS_2
	itemball_event  6,  7, HYPER_POTION, 3, EVENT_ROUTE_11_HYPER_POTION
	itemball_event 35,  6, RAZOR_CLAW, 1, EVENT_ROUTE_11_RAZOR_CLAW
	itemball_event 10, 15, FULL_RESTORE, 1, EVENT_ROUTE_11_FULL_RESTORE
	itemball_event 13,  7, HP_UP, 1, EVENT_ROUTE_11_HP_UP
	
Route11TileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock 28, 10, $11, ROUTE_11
	changebridgeblock 28, 12, $15, ROUTE_11
	changebridgeblock 30, 10, $d5, ROUTE_11
	changebridgeblock 30, 12, $d9, ROUTE_11
	changebridgeblock 32, 10, $d5, ROUTE_11
	changebridgeblock 32, 12, $d9, ROUTE_11
	changebridgeblock 34, 10, $10, ROUTE_11
	changebridgeblock 34, 12, $14, ROUTE_11
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock 28, 10, $a0, ROUTE_11
	changebridgeblock 28, 12, $a4, ROUTE_11
	changebridgeblock 30, 10, $d4, ROUTE_11
	changebridgeblock 30, 12, $d8, ROUTE_11
	changebridgeblock 32, 10, $d4, ROUTE_11
	changebridgeblock 32, 12, $d8, ROUTE_11
	changebridgeblock 34, 10, $a0, ROUTE_11
	changebridgeblock 34, 12, $a4, ROUTE_11
	jmp BufferScreen
	
Route11BridgeOverheadTrigger:
	callthisasm
	changebridgeblock 28, 10, $11, ROUTE_11
	changebridgeblock 28, 12, $15, ROUTE_11
	changebridgeblock 30, 10, $d5, ROUTE_11
	changebridgeblock 30, 12, $d9, ROUTE_11
	changebridgeblock 32, 10, $d5, ROUTE_11
	changebridgeblock 32, 12, $d9, ROUTE_11
	changebridgeblock 34, 10, $10, ROUTE_11
	changebridgeblock 34, 12, $14, ROUTE_11
	
	xor a
	jr Route11_FinishBridge
	
Route11BridgeUnderfootTrigger:
	callthisasm
	changebridgeblock 28, 10, $a0, ROUTE_11
	changebridgeblock 28, 12, $a4, ROUTE_11
	changebridgeblock 30, 10, $d4, ROUTE_11
	changebridgeblock 30, 12, $d8, ROUTE_11
	changebridgeblock 32, 10, $d4, ROUTE_11
	changebridgeblock 32, 12, $d8, ROUTE_11
	changebridgeblock 34, 10, $a0, ROUTE_11
	changebridgeblock 34, 12, $a4, ROUTE_11
	
	ld a, $1
Route11_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute11SceneID], a
	jmp GenericFinishBridge
	
Route11AmoongussScript:
	cry AMOONGUSS
	loadwildmon AMOONGUSS, 48
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end
	
TrainerBackersMR11:
	generictrainer BACKERSM, BACKERSM_R11, EVENT_BEAT_BACKERSM_R11, .SeenText, .BeatenText

	text "To be a great"
	line "sport player, you"
	
	para "have to be able to"
	line "play defense, hit,"
	cont "and run!"
	done
	
.SeenText:
	text "Sports and #-"
	line "mon battles are"
	
	para "dramas that don't"
	line "need scripts!"
	done

.BeatenText:
	text "We were the"
	line "underdogs…"
	done
	
TrainerBackersFR11:
	generictrainer BACKERSF, BACKERSF_R11, EVENT_BEAT_BACKERSF_R11, .SeenText, .BeatenText

	text "A fan needs to be"
	line "100 percent about"
	
	para "both battles and"
	line "cheering!"
	done
	
.SeenText:
	text "Knowing what a"
	line "truly heated"
	
	para "battle is all"
	line "about is the key"
	
	para "to truly passion-"
	line "ate cheering!"
	done

.BeatenText:
	text "I cheered as best"
	line "as I could…"
	done
	