LentimasTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LentimasFlyPoint

	def_warp_events
	warp_event 25, 13, LENTIMAS_POKECENTER, 1
	warp_event 25, 19, LENTIMAS_COIN_HOUSE, 1
	warp_event 15, 11, LENTIMAS_SPELL_TAG_HOUSE, 1

	def_coord_events
	coord_event  9, 15, 0, LentimasTownBlockerScript

	def_bg_events
	bg_event 31, 14, BGEVENT_JUMPTEXT, LentimasTownSignText
	bg_event 12, 12, BGEVENT_JUMPTEXT, LentimasTownAirportSignText
	
	def_object_events
	object_event  9, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LentimasTownBlockerTextScript, -1
	object_event 23, 14, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasTownGrannyText, -1
	object_event 15, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasTownGrampsText, -1
	object_event 13,  6, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasTownHexManiacText, -1
	itemball_event 29,  4, FIRE_STONE, 1, EVENT_LENTIMAS_TOWN_FIRE_STONE
	tmhmball_event  7, 19, TM_FLASH_CANNON, EVENT_LENTIMAS_TOWN_TM_FLASH_CANNON
		
	object_const_def
	const LENTIMASTOWN_BLOCKER
	
LentimasFlyPoint:
	setflag ENGINE_FLYPOINT_LENTIMAS
	endcallback
	
LentimasTownBlockerScript:
	checkkeyitem BOARDINGPASS
	iftruefwd .done
	turnobject PLAYER, UP
	turnobject LENTIMASTOWN_BLOCKER, DOWN
	showtext LentimasTownGuardNoPassText
	applymovement PLAYER, LentimasTown_NoPassMovement
.done
	end
	
LentimasTownBlockerTextScript:
	checkkeyitem BOARDINGPASS
	iftrue_jumptextfaceplayer .HavePassText
	showtext LentimasTownGuardNoPassText
	end
	
.HavePassText:
	text "This is the"
	line "Lentimas Town"
	cont "airport. I see"
	
	para "you have a"
	line "BoardingPass,"
	
	para "you can go on"
	line "through."
	done
	
LentimasTownGuardNoPassText:
	text "This is the"
	line "Lentimas Town"
	cont "airport. Only"
	
	para "those with a"
	line "BoardingPass may"
	cont "enter. Come back"
	
	para "when you have a"
	line "BoardingPass."
	done

LentimasTown_NoPassMovement:
	step_right
	step_end
	
LentimasTownSignText:
	text "Lentimas Town."
	
	para "Town of jagged"
	line "mountain paths."
	done
	
LentimasTownAirportSignText:
	text "Lentimas Airport."
	done
	
LentimasTownGrannyText:
	text "What brings one so"
	line "young as you to"
	
	para "our sleepy little"
	line "town?"
	
	para "Strange things are"
	line "known to have"
	cont "happened here…"
	done
	
LentimasTownGrampsText:
	text "This town isn't"
	line "very old, it used"
	
	para "to just be a"
	line "hiker's outpost."
	
	para "But the house"
	line "outside of town"
	
	para "has been standing"
	line "for far longer…"
	done
	
LentimasTownHexManiacText:
	text "Shhh…"
	
	para "I'm in training to"
	line "become a Hex"
	cont "Maniac."
	
	para "But first, I need"
	line "to be able to at"
	
	para "least see the"
	line "spirits…"
	done
	