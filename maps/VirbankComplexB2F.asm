VirbankComplexB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VirbankComplexB2F_SetTiles

	def_warp_events
	warp_event 11,  0, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event 11,  4, VIRBANK_COMPLEX_B1F, 2

	def_coord_events
	coord_event  4, 11, 0, VirbankComplexB2FSwitchTopLeftScript
	coord_event  4, 17, 0, VirbankComplexB2FSwitchTopRightScript
	coord_event 16, 11, 0, VirbankComplexB2FSwitchBottomLeftScript
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
	opentext
	writetext VirbankComplexSwitchText
	promptbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	; remove walkways
	changeblock  4,  8, $5a
	changeblock  4, 12, $5d
	changeblock  8, 10, $1b
	changeblock  8, 12, $1b
	; platform change
	changeblock  4, 10, $4d
	; left-side stairs open
	changeblock  0, 10, $64
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock  2, 10, $45
	changeblock  2, 12, $60
	changeblock 10,  8, $41
	changeblock  6, 10, $47
	changeblock  6, 12, $61
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos2
	; top-right walkway
	changeblock  4, 14, $42
	sjumpfwd .ContPos2
.TopRightPressedPos2
	changeblock  4, 14, $1b
.ContPos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos2
	; middle platform w right walkway
	changeblock 10, 10, $44
	sjumpfwd .SwitchDone
.BottomLeftPressedPos2
	; middle platform w bottom walkway
	changeblock 10, 10, $4b
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	; remove walkways
	changeblock  2, 10, $1b
	changeblock  2, 12, $1b
	changeblock  6, 10, $1b
	changeblock  6, 12, $1b
	changeblock 10,  8, $5a
	; platform change
	changeblock  4, 10, $4c
	; left-side stairs cutoff
	changeblock  0, 10, $5b
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock  8, 10, $46
	changeblock  8, 12, $60
	changeblock  4,  8, $41
	changeblock  4, 12, $62
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos1
	; top-right walkway
	changeblock  4, 14, $41
	sjumpfwd .ContPos1
.TopRightPressedPos1
	changeblock  4, 14, $43
.ContPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos1
	; middle platform w right walkway
	changeblock 10, 10, $50
	sjumpfwd .SwitchDone
.BottomLeftPressedPos1
	; middle platform w bottom walkway
	changeblock 10, 10, $4a
.SwitchDone
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	closetext
	end
	
VirbankComplexB2FSwitchTopRightScript:
	playsound SFX_TALLY
	opentext
	writetext VirbankComplexSwitchText
	promptbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	; remove walkways
	changeblock  4, 18, $5d
	changeblock  8, 16, $1b
	changeblock  8, 18, $1b
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .TopLeftPressedPos2
	; top-left walkway
	changeblock  4, 14, $43
	sjumpfwd .ContPos2
.TopLeftPressedPos2
	changeblock  4, 14, $1b
.ContPos2
	; platform change
	changeblock  4, 16, $4d
	; bottom side cutoff
	changeblock  4, 20, $50
	; left side stairs open
	changeblock  0, 16, $50
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock  2, 16, $45
	changeblock  2, 18, $60
	changeblock  6, 16, $47
	changeblock  6, 18, $61
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .BottomRightPressedPos2
	; middle platform w right walkway
	changeblock 10, 16, $44
	sjumpfwd .CheckBottomLeftPos2
.BottomRightPressedPos2
	; middle platform w bottom walkway
	changeblock 10, 16, $4b
.CheckBottomLeftPos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos2
	; middle platform upper walkway
	changeblock 10, 14, $42
	sjumpfwd .SwitchDone
.BottomLeftPressedPos2
	changeblock 10, 14, $41
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	; remove walkways
	changeblock  2, 16, $1b
	changeblock  2, 18, $1b
	changeblock  6, 16, $1b
	changeblock  6, 18, $1b
	; platform change
	changeblock  4, 16, $4c
	; bottom side opened
	changeblock  4, 20, $07
	; left-side stairs cutoff
	changeblock  0, 16, $4a
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos1
	; middle platform upper walkway
	changeblock 10, 14, $1b
	sjumpfwd .DonePos1
.BottomLeftPressedPos1
	changeblock 10, 14, $43
.DonePos1
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock  8, 16, $46
	changeblock  8, 18, $60
	changeblock  4, 18, $62
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .TopLeftPressedPos1
	; top-left walkway
	changeblock  4, 14, $41
	sjumpfwd .ContPos1Appear
.TopLeftPressedPos1
	changeblock  4, 14, $42
.ContPos1Appear
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .BottomRightPressedPos1
	; middle platform w right walkway
	changeblock 10, 16, $50
	sjumpfwd .SwitchDone
.BottomRightPressedPos1
	; middle platform w bottom walkway
	changeblock 10, 16, $4a
.SwitchDone
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	closetext
	end
	
VirbankComplexB2FSwitchBottomLeftScript:
	playsound SFX_TALLY
	opentext
	writetext VirbankComplexSwitchText
	promptbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	; remove walkways
	changeblock 16,  8, $5a
	changeblock 16, 12, $5d
	changeblock 12, 10, $1b
	changeblock 12, 12, $1b
	; platform change
	changeblock 16, 10, $4d
	; right-side stairs open
	changeblock 20, 10, $48
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock 18, 10, $63
	changeblock 18, 12, $61
	changeblock 14, 10, $46
	changeblock 14, 12, $60
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .BottomRightPressedPos2
	; bottom-right walkway
	changeblock 16, 14, $42
	sjumpfwd .ContPos2
.BottomRightPressedPos2
	changeblock 16, 14, $1b
.ContPos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .TopLeftPressedPos2
	; middle platform w left walkway
	changeblock 10, 10, $4a
	sjumpfwd .CheckTopRightPos2
.TopLeftPressedPos2
	; middle platform w top walkway
	changeblock 10, 10, $4b
.CheckTopRightPos2
	changeblock 10, 12, $62
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos2
	; middle platform upper walkway
	changeblock 10, 14, $43
	sjumpfwd .SwitchDone
.TopRightPressedPos2
	changeblock 10, 14, $41
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	; remove walkways
	changeblock 14, 10, $1b
	changeblock 14, 12, $1b
	changeblock 18, 10, $1b
	changeblock 18, 12, $1b
	changeblock 10, 12, $5d
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos1
	; middle platform upper walkway
	changeblock 10, 14, $1b
	sjumpfwd .ContPos1
.TopRightPressedPos1
	changeblock 10, 14, $42
.ContPos1
	; platform change
	changeblock 16, 10, $4c
	; right-side stairs cutoff
	changeblock 20, 10, $5c
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock 12, 10, $47
	changeblock 12, 12, $61
	changeblock 16,  8, $41
	changeblock 16, 12, $62
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .BottomRightPressedPos1
	; bottom-right walkway
	changeblock 16, 14, $41
	sjumpfwd .ContPos1Appear
.BottomRightPressedPos1
	changeblock 16, 14, $43
.ContPos1Appear
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	iftruefwd .TopLeftPressedPos1
	; middle platform w left walkway
	changeblock 10, 10, $50
	sjumpfwd .SwitchDone
.TopLeftPressedPos1
	; middle platform w bottom walkway
	changeblock 10, 10, $44
.SwitchDone
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	closetext
	end
	
VirbankComplexB2FSwitchBottomRightScript:
	playsound SFX_TALLY
	opentext
	writetext VirbankComplexSwitchText
	promptbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	iftruefwd .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	; remove walkways
	changeblock 16, 18, $5d
	changeblock 12, 16, $1b
	changeblock 12, 18, $1b
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos2
	; bottom-left walkway
	changeblock 16, 14, $43
	sjumpfwd .ContPos2
.BottomLeftPressedPos2
	changeblock 16, 14, $1b
.ContPos2
	; platform change
	changeblock 16, 16, $4d
	; bottom side cutoff
	changeblock 16, 20, $50
	; middle platforms open
	changeblock 10, 20, $07
	; right side stairs open
	changeblock 20, 16, $50
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock 18, 16, $63
	changeblock 18, 18, $61
	changeblock 10, 18, $62
	changeblock 14, 16, $46
	changeblock 14, 18, $60
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos2
	; middle platform w left walkway
	changeblock 10, 16, $4a
	sjumpfwd .SwitchDone
.TopRightPressedPos2
	; middle platform w yop walkway
	changeblock 10, 16, $4b
	sjumpfwd .SwitchDone
.SetPosition1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	; remove walkways
	changeblock 14, 16, $1b
	changeblock 14, 18, $1b
	changeblock 18, 16, $1b
	changeblock 18, 18, $1b
	changeblock 10, 18, $5d
	; platform change
	changeblock 16, 16, $4c
	; bottom side opened
	changeblock 16, 20, $07
	; middle platforms cutoff
	changeblock 10, 20, $50
	; right side stairs cutoff
	changeblock 20, 16, $49
	waitsfx
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	; appear walkways
	changeblock 12, 16, $47
	changeblock 12, 18, $61
	changeblock 16, 18, $62
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	iftruefwd .BottomLeftPressedPos1
	; bottom-left walkway
	changeblock 16, 14, $41
	sjumpfwd .ContPos1
.BottomLeftPressedPos1
	changeblock 16, 14, $42
.ContPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	iftruefwd .TopRightPressedPos1
	; middle platform w left walkway
	changeblock 10, 16, $50
	sjumpfwd .SwitchDone
.TopRightPressedPos1
	; middle platform w top walkway
	changeblock 10, 16, $44
.SwitchDone
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	closetext
	end
	
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
	
VirbankComplexSwitchText:
	text "Click!"
	done
	