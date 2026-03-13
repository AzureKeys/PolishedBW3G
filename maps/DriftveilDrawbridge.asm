DriftveilDrawbridge_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	
	def_warp_events
	warp_event  4,  8, DRIFTVEIL_DRAWBRIDGE_GATE, 3
	warp_event  4,  9, DRIFTVEIL_DRAWBRIDGE_GATE, 4
	warp_event 35,  8, ROUTE_5_DRAWBRIDGE_GATE, 3
	warp_event 35,  9, ROUTE_5_DRAWBRIDGE_GATE, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 20,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 3, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilDrawbridgeGrannyScript, -1
	object_event 11,  9, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 12,  8, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 13,  7, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 21,  9, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 22,  8, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 23,  7, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 16,  7, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 17,  8, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 18,  9, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 26,  7, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 27,  8, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 28,  9, SPRITE_BRIDGE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, PAL_NPC_BRIDGE_CABLE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	
DriftveilDrawbridgeGrannyScript:
	faceplayer
	checkevent EVENT_GOT_EVIOLITE
	iftrue_jumptext .GotEvioliteText
	opentext
	writethistext
	text "You're a #mon"
	line "trainer, right?"

	para "I found this rare"
	line "stone in Driftveil"
	cont "City."
	
	para "I think it would"
	line "help you more than"
	cont "me, take it."
	done
	promptbutton
	verbosegiveitem EVIOLITE
	iffalsefwd .done
	setevent EVENT_GOT_EVIOLITE
	writethistext
.GotEvioliteText:
	text "That stone will"
	line "increase the"
	
	para "defenses of #-"
	line "mon that are not"
	cont "fully evolved."
	done
	waitbutton
.done
	closetext
	end
