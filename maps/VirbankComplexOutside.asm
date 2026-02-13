VirbankComplexOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VirbankComplexOutsideTileScript

	def_warp_events
	warp_event 14,  4, VIRBANK_CITY, 9
	warp_event 15,  4, VIRBANK_CITY, 10
	warp_event 16,  4, VIRBANK_CITY, 11
	warp_event 17,  4, VIRBANK_CITY, 12

	def_coord_events
	coord_event 11, 36, 1, VirbankComplexOutsideBridge1OverheadTrigger
	coord_event 12, 36, 0, VirbankComplexOutsideBridge1UnderfootTrigger
	coord_event 17, 36, 0, VirbankComplexOutsideBridge1UnderfootTrigger
	coord_event 17, 35, 1, VirbankComplexOutsideBridge1OverheadTrigger
	coord_event 11, 32, 1, VirbankComplexOutsideBridge2OverheadTrigger
	coord_event 12, 32, 0, VirbankComplexOutsideBridge2UnderfootTrigger
	coord_event 15, 32, 0, VirbankComplexOutsideBridge2UnderfootTrigger
	coord_event 16, 32, 1, VirbankComplexOutsideBridge2OverheadTrigger
	coord_event 12, 29, 1, VirbankComplexOutsideBridgesOverheadTrigger
	coord_event 13, 29, 1, VirbankComplexOutsideBridgesOverheadTrigger
	coord_event 14, 29, 1, VirbankComplexOutsideBridgesOverheadTrigger
	coord_event 15, 29, 1, VirbankComplexOutsideBridgesOverheadTrigger

	def_bg_events
	bg_event  9,  9, BGEVENT_ITEM + PEARL, EVENT_VIRBANK_COMPLEX_OUTSIDE_PEARL
	
	def_object_events
	object_event  5, 30, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, VirbankComplexOutsideCherenScript, EVENT_VIRBANK_COMPLEX_OUTSIDE_CHEREN
	itemball_event  9, 27, X_SPEED, 1, EVENT_VIRBANK_COMPLEX_OUTSIDE_X_SPEED
	itemball_event 21, 46, ETHER, 3, EVENT_VIRBANK_COMPLEX_OUTSIDE_ETHER
	itemball_event 23, 33, RARE_CANDY, 1, EVENT_VIRBANK_COMPLEX_OUTSIDE_RARE_CANDY
	itemball_event 23, 23, LEVEL_BALL, 3, EVENT_VIRBANK_COMPLEX_OUTSIDE_LEVEL_BALL
	keyitemball_event 22, 12, FERRY_TICKET, EVENT_VIRBANK_COMPLEX_OUTSIDE_FERRY_TICKET
	
	object_const_def
	const VIRBANKCOMPLEXOUTSIDE_CHEREN
	
VirbankComplexOutsideTileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 12, 36, $49, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 36, $4a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 16, 36, $4b, VIRBANK_COMPLEX_OUTSIDE
	; bridge 2
	changebridgeblock 12, 30, $3c, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 30, $3d, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 12, 32, $3a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 32, $41, VIRBANK_COMPLEX_OUTSIDE
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 12, 36, $90, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 36, $91, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 16, 36, $92, VIRBANK_COMPLEX_OUTSIDE
	; bridge 2
	changebridgeblock 12, 30, $8c, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 30, $8d, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 12, 32, $a0, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 32, $a1, VIRBANK_COMPLEX_OUTSIDE
	jmp BufferScreen

VirbankComplexOutsideBridge1OverheadTrigger:
	callthisasm
	changebridgeblock 12, 36, $49, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 36, $4a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 16, 36, $4b, VIRBANK_COMPLEX_OUTSIDE
	jp VirbankComplexOutside_FinishOverheadBridge
	
VirbankComplexOutsideBridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 12, 36, $90, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 36, $91, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 16, 36, $92, VIRBANK_COMPLEX_OUTSIDE
	jp VirbankComplexOutside_FinishUnderfootBridge
	
VirbankComplexOutsideBridge2OverheadTrigger:
	callthisasm
	changebridgeblock 12, 30, $3c, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 30, $3d, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 12, 32, $3a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 32, $41, VIRBANK_COMPLEX_OUTSIDE
	jp VirbankComplexOutside_FinishOverheadBridge
	
VirbankComplexOutsideBridgesOverheadTrigger:
	; bridge 1
	changebridgeblock 12, 36, $49, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 36, $4a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 16, 36, $4b, VIRBANK_COMPLEX_OUTSIDE
	; bridge 2
	changebridgeblock 12, 30, $3c, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 30, $3d, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 12, 32, $3a, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 32, $41, VIRBANK_COMPLEX_OUTSIDE
	; fallthrough
VirbankComplexOutside_FinishOverheadBridge:
	xor a
	jr VirbankComplexOutside_FinishBridge
	
VirbankComplexOutsideBridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 12, 30, $8c, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 30, $8d, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 12, 32, $a0, VIRBANK_COMPLEX_OUTSIDE
	changebridgeblock 14, 32, $a1, VIRBANK_COMPLEX_OUTSIDE
	; fallthrough
VirbankComplexOutside_FinishUnderfootBridge:
	ld a, $1
VirbankComplexOutside_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wVirbankComplexOutsideSceneID], a
	jmp GenericFinishBridge
	
VirbankComplexOutsideCherenScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	faceplayer
	opentext
	writethistext
	text "Cheren: <PLAYER>,"
	line "good timing."
	
	para "I've been invest-"
	line "igating this"
	cont "Complex."
	
	para "It's as I thought,"
	line "Team Plasma has"
	
	para "infiltrated the"
	line "Complex. They"
	
	para "must be after"
	line "something…"
	
	para "I managed to snag"
	line "a key to the lift"
	
	para "that leads into"
	line "the facility."
	
	para "Here, you should"
	line "take it."
	done
	promptbutton
	verbosegiveitem LIFT_KEY
	writethistext
	text "Cheren: I'm going"
	line "to head inside to"
	cont "look around."
	
	para "Hopefully we can"
	line "stop Team Plasma"
	
	para "from taking what"
	line "they want this"
	cont "time."
	done
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd LEFT, .MoveCheren
	ifequalfwd RIGHT, .MoveCheren
	applymovement PLAYER, .PlayerMovement
.MoveCheren
	applymovement VIRBANKCOMPLEXOUTSIDE_CHEREN, .CherenMovement
	disappear VIRBANKCOMPLEXOUTSIDE_CHEREN
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
.PlayerMovement:
	step_left
	turn_head_right
	step_end
	
.CherenMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	