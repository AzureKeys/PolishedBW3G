MistraltonAirport_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 11, MISTRALTON_CITY, 5
	warp_event  7, 11, MISTRALTON_CITY, 5
	warp_event  8, 11, MISTRALTON_CITY, 5
	warp_event  7,  4, PLANE_RIGHT, 1

	def_coord_events
	coord_event  7,  5, 0, MistraltonAirport_ArriveScript

	def_bg_events
	
	def_object_events
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonAirportReceptionistScript, -1
	object_event 12,  2, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, MistraltonAirportLadyScript, -1
	object_event  3,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonAirportPokefanFText, -1
	object_event 10,  9, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonAirportOfficerText, -1
	
	object_const_def
	const MISTRALTONAIRPORT_RECEPTIONIST
	
MistraltonAirport_ArriveScript:
	applymovement PLAYER, .AppearPlayer
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirport_ReceptionistArriveMovement
	applymovement PLAYER, MistraltonAirport_PlayerArriveMovement
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirport_ReceptionistResetMovement
	jumpthistext
	text "Thank you for"
	line "flying Mistralton"
	cont "Airways."
	
	para "Enjoy your trip!"
	done
	
.AppearPlayer:
	show_object
	step_end
	
MistraltonAirportReceptionistScript:
	faceplayer
	opentext
	writethistext
	text "Welcome to the"
	line "Mistralton City"
	cont "airport."
	
	para "We offer flights"
	line "to Lentimas Town."
	
	para "Are you coming"
	line "on board?"
	done
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkkeyitem BOARDINGPASS
	iffalse_jumpopenedtext .NoPassText
	writethistext
	text "Okay, let me check"
	line "your BoardingPass…"
	
	para "Okay, right this"
	line "way!"
	done
	waitbutton
	closetext
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirport_ReceptionistBoardingMovement
	applymovement PLAYER, MistraltonAirport_PlayerBoardingMovement
	applymovement PLAYER, .DisappearPlayer
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end
	
.DisappearPlayer:
	hide_object
	step_end
	
.RefusedText:
	text "Please come back"
	line "if you'd like to"
	
	para "take a flight to"
	line "Lentimas Town."
	done
	
.NoPassText:
	text "Sorry, you'll need"
	line "a BoardingPass if"
	
	para "you want to take"
	line "the plane."
	done
	
MistraltonAirportLadyScript:
	faceplayer
	opentext
	writethistext
	text "Hi, I'm looking"
	line "for Heart Scales!"
	
	para "If you have a"
	line "Heart Scale, would"
	
	para "you mind giving it"
	line "to me in exchange"
	cont "for a Shard?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkitem HEART_SCALE
	iffalse_jumpopenedtext .NoScaleText
	writethistext
	text "Okay, you can have"
	line "this in return!"
	done
	promptbutton
	random 4
	ifequalfwd 0, .red
	ifequalfwd 0, .blue
	ifequalfwd 0, .yellow
; green
	verbosegiveitem GREEN_SHARD
	iffalsefwd .done
	sjumpfwd .TakeScale
.red
	verbosegiveitem RED_SHARD
	iffalsefwd .done
	sjumpfwd .TakeScale
.blue
	verbosegiveitem BLUE_SHARD
	iffalsefwd .done
	sjumpfwd .TakeScale
.yellow
	verbosegiveitem YELLOW_SHARD
	iffalsefwd .done
	; fallthrough
.TakeScale
	takeitem HEART_SCALE
	writethistext
	text "<PLAYER> handed"
	line "over one Heart"
	cont "Scale."
	
	para "Thanks! If you"
	line "bring me another"
	
	para "Heart Scale, I'll"
	line "give you another"
	cont "Shard in return!"
	done
	waitbutton
.done
	closetext
	end
	
.RefusedText:
	text "Aww, that's too"
	line "bad…"
	done
	
.NoScaleText:
	text "Oh, it looks like"
	line "you don't have any"
	cont "Heart Scales!"
	done
	
MistraltonAirport_ReceptionistArriveMovement:
	step_down
	step_left
	turn_head_right
	step_end

MistraltonAirport_ReceptionistBoardingMovement:
	step_up
	step_left
	turn_head_right
	step_end

MistraltonAirport_ReceptionistResetMovement:
	step_right
	step_up
	turn_head_down
	step_end

MistraltonAirport_PlayerArriveMovement:
	step_down
	step_down
	step_down
	turn_head_up
	step_end

MistraltonAirport_PlayerBoardingMovement:
	step_up
	step_up
	step_up
	step_end
	
MistraltonAirportPokefanFText:
	text "I'm planning my"
	line "trip to Lentimas"
	cont "Town."
	
	para "It will be nice to"
	line "spend some time"
	
	para "out in the"
	line "mountains."
	done
	
MistraltonAirportOfficerText:
	text "We mostly ship out"
	line "cargo planes, but"
	cont "You can take a"
	
	para "passenger flight"
	line "if you have a"
	cont "BoardingPass."
	done
