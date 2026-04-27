Route23Gate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_23_EAST, 2
	warp_event  0,  5, ROUTE_23_EAST, 3
	warp_event  9,  4, ROUTE_23_EAST, 4
	warp_event  9,  5, ROUTE_23_EAST, 5

	def_coord_events
	coord_event  5,  4, 0, Route23GateWaveBadgeCheck
	coord_event  5,  5, 0, Route23GateWaveBadgeCheck

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R23OfficerHaveWaveBadgeText, -1
	
Route23GateWaveBadgeCheck:
	checkevent EVENT_SHOWED_WAVEBADGE
	iftruefwd .done
	turnobject PLAYER, UP
	turnobject ROUTE23WEST_OFFICER, DOWN
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedWaveBadgeText
	checkflag ENGINE_WAVEBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_WAVEBADGE
	writetext R23OfficerHaveWaveBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepRightMovement
	end

R23OfficerNeedWaveBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Wave Badge."
	done
	
R23OfficerHaveWaveBadgeText:
	text "Oh, that is the"
	line "Wave Badge!"
	
	para "You may pass."
	done
	