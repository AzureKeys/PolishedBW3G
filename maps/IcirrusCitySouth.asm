IcirrusCitySouth_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IcirrusFlyPoint
	callback MAPCALLBACK_TILES, IcirrusCitySouthTileScript

	def_warp_events
	warp_event 13,  3, ICIRRUS_POKECENTER, 1
	warp_event 35, 17, ICIRRUS_ROCKET_HOUSE, 1

	def_coord_events
	coord_event 16,  4, 1, IcirrusCitySouthBridge1OverheadTrigger
	coord_event 16,  5, 1, IcirrusCitySouthBridge1OverheadTrigger
	coord_event 17,  4, 0, IcirrusCitySouthBridge1UnderfootTrigger
	coord_event 17,  5, 0, IcirrusCitySouthBridge1UnderfootTrigger
	coord_event 26,  4, 0, IcirrusCitySouthBridge1UnderfootTrigger
	coord_event 26,  5, 0, IcirrusCitySouthBridge1UnderfootTrigger
	coord_event 27,  4, 1, IcirrusCitySouthBridge1OverheadTrigger
	coord_event 27,  5, 1, IcirrusCitySouthBridge1OverheadTrigger
	coord_event 30,  2, 1, IcirrusCitySouthBridge2OverheadTrigger
	coord_event 30,  3, 1, IcirrusCitySouthBridge2OverheadTrigger
	coord_event 31,  2, 0, IcirrusCitySouthBridge2UnderfootTrigger
	coord_event 31,  3, 0, IcirrusCitySouthBridge2UnderfootTrigger
	coord_event 37,  2, 0, IcirrusCitySouthBridge2UnderfootTrigger
	coord_event 37,  3, 0, IcirrusCitySouthBridge2UnderfootTrigger
	coord_event 38,  2, 1, IcirrusCitySouthBridge2OverheadTrigger
	coord_event 38,  3, 1, IcirrusCitySouthBridge2OverheadTrigger
	coord_event  9, 10, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 10, 10, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event  5, 14, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event  4, 15, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 32,  1, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 33,  1, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 34,  1, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 35,  1, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 36,  1, 1, IcirrusCitySouthBridgesOverheadTrigger
	coord_event 37,  1, 1, IcirrusCitySouthBridgesOverheadTrigger

	def_bg_events
	bg_event  8, 13, BGEVENT_JUMPTEXT, IcirrusCitySignText
	bg_event 29,  2, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_ICIRRUS_CITY_SOUTH_BIG_MUSHROOM
	bg_event 44,  0, BGEVENT_ITEM + MAX_REVIVE, EVENT_ICIRRUS_CITY_SOUTH_MAX_REVIVE
	
	def_object_events
	object_event  6, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusCitySouthPokefanMScript, -1
	object_event 13, 14, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusCitySouthLadyText, -1
	object_event 42, 11, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusCitySouthFisherText, -1
	itemball_event 22,  2, ULTRA_BALL, 3, EVENT_ICIRRUS_CITY_SOUTH_ULTRA_BALL
	itemball_event 15, 21, TIMER_BALL, 3, EVENT_ICIRRUS_CITY_SOUTH_TIMER_BALL
	itemball_event  4,  1, MAX_POTION, 3, EVENT_ICIRRUS_CITY_SOUTH_MAX_POTION
	
IcirrusFlyPoint:
	setflag ENGINE_FLYPOINT_ICIRRUS
	endcallback
	
IcirrusCitySouthTileScript:
	checkevent EVENT_OPENED_TWIST_MOUNTAIN
	iffalsefwd .CheckBridges
	changeblock  4, 12, $1d
.CheckBridges
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 16,  4, $50, ICIRRUS_CITY_SOUTH
	changebridgeblock 18,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 20,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 22,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 24,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 26,  4, $52, ICIRRUS_CITY_SOUTH
	; bridge 2
	changebridgeblock 30,  2, $60, ICIRRUS_CITY_SOUTH
	changebridgeblock 32,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 34,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 36,  2, $62, ICIRRUS_CITY_SOUTH
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 16,  4, $4c, ICIRRUS_CITY_SOUTH
	changebridgeblock 18,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 20,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 22,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 24,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 26,  4, $4e, ICIRRUS_CITY_SOUTH
	; bridge 2
	changebridgeblock 30,  2, $5c, ICIRRUS_CITY_SOUTH
	changebridgeblock 32,  2, $5d, ICIRRUS_CITY_SOUTH
	changebridgeblock 34,  2, $5d, ICIRRUS_CITY_SOUTH
	changebridgeblock 36,  2, $5d, ICIRRUS_CITY_SOUTH
	jmp BufferScreen

IcirrusCitySouthBridge1OverheadTrigger:
	callthisasm
	changebridgeblock 16,  4, $50, ICIRRUS_CITY_SOUTH
	changebridgeblock 18,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 20,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 22,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 24,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 26,  4, $52, ICIRRUS_CITY_SOUTH
	jp IcirrusCitySouth_FinishOverheadBridge
	
IcirrusCitySouthBridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 16,  4, $4c, ICIRRUS_CITY_SOUTH
	changebridgeblock 18,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 20,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 22,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 24,  4, $4d, ICIRRUS_CITY_SOUTH
	changebridgeblock 26,  4, $4e, ICIRRUS_CITY_SOUTH
	jp IcirrusCitySouth_FinishUnderfootBridge
	
IcirrusCitySouthBridge2OverheadTrigger:
	callthisasm
	changebridgeblock 30,  2, $60, ICIRRUS_CITY_SOUTH
	changebridgeblock 32,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 34,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 36,  2, $62, ICIRRUS_CITY_SOUTH
	jp IcirrusCitySouth_FinishOverheadBridge
	
IcirrusCitySouthBridgesOverheadTrigger:
	callthisasm
	; bridge 1
	changebridgeblock 16,  4, $50, ICIRRUS_CITY_SOUTH
	changebridgeblock 18,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 20,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 22,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 24,  4, $51, ICIRRUS_CITY_SOUTH
	changebridgeblock 26,  4, $52, ICIRRUS_CITY_SOUTH
	; bridge 2
	changebridgeblock 30,  2, $60, ICIRRUS_CITY_SOUTH
	changebridgeblock 32,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 34,  2, $61, ICIRRUS_CITY_SOUTH
	changebridgeblock 36,  2, $62, ICIRRUS_CITY_SOUTH
	; fallthrough
IcirrusCitySouth_FinishOverheadBridge:
	xor a
	jr IcirrusCitySouth_FinishBridge
	
IcirrusCitySouthBridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 30,  2, $5c, ICIRRUS_CITY_SOUTH
	changebridgeblock 32,  2, $5d, ICIRRUS_CITY_SOUTH
	changebridgeblock 34,  2, $5d, ICIRRUS_CITY_SOUTH
	changebridgeblock 36,  2, $5d, ICIRRUS_CITY_SOUTH
	; fallthrough
IcirrusCitySouth_FinishUnderfootBridge:
	ld a, $1
IcirrusCitySouth_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wIcirrusCitySouthSceneID], a
	jmp GenericFinishBridge
	
IcirrusCitySouthPokefanMScript:
	checkevent EVENT_OPENED_TWIST_MOUNTAIN
	iftrue_jumptextfaceplayer .OpenedText
	jumpthistextfaceplayer
	text "There used to be a"
	line "cave here that led"
	cont "to Twist Mountain."
	
	para "But all the"
	line "construction"
	
	para "caused the"
	line "entrance to"
	cont "collapse…"
	
	para "The crews can"
	line "still get in and"
	
	para "out through the"
	line "other side, but it"
	
	para "is a real"
	line "inconvenience for"
	cont "us…"
	done
	
.OpenedText:
	text "You're never going"
	line "to believe this!"
	
	para "A strange looking"
	line "mechanical thing"
	
	para "came flying by"
	line "here and knocked"
	
	para "open the entrance"
	line "to the mountain!"
	
	para "I wonder if it was"
	line "some kind of #-"
	cont "mon…"
	
	para "It's not any I've"
	line "ever seen before…"
	done
	
IcirrusCitySouthLadyText:
	text "If you walk in the"
	line "wetlands, you"
	
	para "might surprise"
	line "wild #mon into"
	cont "popping out!"
	done
	
IcirrusCitySouthFisherText:
	text "Two legendary"
	line "dragons, awoken at"
	cont "the tower…"
	
	para "The stories I"
	line "heard when I was"
	
	para "little turned out"
	line "to be true!"
	done

IcirrusCitySignText:
	text "Icirrus City"
	
	para "Sky glittering"
	line "with flowers of"
	cont "snow."
	done
	