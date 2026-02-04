NimbasaSubway_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, NIMBASA_CITY, 11
	warp_event  9, 17, NIMBASA_CITY, 12
	warp_event  6,  5, ASPERTIA_SUBWAY, 2
	warp_event 11,  5, ASPERTIA_SUBWAY, 1

	def_coord_events
	coord_event 11,  6, 0, NimbasaSubway_ArriveScript

	def_bg_events
	
	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaSubwayOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaSubwayGentlemanText, -1
	
	object_const_def
	const NIMBASASUBWAY_OFFICER
	
NimbasaSubway_ArriveScript:
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubway_OfficerMovement
	applymovement PLAYER, NimbasaSubway_PlayerArriveMovement
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubway_OfficerResetMovement
	jumpthistext
	text "We have arrived in"
	line "Nimbasa City."

	para "We hope to see you"
	line "again."
	done
	
NimbasaSubwayOfficerScript:
	faceplayer
	opentext
	writetext .AskText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkkeyitem RAIL_PASS
	iffalse_jumpopenedtext .NoPassText
	writetext .HavePassText
	waitbutton
	closetext
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubway_OfficerMovement
	applymovement PLAYER, NimbasaSubway_PlayerBoardingMovement
	setval TRUE
	special Special_MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	turnobject PLAYER, DOWN
	wait 20
	end
	
.AskText:
	text "We'll soon depart"
	line "for Aspertia."

	para "Are you coming"
	line "aboard?"
	done
	
.RefusedText:
	text "We hope to see you"
	line "again!"
	done
	
.NoPassText:
	text "Sorry. You don't"
	line "have a Rail Pass."
	done
	
.HavePassText:
	text "May I see your"
	line "Rail Pass, please?"

	para "OK. Right this"
	line "way."
	done
	
NimbasaSubway_OfficerMovement:
	step_up
	step_up
	step_right
	turn_head_left
	step_end

NimbasaSubway_OfficerResetMovement:
	step_left
	step_down
	step_down
	step_end

NimbasaSubway_PlayerArriveMovement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end

NimbasaSubway_PlayerBoardingMovement:
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
NimbasaSubwayGentlemanText:
	text "This used to be a"
	line "Battle Subway."

	para "But the need grew"
	line "for a regular"
	cont "subway to take"

	para "people and #mon"
	line "to far corners of"
	cont "Unova."
	done
