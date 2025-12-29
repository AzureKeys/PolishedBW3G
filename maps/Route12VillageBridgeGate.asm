Route12VillageBridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  4, ROUTE_12, 1
	warp_event  9,  5, ROUTE_12, 2

	def_coord_events
	coord_event  5,  4, 0, R12VillageBridgeGateBridgeOutScript

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R12VillageBridgeGateOfficerText, -1
	
R12VillageBridgeGateBridgeOutScript:
	turnobject PLAYER, UP
	showtext .BridgeOutText
	applymovement PLAYER, R12VillageBridgeGateMovement
	end
.BridgeOutText:
	text "Wait! Sorry, the"
	line "Village Bridge"
	
	para "is closed off"
	line "right now."
	
	para "The path has been"
	line "flooded."
	
	para "It's going to"
	line "take some time"
	
	para "before the path"
	line "is cleared, so"
	cont "come back later."
	done
	
R12VillageBridgeGateMovement:
	step_right
	step_end
	
R12VillageBridgeGateOfficerText:
	text "The bridge has"
	line "finally been"
	cont "fixed!"
	
	para "Go on ahead."
	done
