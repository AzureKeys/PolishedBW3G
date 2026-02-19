CasteliaSkyarrowBridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CASTELIA_CITY_SOUTH, 10
	warp_event  3,  7, CASTELIA_CITY_SOUTH, 10
	warp_event  9,  2, CASTELIA_SKYARROW_BRIDGE_GATE, 4
	warp_event  2, 15, CASTELIA_SKYARROW_BRIDGE_GATE, 3
	warp_event  7, 14, SKYARROW_BRIDGE, 1
	warp_event  7, 15, SKYARROW_BRIDGE, 2

	def_coord_events
	coord_event  6,  3, 0, CasteliaSkyarrowBridgeGateStopScript
	coord_event  6,  4, 0, CasteliaSkyarrowBridgeGateStopScript

	def_bg_events
	
	def_object_events
	object_event  6,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaSkyarrowBridgeGateOfficerText, -1
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaSkyarrowBridgeGateOfficerText, -1
	
CasteliaSkyarrowBridgeGateStopScript:
	turnobject PLAYER, UP
	showtext .BridgeOutText
	applymovement PLAYER, CasteliaSkyarrowBridgeGateMovement
	end
.BridgeOutText:
	text "Sorry, the Sky-"
	line "arrow Bridge is"
	
	para "closed to pedes-"
	line "trian traffic"
	cont "right now due to"
	cont "construction."
	done
	
CasteliaSkyarrowBridgeGateMovement:
	step_left
	step_end
	
CasteliaSkyarrowBridgeGateOfficerText:
	text "Be careful if"
	line "you're planning to"
	
	para "cross the Sky-"
	line "arrow Bridge!"
	done
