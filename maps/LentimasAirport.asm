LentimasAirport_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, LENTIMAS_TOWN, 5
	warp_event  4,  7, LENTIMAS_TOWN, 5
	;warp_event  5,  0, PLANE_LEFT, 1

	def_coord_events
	coord_event  5,  1, 0, LentimasAirport_ArriveScript

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LentimasAirportReceptionistScript, -1
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasAirportLassText, -1
	pokemon_event  1,  4, KROKOROK, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, LentimasAirportKrokorokText, -1
	
	object_const_def
	const LENTIMASAIRPORT_RECEPTIONIST
	
LentimasAirport_ArriveScript:
	appear PLAYER
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirport_ReceptionistArriveMovement
	applymovement PLAYER, LentimasAirport_PlayerArriveMovement
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirport_ReceptionistResetMovement
	jumpthistext
	text "Thank you for"
	line "flying Mistralton"
	cont "Airways."
	
	para "Enjoy your trip!"
	done
	
LentimasAirportReceptionistScript:
	faceplayer
	opentext
	writetext .AskText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkkeyitem BOARDINGPASS
	iffalse_jumpopenedtext .NoPassText
	writetext .HavePassText
	waitbutton
	closetext
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirport_ReceptionistBoardingMovement
	applymovement PLAYER, LentimasAirport_PlayerBoardingMovement
	disappear PLAYER
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end
	
.AskText:
	text "Welcome to the"
	line "Lentimas Town"
	cont "airport."
	
	para "We offer flights"
	line "to Mistralton"
	cont "City."
	
	para "Are you coming"
	line "on board?"
	done
	
.RefusedText:
	text "Please come back"
	line "if you'd like to"
	
	para "take a flight to"
	line "Mistralton City."
	done
	
.NoPassText:
	text "Sorry, you'll need"
	line "a BoardingPass if"
	
	para "you want to take"
	line "the plane."
	done
	
.HavePassText:
	text "Okay, let me check"
	line "your BoardingPass…"
	
	para "Okay, right this"
	line "way!"
	done
	
LentimasAirport_ReceptionistArriveMovement:
	step_down
	step_left
	turn_head_right
	step_end

LentimasAirport_ReceptionistBoardingMovement:
	step_up
	step_left
	turn_head_right
	step_end

LentimasAirport_ReceptionistResetMovement:
	step_right
	step_up
	turn_head_down
	step_end

LentimasAirport_PlayerArriveMovement:
	step_down
	step_down
	step_down
	turn_head_up
	step_end

LentimasAirport_PlayerBoardingMovement:
	step_up
	step_up
	step_up
	step_end
	
LentimasAirportLassText:
	text "I'm fine even"
	line "right by a volcano"
	
	para "thanks to my lil"
	line "Krokorok! It"
	cont "really rocks!"
	done
	
LentimasAirportKrokorokText:
	text "Krakaah!"
	done
