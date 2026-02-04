AspertiaSubway_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  5, ASPERTIA_SUBWAY, 4
	warp_event 11,  5, ASPERTIA_SUBWAY, 3
	warp_event  8, 17, ASPERTIA_CITY, 1
	warp_event  9, 17, ASPERTIA_CITY, 1

	def_coord_events
	coord_event 11,  6, 0, AspertiaSubway_ArriveScript

	def_bg_events
	
	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayOfficerScript, -1
	object_event 10, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaSubwayGrampsText, -1
	object_event  6, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaSubwayTeacherText, -1
	
	object_const_def
	const ASPERTIASUBWAY_OFFICER
	
AspertiaSubway_ArriveScript:
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubway_OfficerMovement
	applymovement PLAYER, AspertiaSubway_PlayerArriveMovement
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubway_OfficerResetMovement
	jumpthistext
	text "We have arrived in"
	line "Aspertia City."

	para "We hope to see you"
	line "again."
	done
	
AspertiaSubwayOfficerScript:
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
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubway_OfficerMovement
	applymovement PLAYER, AspertiaSubway_PlayerBoardingMovement
	setval FALSE
	special Special_MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	turnobject PLAYER, DOWN
	wait 20
	end
	
.AskText:
	text "We'll soon depart"
	line "for Nimbasa."

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
	
AspertiaSubway_OfficerMovement:
	step_up
	step_up
	step_right
	turn_head_left
	step_end

AspertiaSubway_OfficerResetMovement:
	step_left
	step_down
	step_down
	step_end

AspertiaSubway_PlayerArriveMovement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end

AspertiaSubway_PlayerBoardingMovement:
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
AspertiaSubwayGrampsText:
	text "The new subway has"
	line "made it so much"

	para "easier for me to"
	line "get back and forth"

	para "between home and"
	line "the big city!"
	done
	
AspertiaSubwayTeacherText:
	text "Hi. Do you have a"
	line "Rail Pass? I have"

	para "one. All the peo-"
	line "ple in Aspertia"

	para "who ride the sub-"
	line "way have Passes."
	done
