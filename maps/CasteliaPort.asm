CasteliaPort_MapScriptHeader:
	def_scene_scripts
	scene_script CasteliaPortTrigger0
	scene_script CasteliaPortTrigger1

	def_callbacks

	def_warp_events
	warp_event  9,  4, CASTELIA_CITY_SOUTH, 11
	warp_event  9,  5, CASTELIA_CITY_SOUTH, 12
	;warp_event  0,  2, FERRY_LEFT, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaPortFerryManScript, -1
	
	object_const_def
	const CASTELIAPORT_FERRY_MAN
	
CasteliaPortTrigger1:
	sdefer CasteliaPort_ArriveFromVirbankScript
CasteliaPortTrigger0:
	end
	
CasteliaPort_ArriveFromVirbankScript:
	turnobject PLAYER, RIGHT
	appear PLAYER
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPort_FerryManMovement
	applymovement PLAYER, CasteliaPort_PlayerArriveMovement
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPort_FerryManResetMovement
	setscene 0
	jumpthistext
	text "We've made land"
	line "in Castelia."

	para "Come ride with us"
	line "again!"
	done
	
CasteliaPortFerryManScript:
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
	applymovement PLAYER, CasteliaPort_PlayerBoardMovement1
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPort_FerryManMovement
	applymovement PLAYER, CasteliaPort_PlayerBoardMovement1
	;setmapscene VIRBANK_PORT, 1
	disappear PLAYER
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end
	
.AskText:
	text "We'll soon set"
	line "sail for Virbank."

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
	
CasteliaPort_FerryManMovement:
	step_right
	step_up
	turn_head_down
	step_end

CasteliaPort_FerryManResetMovement:
	step_down
	step_left
	turn_head_right
	step_end

CasteliaPort_PlayerArriveMovement:
	step_right
	step_right
	step_right
	turn_head_left
	step_end

CasteliaPort_PlayerBoardMovement1:
	step_right
	turn_head_left
	step_end

CasteliaPort_PlayerBoardMovement2:
	step_left
	step_left
	step_left
	step_end
