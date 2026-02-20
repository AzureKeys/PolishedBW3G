PinwheelSkyarrowBridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, PINWHEEL_FOREST, 1
	warp_event  6,  7, PINWHEEL_FOREST, 1
	warp_event  1,  4, PINWHEEL_SKYARROW_BRIDGE_GATE, 4
	warp_event  6, 15, PINWHEEL_SKYARROW_BRIDGE_GATE, 3
	warp_event  0, 14, SKYARROW_BRIDGE, 3
	warp_event  0, 15, SKYARROW_BRIDGE, 4

	def_coord_events
	coord_event  4,  3, 0, PinwheelSkyarrowBridgeGateStopScript
	coord_event  4,  4, 0, PinwheelSkyarrowBridgeGateStopScript
	coord_event  4,  5, 0, PinwheelSkyarrowBridgeGateStopScript

	def_bg_events
	
	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, PinwheelSkyarrowBridgeGateOfficerScript, -1
	
	object_const_def
	const PINWHEELSKYARROWBRIDGEGATE_OFFICER
	
PinwheelSkyarrowBridgeGateStopScript:
	showemote EMOTE_SHOCK, PINWHEELSKYARROWBRIDGEGATE_OFFICER, 15
	showtext .IntroText
	turnobject PLAYER, UP
	showtext PinwheelSkyarrowBridgeGateRobberyText
	setscene 1
	end
.IntroText:
	text "Oh, wait just a"
	line "moment!"
	done
	
PinwheelSkyarrowBridgeGateOfficerScript:
	checkevent EVENT_PINWHEEL_FOREST_BLOCKERS
	iffalse_jumptextfaceplayer PinwheelSkyarrowBridgeGateRobberyText
	jumpthistextfaceplayer
	text "Be careful not to"
	line "get lost in the"
	cont "forest."
	
	para "Stick to the road"
	line "to get to town."
	done
	
PinwheelSkyarrowBridgeGateRobberyText:
	text "There's just been"
	line "a robbery in"
	cont "Nacrene City."
	
	para "There are officers"
	line "in the forest"
	cont "investigating."
	
	para "Please be careful!"
	done
