SkyarrowBridge_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	
	def_warp_events
	warp_event  4,  4, CASTELIA_SKYARROW_BRIDGE_GATE, 5
	warp_event  4,  5, CASTELIA_SKYARROW_BRIDGE_GATE, 6
	warp_event 45,  4, PINWHEEL_SKYARROW_BRIDGE_GATE, 5
	warp_event 45,  5, PINWHEEL_SKYARROW_BRIDGE_GATE, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 12,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 1, -1, PAL_NPC_PURPLE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, SkyarrowBridgeGentlemanText, -1
	object_event 28,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SkyarrowBridgeLassText, -1
	object_event 39,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 1, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, SkyarrowBridgeYoungsterText, -1
	object_event 12,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 22,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 32,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 18,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 28,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 38,  6, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	
SkyarrowBridgeGentlemanText:
	text "I'm glad to see"
	line "the bridge is"
	cont "back open."
	
	para "Now I can make my"
	line "important meetings"
	cont "in the city."
	done
	
SkyarrowBridgeLassText:
	text "I love to look"
	line "over the railing"
	cont "of the bridge!"
	
	para "The sea is so"
	line "vast! It's"
	cont "dizzying!"
	done
	
SkyarrowBridgeYoungsterText:
	text "I heard something"
	line "is going on in"
	cont "the forest!"
	done
