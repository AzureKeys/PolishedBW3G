MistraltonMoveReminder_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, MISTRALTON_CITY, 4
	warp_event  4,  7, MISTRALTON_CITY, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MistraltonMoveReminderScript, -1
	
MistraltonMoveReminderScript:
	faceplayer
	opentext
	writethistext
	text "Hi, they call me"
	line "the Move Reminder."
	
	para "I can teach your"
	line "#mon one of the"
	
	para "moves it has"
	line "forgotten, in"
	
	para "exchange for a"
	line "Heart Scale."
	done
	waitbutton
	checkitem HEART_SCALE
	iffalse_jumpopenedtext .NoScaleText
	writethistext
	text "Would you like to"
	line "have one of your"
	
	para "#mon relearn a"
	line "move?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .RefusedText
	setval NO_MOVE ; NO_MOVE = Move Relearner
	writethistext
	text "Okay, which #-"
	line "mon needs"
	cont "tutoring?"
	done
	waitbutton
	special Special_MoveTutor
	ifequalfwd $0, .TaughtMove
	jumpthisopenedtext
.RefusedText:
	text "Oh, okay. Come"
	line "back if you'd like"
	
	para "a move to be"
	line "remembered."
	done
	
.TaughtMove
	takeitem HEART_SCALE
	jumpthisopenedtext
	text "<PLAYER> handed"
	line "over a Heart Scale"
	cont "in return."
	done
	
.NoScaleText:
	text "Sorry, you don't"
	line "have any Heart"
	cont "Scales."
	
	para "Come back if you"
	line "find some."
	done
