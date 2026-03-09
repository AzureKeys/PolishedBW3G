PWTInside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 17, PWT_OUTSIDE, 2
	warp_event  8, 17, PWT_OUTSIDE, 3
	;warp_event  7,  0, PWT_HALLWAY, 1

	def_coord_events
	coord_event  7,  1, 0, PWTInside_EnterFromBackScript

	def_bg_events
	
	def_object_events
	object_event  7,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PWTInside_MainReceptionistScript, -1
	object_event  2,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, PWTInside_Receptionist1Script, -1
	object_event 13,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PWTInside_Receptionist2Script, -1
	object_event  3, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTInsideYoungsterText, -1
	object_event 11, 14, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTInsideCooltrainerFText, -1
	object_event  1,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTInsideOfficerText, -1
	object_event 14,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTInsideOfficerText, -1
	itemball_event 14, 14, LEFTOVERS, 1, EVENT_PWT_INSIDE_LEFTOVERS
	
	object_const_def
	const PWTINSIDE_RECEPTIONIST
	
PWTInside_EnterFromBackScript:
	applymovement PWTINSIDE_RECEPTIONIST, PWTInside_ReceptionistMovement
	applymovement PLAYER, .PlayerMovement
	applymovement PWTINSIDE_RECEPTIONIST, PWTInside_ReceptionistResetMovement
	end
.PlayerMovement:
	step_down
	step_down
	step_down
	step_end
	
PWTInside_MainReceptionistScript:
	checkevent EVENT_FINISHED_PWT
	iftrue_jumptext .PWTFinishedText
	opentext
	checkevent EVENT_FINISHED_PWT_QUALIFIER
	iftruefwd .AskGoBackRoom
	writethistext
	text "Hi, welcome to the"
	line "#mon World"
	cont "Tournament!"
	
	para "We're accepting"
	line "applications for"
	cont "qualifiers now."
	
	para "Would you like"
	line "to enter?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writetext .ComeThisWayText
	waitbutton
	closetext
	sjumpfwd .EnterBack
	
.AskGoBackRoom
	writethistext
	text "The #mon World"
	line "Tournament is"
	cont "currently under-"
	cont "way."
	
	para "Would you like to"
	line "return to the"
	cont "event?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writetext .ComeThisWayText
	waitbutton
	closetext
	; fallthrough
.EnterBack
	applymovement PWTINSIDE_RECEPTIONIST, PWTInside_ReceptionistMovement
	applymovement PLAYER, .Movement
	;setmapscene PWT_HALLWAY, 1
	warpcheck
	end
	
.Movement:
	step_up
	step_up
	step_up
	step_up
	step_end
	
.DeclinedText:
	text "Very well, please"
	line "come again."
	done
	
.ComeThisWayText:
	text "Okay, this way"
	line "please."
	done
	
.PWTFinishedText:
	text "I'm sorry, the"
	line "Tournament has"
	cont "concluded."
	
	para "We hope you come"
	line "again!"
	done
	
PWTInside_ReceptionistMovement:
	step_up
	step_right
	turn_head_left
	step_end
	
PWTInside_ReceptionistResetMovement:
	step_left
	step_down
	step_end
	
PWTInside_Receptionist1Script:
PWTInside_Receptionist2Script:
	jumpthistext
	text "Hi, welcome to the"
	line "#mon World"
	cont "Tournament!"
	
	para "If you want to"
	line "apply, see the"
	cont "receptionist."
	done
	
PWTInsideYoungsterText:
	text "My favorite to"
	line "watch is Iris!"
	
	para "She used to be"
	line "the Champion!"
	
	para "How can you beat"
	line "that?"
	done
	
PWTInsideCooltrainerFText:
	text "I tried to enter,"
	line "but I got beat in"
	cont "the qualifiers."
	
	para "It's tough!"
	done
	
PWTInsideOfficerText:
	text "This way leads to"
	line "the stands for"
	
	para "watching the"
	line "matches."
	
	para "If you want to"
	line "enter, you should"
	
	para "go talk to the"
	line "receptionist."
	done
