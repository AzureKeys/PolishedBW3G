NimbasaSubway_MapScriptHeader:
	def_scene_scripts
	scene_script NimbasaSubwayTrigger0
	scene_script NimbasaSubwayTrigger1
	scene_script NimbasaSubwayTrigger2
	scene_script NimbasaSubwayTrigger3

	def_callbacks

	def_warp_events
	warp_event 10, 19, NIMBASA_CITY, 11
	warp_event  2,  9, ASPERTIA_SUBWAY, 2

	def_coord_events
	coord_event  3,  9, 0, NimbasaSubway_Officer1CoordScript
	coord_event 10,  2, 0, NimbasaSubway_Officer2CoordScript
	coord_event 17,  9, 0, NimbasaSubway_Officer3CoordScript

	def_bg_events
	
	def_object_events
	object_event  3,  8, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaSubway_Officer1TextScript, -1
	object_event 11,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaSubway_Officer2TextScript, -1
	object_event 17,  8, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaSubway_Officer3TextScript, -1
	object_event 12, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaSubwayGentlemanText, -1
	
	object_const_def
	const NIMBASASUBWAY_OFFICER_1
	const NIMBASASUBWAY_OFFICER_2
	const NIMBASASUBWAY_OFFICER_3
	
NimbasaSubwayTrigger1:
	sdefer NimbasaSubway_ArriveFromAspertiaScript
	end
NimbasaSubwayTrigger2:
	sdefer NimbasaSubway_ArriveFromAnvilleScript
	end
NimbasaSubwayTrigger3:
	sdefer NimbasaSubway_ArriveFromBattleSubwayScript
NimbasaSubwayTrigger0:
	end
	
NimbasaSubway_ArriveFromAspertiaScript:
	applymovement PLAYER, NimbasaSubway_PlayerArriveFromLeftMovement
	turnobject NIMBASASUBWAY_OFFICER_1, RIGHT
	setscene 0
	jumptext NimbasaSubway_ArrivedText
	
NimbasaSubway_ArriveFromAnvilleScript:
	applymovement PLAYER, NimbasaSubway_PlayerArriveFromTopMovement
	setscene 0
	jumptext NimbasaSubway_ArrivedText
	
NimbasaSubway_ArriveFromBattleSubwayScript:
	applymovement PLAYER, NimbasaSubway_PlayerArriveFromRightMovement
	turnobject NIMBASASUBWAY_OFFICER_3, LEFT
	setscene 0
	jumptext NimbasaSubway_ArrivedText
	
NimbasaSubway_Officer1CoordScript:
	turnobject NIMBASASUBWAY_OFFICER_1, DOWN
	turnobject PLAYER, UP
	sjumpfwd NimbasaSubwayOfficer1Script
NimbasaSubway_Officer1TextScript:
	faceplayer
	; fallthrough
NimbasaSubwayOfficer1Script:
	opentext
	writethistext
	text "This is the line"
	line "to Aspertia City."
	
	para "We'll soon be"
	line "departing."

	para "Are you coming"
	line "aboard?"
	done
	yesorno
	iffalsefwd .Refused
	checkkeyitem RAIL_PASS
	iffalsefwd .NoPass
	writethistext
	text "May I see your"
	line "Rail Pass, please?"

	para "OK. Right this"
	line "way."
	done
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd LEFT, .FacingLeft
	ifequalfwd UP, .FacingUp
	applymovement PLAYER, .BoardingMovementDown
	sjumpfwd .done_moving
.FacingLeft
	applymovement PLAYER, .BoardingMovementLeft
	sjumpfwd .done_moving
.FacingUp
	applymovement PLAYER, .BoardingMovementUp
.done_moving
	setval TRUE
	special Special_MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	turnobject PLAYER, DOWN
	wait 20
	end
	
.Refused
	writetext NimbasaSubway_RefusedText
	waitbutton
	closetext
	sjumpfwd .NoBoard
	
.NoPass
	writethistext
	text "Sorry. You don't"
	line "have a Rail Pass."
	done
	waitbutton
	closetext
	; fallthrough
.NoBoard
	readvar VAR_FACING
	ifnotequal UP, .done
	applyonemovement PLAYER, step_right
.done
	end
	
.BoardingMovementDown:
	step_right
	step_down
	step_down
	step_left
	step_left
	step_end
	
.BoardingMovementLeft:
	step_down
	step_left
	step_left
	step_end
	
.BoardingMovementUp:
	step_left
	step_end
	
NimbasaSubway_Officer2CoordScript:
	turnobject NIMBASASUBWAY_OFFICER_2, LEFT
	turnobject PLAYER, RIGHT
	sjumpfwd NimbasaSubwayOfficer2Script
NimbasaSubway_Officer2TextScript:
	faceplayer
	; fallthrough
NimbasaSubwayOfficer2Script:
	opentext
	writethistext
	text "This is the line"
	line "to Anville Town."
	
	para "We'll soon be"
	line "departing."

	para "Are you coming"
	line "aboard?"
	done
	yesorno
	iffalsefwd .Refused
	checkkeyitem IRON_PASS
	iffalsefwd .NoPass
	writethistext
	text "May I see your"
	line "Iron Pass, please?"

	para "OK. Right this"
	line "way."
	done
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd RIGHT, .FacingRight
	ifequalfwd UP, .FacingUp
	applymovement PLAYER, .BoardingMovementLeft
	sjumpfwd .done_moving
.FacingRight
	applymovement PLAYER, .BoardingMovementRight
	sjumpfwd .done_moving
.FacingUp
	applymovement PLAYER, .BoardingMovementUp
.done_moving
	warpcheck
	end
	
.Refused
	writetext NimbasaSubway_RefusedText
	waitbutton
	closetext
	sjumpfwd .NoBoard
	
.NoPass
	writethistext
	text "Sorry. You'll need"
	line "an Iron Pass to"
	cont "take this line."
	done
	waitbutton
	closetext
	; fallthrough
.NoBoard
	readvar VAR_FACING
	ifnotequal RIGHT, .done
	applyonemovement PLAYER, step_down
.done
	end
	
.BoardingMovementLeft:
	step_down
	step_left
	step_left
	step_up
	step_up
	step_up
	step_end
	
.BoardingMovementRight:
	step_up
	step_up
	step_end
	
.BoardingMovementUp:
	step_left
	step_up
	step_up
	step_up
	step_end
	
NimbasaSubway_Officer3CoordScript:
	turnobject NIMBASASUBWAY_OFFICER_3, DOWN
	turnobject PLAYER, UP
	sjumpfwd NimbasaSubwayOfficer3Script
NimbasaSubway_Officer3TextScript:
	faceplayer
	; fallthrough
NimbasaSubwayOfficer3Script:
	opentext
	writethistext
	text "This is the line"
	line "for the Battle"
	cont "Subway!"

	para "Will you be coming"
	line "aboard?"
	done
	yesorno
	iffalsefwd .Refused
	checkkeyitem BATTLE_PASS
	iffalsefwd .NoPass
	writethistext
	text "May I see your"
	line "Battle Pass,"
	cont "please?"

	para "OK. Right this"
	line "way."
	done
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd RIGHT, .FacingRight
	ifequalfwd UP, .FacingUp
	applymovement PLAYER, .BoardingMovementDown
	sjumpfwd .done_moving
.FacingRight
	applymovement PLAYER, .BoardingMovementRight
	sjumpfwd .done_moving
.FacingUp
	applymovement PLAYER, .BoardingMovementUp
.done_moving
	warpcheck
	end
	
.Refused
	writetext NimbasaSubway_RefusedText
	waitbutton
	closetext
	sjumpfwd .NoBoard
	
.NoPass
	writethistext
	text "Sorry. You'll need"
	line "a Battle Pass to"
	cont "board."
	done
	waitbutton
	closetext
	; fallthrough
.NoBoard
	readvar VAR_FACING
	ifnotequal UP, .done
	applyonemovement PLAYER, step_left
.done
	end
	
.BoardingMovementDown:
	step_left
	step_down
	step_down
	step_right
	step_right
	step_end
	
.BoardingMovementRight:
	step_down
	step_right
	step_right
	step_end
	
.BoardingMovementUp:
	step_right
	step_end

NimbasaSubway_PlayerArriveFromLeftMovement:
	step_right
	step_right
	step_up
	turn_head_left
	step_end

NimbasaSubway_PlayerArriveFromRightMovement:
	step_left
	step_left
	step_up
	turn_head_right
	step_end

NimbasaSubway_PlayerArriveFromTopMovement:
	step_down
	step_down
	step_down
	step_right
	turn_head_up
	step_end

NimbasaSubway_ArrivedText:
	text "We have arrived in"
	line "Nimbasa City."

	para "We hope to see you"
	line "again."
	done
	
NimbasaSubway_RefusedText:
	text "We hope to see you"
	line "again!"
	done
	
NimbasaSubwayGentlemanText:
	text "This station conn-"
	line "ects all of the"

	para "subway lines in"
	line "Unova."
	
	para "Recently, a new"
	line "line to Aspertia"
	cont "City was opened."
	done
