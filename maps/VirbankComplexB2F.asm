VirbankComplexB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VirbankComplexB2F_SetTiles

	def_warp_events
	warp_event 11,  0, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event 11,  4, VIRBANK_COMPLEX_B1F, 2

	def_coord_events
	coord_event  4, 11, 0, VirbankComplexB2FSwitchTopLeftScript
	coord_event  4, 17, 0, VirbankComplexB2FSwitchBottomLeftScript
	coord_event 16, 11, 0, VirbankComplexB2FSwitchTopRightScript
	coord_event 16, 17, 0, VirbankComplexB2FSwitchBottomRightScript

	def_bg_events
	
	def_object_events
	object_event 14, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntMVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  2, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntFVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 19, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  9, 20, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerScientistFVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	itemball_event  0,  9, REVIVE, 1, EVENT_VIRBANK_COMPLEX_B2F_REVIVE
	itemball_event 21,  9, CALCIUM, 1, EVENT_VIRBANK_COMPLEX_B2F_CALCIUM
	
VirbankComplexB2F_SetTiles:
	callasm .SetTilesAsm
	endcallback

.SetTilesAsm:
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr z, .AfterTopLeft
	changebridgeblock  4,  8, $5a, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 12, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 10, $4d, VIRBANK_COMPLEX_B2F
	changebridgeblock  0, 10, $64, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 10, $45, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 12, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock 10,  8, $41, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 10, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 12, $61, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopLeftPressedTopRight
	changebridgeblock  4, 14, $42, VIRBANK_COMPLEX_B2F
	jr .TopLeftAfterTopRight
.TopLeftPressedTopRight
	changebridgeblock  4, 14, $1b, VIRBANK_COMPLEX_B2F
.TopLeftAfterTopRight
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .TopLeftPressedBottomLeft
	changebridgeblock 10, 10, $44, VIRBANK_COMPLEX_B2F
	jr .AfterTopLeft
.TopLeftPressedBottomLeft
	changebridgeblock 10, 10, $4b, VIRBANK_COMPLEX_B2F
	
.AfterTopLeft
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr z, .AfterBottomRight
	changebridgeblock 16, 18, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 18, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 16, $4d, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 20, $50, VIRBANK_COMPLEX_B2F
	changebridgeblock 10, 20, $07, VIRBANK_COMPLEX_B2F
	changebridgeblock 20, 16, $50, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 16, $63, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 18, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 10, 18, $62, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 16, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 18, $60, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomRightPressedBottomLeft
	changebridgeblock 16, 14, $43, VIRBANK_COMPLEX_B2F
	jr .BottomRightAfterBottomLeft
.BottomRightPressedBottomLeft
	changebridgeblock 16, 14, $1b, VIRBANK_COMPLEX_B2F
.BottomRightAfterBottomLeft
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .BottomRightPressedTopRight
	changebridgeblock 10, 16, $4a, VIRBANK_COMPLEX_B2F
	jr .AfterBottomRight
.BottomRightPressedTopRight
	changebridgeblock 10, 16, $4b, VIRBANK_COMPLEX_B2F
	
.AfterBottomRight
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr z, .AfterTopRight
	changebridgeblock  4, 18, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 18, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 16, $4d, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 20, $50, VIRBANK_COMPLEX_B2F
	changebridgeblock  0, 16, $50, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 16, $45, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 18, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 16, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 18, $61, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .TopRightPressedTopLeft
	changebridgeblock  4, 14, $43, VIRBANK_COMPLEX_B2F
	jr .TopRightAfterTopLeft
.TopRightPressedTopLeft
	changebridgeblock  4, 14, $1b, VIRBANK_COMPLEX_B2F
.TopRightAfterTopLeft
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .TopRightPressedBottomRight
	changebridgeblock 10, 16, $44, VIRBANK_COMPLEX_B2F
	jr .TopRightCheckBottomLeft
.TopRightPressedBottomRight
	changebridgeblock 10, 16, $4b, VIRBANK_COMPLEX_B2F
.TopRightCheckBottomLeft
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .TopRightPressedBottomLeft
	changebridgeblock 10, 14, $42, VIRBANK_COMPLEX_B2F
	jr .AfterTopRight
.TopRightPressedBottomLeft
	changebridgeblock 10, 14, $41, VIRBANK_COMPLEX_B2F
	
.AfterTopRight
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr z, .Done
	changebridgeblock 16,  8, $5a, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 12, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 10, $4d, VIRBANK_COMPLEX_B2F
	changebridgeblock 20, 10, $48, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 10, $63, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 12, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 10, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 12, $60, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .BottomLeftPressedBottomRight
	changebridgeblock 16, 14, $42, VIRBANK_COMPLEX_B2F
	jr .BottomLeftAfterBottomRight
.BottomLeftPressedBottomRight
	changebridgeblock 16, 14, $1b, VIRBANK_COMPLEX_B2F
.BottomLeftAfterBottomRight
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .BottomLeftPressedTopLeft
	changebridgeblock 10, 10, $4a, VIRBANK_COMPLEX_B2F
	jr .BottomLeftCheckTopRight
.BottomLeftPressedTopLeft
	changebridgeblock 10, 10, $4b, VIRBANK_COMPLEX_B2F
.BottomLeftCheckTopRight
	changebridgeblock 10, 12, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .BottomLeftPressedTopRight
	changebridgeblock 10, 14, $43, VIRBANK_COMPLEX_B2F
	jr .Done
.BottomLeftPressedTopRight
	changebridgeblock 10, 14, $41, VIRBANK_COMPLEX_B2F
.Done
	jmp BufferScreen
	
VirbankComplexB2FSwitchTopLeftScript:
	playsound SFX_TALLY
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	callasm .Position2DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position2AppearAsm
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	callasm .Position1DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position1AppearAsm
.SwitchDone
	playsound SFX_ENTER_DOOR
	waitsfx
	end
	
.Position1DisappearAsm:
	; remove walkways
	changebridgeblock  2, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 10,  8, $5a, VIRBANK_COMPLEX_B2F
	; platform change
	changebridgeblock  4, 10, $4c, VIRBANK_COMPLEX_B2F
	; left-side stairs cutoff
	changebridgeblock  0, 10, $5b, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position1AppearAsm:
	; appear walkways
	changebridgeblock  8, 10, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 12, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock  4,  8, $41, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 12, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos1
	; top-right walkway
	changebridgeblock  4, 14, $41, VIRBANK_COMPLEX_B2F
	jr .ContPos1
.TopRightPressedPos1
	changebridgeblock  4, 14, $43, VIRBANK_COMPLEX_B2F
.ContPos1
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos1
	; middle platform w right walkway
	changebridgeblock 10, 10, $50, VIRBANK_COMPLEX_B2F
	jr .DonePos1
.BottomLeftPressedPos1
	; middle platform w bottom walkway
	changebridgeblock 10, 10, $4a, VIRBANK_COMPLEX_B2F
.DonePos1
	jmp GenericFinishBridge
	
.Position2DisappearAsm:
	; remove walkways
	changebridgeblock  4,  8, $5a, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 12, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 12, $1b, VIRBANK_COMPLEX_B2F
	; platform change
	changebridgeblock  4, 10, $4d, VIRBANK_COMPLEX_B2F
	; left-side stairs open
	changebridgeblock  0, 10, $64, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position2AppearAsm:
	; appear walkways
	changebridgeblock  2, 10, $45, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 12, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock 10,  8, $41, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 10, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 12, $61, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos2
	; top-right walkway
	changebridgeblock  4, 14, $42, VIRBANK_COMPLEX_B2F
	jr .ContPos2
.TopRightPressedPos2
	changebridgeblock  4, 14, $1b, VIRBANK_COMPLEX_B2F
.ContPos2
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos2
	; middle platform w right walkway
	changebridgeblock 10, 10, $44, VIRBANK_COMPLEX_B2F
	jr .DonePos2
.BottomLeftPressedPos2
	; middle platform w bottom walkway
	changebridgeblock 10, 10, $4b, VIRBANK_COMPLEX_B2F
.DonePos2
	jmp GenericFinishBridge
	
VirbankComplexB2FSwitchTopRightScript:
	playsound SFX_TALLY
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	callasm .Position2DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position2AppearAsm
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	callasm .Position1DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position1AppearAsm
.SwitchDone
	playsound SFX_ENTER_DOOR
	waitsfx
	end
	
.Position1DisappearAsm:
	; remove walkways
	changebridgeblock  2, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 18, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 18, $1b, VIRBANK_COMPLEX_B2F
	; platform change
	changebridgeblock  4, 16, $4c, VIRBANK_COMPLEX_B2F
	; bottom side opened
	changebridgeblock  4, 20, $07, VIRBANK_COMPLEX_B2F
	; left-side stairs cutoff
	changebridgeblock  0, 16, $4a, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos1
	; middle platform upper walkway
	changebridgeblock 10, 14, $1b, VIRBANK_COMPLEX_B2F
	jr .DonePos1
.BottomLeftPressedPos1
	changebridgeblock 10, 14, $43, VIRBANK_COMPLEX_B2F
.DonePos1
	jmp GenericFinishBridge
	
.Position1AppearAsm:
	; appear walkways
	changebridgeblock  8, 16, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 18, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock  4, 18, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .TopLeftPressedPos1
	; top-left walkway
	changebridgeblock  4, 14, $41, VIRBANK_COMPLEX_B2F
	jr .ContPos1Appear
.TopLeftPressedPos1
	changebridgeblock  4, 14, $42, VIRBANK_COMPLEX_B2F
.ContPos1Appear
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .BottomRightPressedPos1
	; middle platform w right walkway
	changebridgeblock 10, 16, $50, VIRBANK_COMPLEX_B2F
	jr .DonePos1Appear
.BottomRightPressedPos1
	; middle platform w bottom walkway
	changebridgeblock 10, 16, $4a, VIRBANK_COMPLEX_B2F
.DonePos1Appear
	jmp GenericFinishBridge
	
.Position2DisappearAsm:
	; remove walkways
	changebridgeblock  4, 18, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock  8, 18, $1b, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .TopLeftPressedPos2
	; top-left walkway
	changebridgeblock  4, 14, $43, VIRBANK_COMPLEX_B2F
	jr .ContPos2
.TopLeftPressedPos2
	changebridgeblock  4, 14, $1b, VIRBANK_COMPLEX_B2F
.ContPos2
	; platform change
	changebridgeblock  4, 16, $4d, VIRBANK_COMPLEX_B2F
	; bottom side cutoff
	changebridgeblock  4, 20, $50, VIRBANK_COMPLEX_B2F
	; left side stairs open
	changebridgeblock  0, 16, $50, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position2AppearAsm:
	; appear walkways
	changebridgeblock  2, 16, $45, VIRBANK_COMPLEX_B2F
	changebridgeblock  2, 18, $60, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 16, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock  6, 18, $61, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .BottomRightPressedPos2
	; middle platform w right walkway
	changebridgeblock 10, 16, $44, VIRBANK_COMPLEX_B2F
	jr .CheckBottomLeftPos2
.BottomRightPressedPos2
	; middle platform w bottom walkway
	changebridgeblock 10, 16, $4b, VIRBANK_COMPLEX_B2F
.CheckBottomLeftPos2
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos2
	; middle platform upper walkway
	changebridgeblock 10, 14, $42, VIRBANK_COMPLEX_B2F
	jr .DonePos2
.BottomLeftPressedPos2
	changebridgeblock 10, 14, $41, VIRBANK_COMPLEX_B2F
.DonePos2
	jmp GenericFinishBridge
	
VirbankComplexB2FSwitchBottomLeftScript:
	playsound SFX_TALLY
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	callasm .Position2DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position2AppearAsm
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	callasm .Position1DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position1AppearAsm
.SwitchDone
	playsound SFX_ENTER_DOOR
	waitsfx
	end
	
.Position1DisappearAsm:
	; remove walkways
	changebridgeblock 14, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 12, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 10, 12, $5d, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos1
	; middle platform upper walkway
	changebridgeblock 10, 14, $1b, VIRBANK_COMPLEX_B2F
	jr .ContPos1
.TopRightPressedPos1
	changebridgeblock 10, 14, $42, VIRBANK_COMPLEX_B2F
.ContPos1
	; platform change
	changebridgeblock 16, 10, $4c, VIRBANK_COMPLEX_B2F
	; right-side stairs cutoff
	changebridgeblock 20, 10, $5c, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position1AppearAsm:
	; appear walkways
	changebridgeblock 12, 10, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 12, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 16,  8, $41, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 12, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .BottomRightPressedPos1
	; bottom-right walkway
	changebridgeblock 16, 14, $41, VIRBANK_COMPLEX_B2F
	jr .ContPos1Appear
.BottomRightPressedPos1
	changebridgeblock 16, 14, $43, VIRBANK_COMPLEX_B2F
.ContPos1Appear
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .TopLeftPressedPos1
	; middle platform w left walkway
	changebridgeblock 10, 10, $50, VIRBANK_COMPLEX_B2F
	jr .DonePos1
.TopLeftPressedPos1
	; middle platform w bottom walkway
	changebridgeblock 10, 10, $44, VIRBANK_COMPLEX_B2F
.DonePos1
	jmp GenericFinishBridge
	
.Position2DisappearAsm:
	; remove walkways
	changebridgeblock 16,  8, $5a, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 12, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 10, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 12, $1b, VIRBANK_COMPLEX_B2F
	; platform change
	changebridgeblock 16, 10, $4d, VIRBANK_COMPLEX_B2F
	; right-side stairs open
	changebridgeblock 20, 10, $48, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position2AppearAsm:
	; appear walkways
	changebridgeblock 18, 10, $63, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 12, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 10, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 12, $60, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	jr nz, .BottomRightPressedPos2
	; bottom-right walkway
	changebridgeblock 16, 14, $42, VIRBANK_COMPLEX_B2F
	jr .ContPos2
.BottomRightPressedPos2
	changebridgeblock 16, 14, $1b, VIRBANK_COMPLEX_B2F
.ContPos2
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	jr nz, .TopLeftPressedPos2
	; middle platform w left walkway
	changebridgeblock 10, 10, $4a, VIRBANK_COMPLEX_B2F
	jr .CheckTopRightPos2
.TopLeftPressedPos2
	; middle platform w top walkway
	changebridgeblock 10, 10, $4b, VIRBANK_COMPLEX_B2F
.CheckTopRightPos2
	changebridgeblock 10, 12, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos2
	; middle platform upper walkway
	changebridgeblock 10, 14, $43, VIRBANK_COMPLEX_B2F
	jr .DonePos2
.TopRightPressedPos2
	changebridgeblock 10, 14, $41, VIRBANK_COMPLEX_B2F
.DonePos2
	jmp GenericFinishBridge
	
VirbankComplexB2FSwitchBottomRightScript:
	playsound SFX_TALLY
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	callasm .Position2DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position2AppearAsm
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	callasm .Position1DisappearAsm
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .Position1AppearAsm
.SwitchDone
	playsound SFX_ENTER_DOOR
	waitsfx
	end
	
.Position1DisappearAsm:
	; remove walkways
	changebridgeblock 14, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 18, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 18, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 10, 18, $5d, VIRBANK_COMPLEX_B2F
	; platform change
	changebridgeblock 16, 16, $4c, VIRBANK_COMPLEX_B2F
	; bottom side opened
	changebridgeblock 16, 20, $07, VIRBANK_COMPLEX_B2F
	; middle platforms cutoff
	changebridgeblock 10, 20, $50, VIRBANK_COMPLEX_B2F
	; right side stairs cutoff
	changebridgeblock 20, 16, $49, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position1AppearAsm:
	; appear walkways
	changebridgeblock 12, 16, $47, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 18, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 16, 18, $62, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos1
	; bottom-left walkway
	changebridgeblock 16, 14, $41, VIRBANK_COMPLEX_B2F
	jr .ContPos1
.BottomLeftPressedPos1
	changebridgeblock 16, 14, $42, VIRBANK_COMPLEX_B2F
.ContPos1
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos1
	; middle platform w left walkway
	changebridgeblock 10, 16, $50, VIRBANK_COMPLEX_B2F
	jr .DonePos1
.TopRightPressedPos1
	; middle platform w top walkway
	changebridgeblock 10, 16, $44, VIRBANK_COMPLEX_B2F
.DonePos1
	jmp GenericFinishBridge
	
.Position2DisappearAsm:
	; remove walkways
	changebridgeblock 16, 18, $5d, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 16, $1b, VIRBANK_COMPLEX_B2F
	changebridgeblock 12, 18, $1b, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	jr nz, .BottomLeftPressedPos2
	; bottom-left walkway
	changebridgeblock 16, 14, $43, VIRBANK_COMPLEX_B2F
	jr .ContPos2
.BottomLeftPressedPos2
	changebridgeblock 16, 14, $1b, VIRBANK_COMPLEX_B2F
.ContPos2
	; platform change
	changebridgeblock 16, 16, $4d, VIRBANK_COMPLEX_B2F
	; bottom side cutoff
	changebridgeblock 16, 20, $50, VIRBANK_COMPLEX_B2F
	; middle platforms open
	changebridgeblock 10, 20, $07, VIRBANK_COMPLEX_B2F
	; right side stairs open
	changebridgeblock 20, 16, $50, VIRBANK_COMPLEX_B2F
	jmp GenericFinishBridge
	
.Position2AppearAsm:
	; appear walkways
	changebridgeblock 18, 16, $63, VIRBANK_COMPLEX_B2F
	changebridgeblock 18, 18, $61, VIRBANK_COMPLEX_B2F
	changebridgeblock 10, 18, $62, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 16, $46, VIRBANK_COMPLEX_B2F
	changebridgeblock 14, 18, $60, VIRBANK_COMPLEX_B2F
	eventflagcheck EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	jr nz, .TopRightPressedPos2
	; middle platform w left walkway
	changebridgeblock 10, 16, $4a, VIRBANK_COMPLEX_B2F
	jr .DonePos2
.TopRightPressedPos2
	; middle platform w yop walkway
	changebridgeblock 10, 16, $4b, VIRBANK_COMPLEX_B2F
.DonePos2
	jmp GenericFinishBridge
	
TrainerGruntMVirbankComplexB2F:
	generictrainer GRUNTM, GRUNTM_VIRBANK_COMPLEX_3, EVENT_BEAT_GRUNTM_VIRBANK_COMPLEX_3, .SeenText, .BeatenText

	text "How can this be?"
	line "Is that the kind"
	
	para "of power #mon"
	line "have when they're"
	
	para "not treated like"
	line "objects?"
	done
	
.SeenText:
	text "#mon are pawns!"
	line "They're a means to"
	cont "an end."
	
	para "That's what I was"
	line "taught! Don't think"
	cont "about it too much."
	done

.BeatenText:
	text "You little… You"
	line "knocked out my"
	cont "stupid pawns!"
	done
	
TrainerGruntFVirbankComplexB2F:
	generictrainer GRUNTF, GRUNTF_VIRBANK_COMPLEX_2, EVENT_BEAT_GRUNTF_VIRBANK_COMPLEX_2, .SeenText, .BeatenText

	text "How humiliating…"
	line "Being bothered by"
	cont "a bother…"
	done
	
.SeenText:
	text "Don't get in our"
	line "way! You bother!"

	para "Bother, bother,"
	line "bother!"
	done

.BeatenText:
	text "Arrgh! Lame!"
	line "Stupid! Fool!"
	cont "Plasmaaa!"
	done
	
TrainerScientistMVirbankComplexB2F:
	generictrainer PLASMA_SCIENTISTM, SCIENTISTM_VIRBANK_COMPLEX, EVENT_BEAT_SCIENTISTM_VIRBANK_COMPLEX, .SeenText, .BeatenText

	text "This better not"
	line "affect my new"
	cont "promotion!"
	done
	
.SeenText:
	text "I used to work in"
	line "the Complex, but"

	para "now I run research"
	line "for Team Plasma!"
	done

.BeatenText:
	text "Battling isn't"
	line "exactly my strong"
	cont "suit…"
	done
	
TrainerScientistFVirbankComplexB2F:
	generictrainer PLASMA_SCIENTISTF, SCIENTISTF_VIRBANK_COMPLEX_2, EVENT_BEAT_SCIENTISTF_VIRBANK_COMPLEX_2, .SeenText, .BeatenText

	text "Don't you think"
	line "there will be less"

	para "war if Team Plasma"
	line "takes over the"
	cont "world?"
	done
	
.SeenText:
	text "Even if you win a"
	line "battle, you won't"
	
	para "necessarily get"
	line "the answer you're"
	cont "looking for."
	
	para "You might get"
	line "something else,"
	cont "though!"
	done

.BeatenText:
	text "Grr… What even is"
	line "the point of a"
	cont "#mon battle?"
	done
	