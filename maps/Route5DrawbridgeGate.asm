Route5DrawbridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  4, ROUTE_5, 3
	warp_event  9,  5, ROUTE_5, 4

	def_coord_events
	coord_event  5,  4, 0, Route5DrawbridgeGateStopScript
	coord_event  5,  5, 0, Route5DrawbridgeGateStopScript

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R5DrawbridgeGateLoweredText, -1
	
Route5DrawbridgeGateStopScript:
	turnobject PLAYER, UP
	checkevent EVENT_DRIFTVEIL_CITY_BLOCKERS
	iftruefwd .OpenBridge
	showtext .RaisedText
	applymovement PLAYER, Route5DrawbridgeGateMovement
	end
	
.OpenBridge:
	showtext .LoweringText
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	showtext R5DrawbridgeGateLoweredText
	setscene 1
	;setmapscene DRIFTVEIL_DRAWBRIDGE_GATE, 1
	end
	
.RaisedText:
	text "Sorry buddy, the"
	line "Drawbridge is"
	cont "raised right now."
	
	para "I would call and"
	line "ask for the Bridge"
	cont "to be lowered, but"
	
	para "the attendant in"
	line "Driftveil City"
	cont "isn't answering"
	cont "my calls."
	
	para "I wonder if"
	line "something is going"
	cont "on over there…"
	done
	
.LoweringText:
	text "Oh, you want to"
	line "cross? Let me call"
	cont "the operator in"
	cont "Driftveil City."
	
	para "Okay, it will be"
	line "lowered now."
	done
	
Route5DrawbridgeGateMovement:
	step_right
	step_end

R5DrawbridgeGateLoweredText:
	text "The Bridge has"
	line "now been lowered."
	
	para "It will take you"
	line "to Driftveil City."
	done
	