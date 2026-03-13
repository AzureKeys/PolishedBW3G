DriftveilDrawbridgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, DRIFTVEIL_CITY, 3
	warp_event  0,  5, DRIFTVEIL_CITY, 4
	warp_event  9,  4, DRIFTVEIL_DRAWBRIDGE, 1
	warp_event  9,  5, DRIFTVEIL_DRAWBRIDGE, 2

	def_coord_events
	coord_event  5,  4, 0, DriftveilDrawbridgeGateBridgeScript
	coord_event  5,  5, 0, DriftveilDrawbridgeGateBridgeScript

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilDrawbridgeGateOfficerText, -1
	
DriftveilDrawbridgeGateBridgeScript:
	turnobject PLAYER, UP
	showtext .LowerBridgeText
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	showtext DriftveilDrawbridgeGateOfficerText
	setscene 1
	setmapscene ROUTE_5_DRAWBRIDGE_GATE, 1
	end
	
.LowerBridgeText:
	text "Whew! Finally got"
	line "back to my post!"
	
	para "What? You want to"
	line "cross the bridge?"
	
	para "Here, let me lower"
	line "it for you!"
	done

DriftveilDrawbridgeGateOfficerText:
	text "The Bridge takes"
	line "you straight to"
	cont "Nimbasa City."
	done
	