Route15_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route15TileScript
	callback MAPCALLBACK_STONETABLE, Route15BoulderCallback

	def_warp_events
	warp_event  4, 10, ROUTE_15_MARVELOUS_BRIDGE_GATE, 3
	warp_event  4, 11, ROUTE_15_MARVELOUS_BRIDGE_GATE, 4
	warp_event 31, 13, ROUTE_15, 1 ; hole
	warp_event 38, 17, ROUTE_15, 1 ; hole

	def_coord_events
	coord_event 13,  4, 1, Route15Bridge1OverheadTrigger
	coord_event 13,  5, 1, Route15Bridge1OverheadTrigger
	coord_event 14,  4, 0, Route15Bridge1UnderfootTrigger
	coord_event 14,  5, 0, Route15Bridge1UnderfootTrigger
	coord_event 16,  4, 0, Route15Bridge1UnderfootTrigger
	coord_event 16,  5, 0, Route15Bridge1UnderfootTrigger
	coord_event 17,  4, 1, Route15Bridge1OverheadTrigger
	coord_event 17,  5, 1, Route15Bridge1OverheadTrigger
	coord_event 27,  4, 1, Route15Bridge2OverheadTrigger
	coord_event 27,  5, 1, Route15Bridge2OverheadTrigger
	coord_event 28,  4, 0, Route15Bridge2UnderfootTrigger
	coord_event 28,  5, 0, Route15Bridge2UnderfootTrigger
	coord_event 32,  4, 0, Route15Bridge2UnderfootTrigger
	coord_event 32,  5, 0, Route15Bridge2UnderfootTrigger
	coord_event 33,  4, 1, Route15Bridge2OverheadTrigger
	coord_event 33,  5, 1, Route15Bridge2OverheadTrigger
	coord_event 15,  9, 1, Route15BridgesOverheadTrigger
	coord_event 31,  9, 1, Route15BridgesOverheadTrigger

	def_bg_events
	
	def_object_events
	strengthboulder_event 24, 13, EVENT_ROUTE_15_BOULDER_1
	strengthboulder_event 35, 14, EVENT_ROUTE_15_BOULDER_2
	
object_const_def
	const ROUTE15_BOULDER_1
	const ROUTE15_BOULDER_2
	
Route15BoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, ROUTE15_BOULDER_1, .Disappear1
	stonetable 4, ROUTE15_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear ROUTE15_BOULDER_1
	changeblock 30, 12, $ea
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear ROUTE15_BOULDER_2
	changeblock 38, 16, $f1
	; fallthrough
.DoneBoulder:
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	end
	
Route15TileScript:
	checkevent EVENT_ROUTE_15_BOULDER_1
	iffalsefwd .check2
	changeblock 30, 12, $ea
.check2
	checkevent EVENT_ROUTE_15_BOULDER_2
	iffalsefwd .HandleBridges
	changeblock 38, 16, $f1
.HandleBridges
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 14,  4, $c9, ROUTE_15
	; bridge 2
	changebridgeblock 28,  4, $dd, ROUTE_15
	changebridgeblock 30,  4, $de, ROUTE_15
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 14,  4, $ca, ROUTE_15
	; bridge 2
	changebridgeblock 28,  4, $ca, ROUTE_15
	changebridgeblock 30,  4, $ca, ROUTE_15
	jmp BufferScreen

Route15Bridge1OverheadTrigger:
	callthisasm
	changebridgeblock 14,  4, $c9, ROUTE_15
	jr Route15_FinishOverheadBridge

Route15Bridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 14,  4, $ca, ROUTE_15
	jr Route15_FinishUnderfootBridge

Route15Bridge2OverheadTrigger:
	callthisasm
	changebridgeblock 28,  4, $dd, ROUTE_15
	changebridgeblock 30,  4, $de, ROUTE_15
	jr Route15_FinishOverheadBridge

Route15BridgesOverheadTrigger:
	callthisasm
	; bridge 1
	changebridgeblock 14,  4, $c9, ROUTE_15
	; bridge 2
	changebridgeblock 28,  4, $dd, ROUTE_15
	changebridgeblock 30,  4, $de, ROUTE_15
	; fallthrough
Route15_FinishOverheadBridge:
	xor a
	jr Route15_FinishBridge
	
Route15Bridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 28,  4, $ca, ROUTE_15
	changebridgeblock 30,  4, $ca, ROUTE_15
	; fallthrough
Route15_FinishUnderfootBridge:
	ld a, $1
	; fallthrough
Route15_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute15SceneID], a
	jmp GenericFinishBridge
	