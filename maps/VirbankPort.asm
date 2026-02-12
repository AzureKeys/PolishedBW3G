VirbankPort_MapScriptHeader:
	def_scene_scripts
	scene_script VirbankPortTrigger0
	scene_script VirbankPortTrigger1

	def_callbacks

	def_warp_events
	warp_event  4,  7, VIRBANK_CITY, 7
	warp_event  5,  7, VIRBANK_CITY, 7
	warp_event  9,  2, FERRY_RIGHT, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  8,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankPortFerryManScript, -1
	
	object_const_def
	const VIRBANKPORT_FERRY_MAN
	
VirbankPortTrigger1:
	sdefer VirbankPort_ArriveFromCasteliaScript
VirbankPortTrigger0:
	end
	
VirbankPort_ArriveFromCasteliaScript:
	turnobject PLAYER, LEFT
	appear PLAYER
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPort_FerryManMovement
	applymovement PLAYER, VirbankPort_PlayerArriveMovement
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPort_FerryManResetMovement
	setscene 0
	jumpthistext
	text "We've made land"
	line "in Virbank."

	para "Come ride with us"
	line "again!"
	done
	
VirbankPortFerryManScript:
	faceplayer
	opentext
	writetext .AskText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkkeyitem FERRY_TICKET
	iffalse_jumpopenedtext .NoTicketText
	writetext .HavePassText
	waitbutton
	closetext
	applymovement PLAYER, VirbankPort_PlayerBoardMovement1
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPort_FerryManMovement
	applymovement PLAYER, VirbankPort_PlayerBoardMovement2
	setmapscene CASTELIA_PORT, 1
	disappear PLAYER
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end
	
.AskText:
	text "We'll soon set"
	line "sail for Castelia."

	para "Are you coming on"
	line "board?"
	done
	
.RefusedText:
	text "Ah, well come"
	line "again."
	done
	
.NoTicketText:
	text "Sorry, but you"
	line "don't have a"
	cont "Ferry Ticket."
	done
	
.HavePassText:
	text "Just let me check"
	line "your Ferry Ticket."

	para "OK. Come on board!"
	done
	
VirbankPort_FerryManMovement:
	step_left
	step_up
	turn_head_down
	step_end

VirbankPort_FerryManResetMovement:
	step_down
	step_right
	turn_head_left
	step_end

VirbankPort_PlayerArriveMovement:
	step_left
	step_left
	step_left
	turn_head_right
	step_end

VirbankPort_PlayerBoardMovement1:
	step_left
	turn_head_right
	step_end

VirbankPort_PlayerBoardMovement2:
	step_right
	step_right
	step_right
	step_end
