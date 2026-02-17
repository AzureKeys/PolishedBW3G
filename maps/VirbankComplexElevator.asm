VirbankComplexElevator_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VirbankComplexElevator_ResetPipes

	def_warp_events
	warp_event  1,  3, VIRBANK_COMPLEX_OUTSIDE, -1
	warp_event  2,  3, VIRBANK_COMPLEX_OUTSIDE, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, VirbankComplexElevatorButton
	
	def_object_events
	
VirbankComplexElevator_ResetPipes:
	; Reset switches in B2F to prevent getting stuck
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	endcallback
	
VirbankComplexElevatorButton:
	checkkeyitem LIFT_KEY
	iffalse_jumptext .NoKeyText
	opentext
	elevator .Floors
	closetext
	iffalse DoNothingScript
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	end
	
.Floors:
	db 3 ; floors
	elevfloor FLOOR_1F,  5, VIRBANK_COMPLEX_OUTSIDE
	elevfloor FLOOR_B1F,  1, VIRBANK_COMPLEX_B1F
	elevfloor FLOOR_B2F,  1, VIRBANK_COMPLEX_B2F
	db -1 ; end
	
.NoKeyText:
	text "A Lift Key is"
	line "required…"
	done
