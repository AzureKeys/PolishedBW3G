Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15,  4, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 31, 11, BGEVENT_JUMPTEXT, R22SignText
	bg_event  7,  7, BGEVENT_JUMPTEXT, R22ChasmSignText
	bg_event 15,  3, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_22
	bg_event 16,  3, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_22
	
	def_object_events
	object_event 39, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HumilauNeighborTextScript, -1
	object_event 23,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22LassScript, -1
	object_event 16,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 3, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R22YoungsterText, -1
	fruittree_event 11,  4, FRUITTREE_ROUTE_22, ORAN_BERRY, PAL_NPC_BLUE
	itemball_event  6, 14, POTION, 1, EVENT_ROUTE_22_POTION
	
	object_const_def
	const ROUTE22_NEIGHBOR
	
Route22LassScript:
	faceplayer
	opentext
	writetext R22LassText
	waitbutton
	checkevent EVENT_ROUTE_22_LASS_POTION
	iftruefwd .done
	writetext R22LassPotionText
	promptbutton
	verbosegiveitem POTION
	iffalsefwd .done
	setevent EVENT_ROUTE_22_LASS_POTION
.done
	closetext
	end
	
R22YoungsterText:
	text "This hill is high"
	line "up! You can jump"
	
	para "off these ledges"
	line "to get down"
	cont "quickly!"
	
	para "Try it, it's"
	line "fun!"
	done
	
R22LassText:
	text "There's a spooky"
	line "cave at the end"
	cont "of this path."
	
	para "Be careful if"
	line "you go in there!"
	done
	
R22LassPotionText:
	text "Here, take this."
	line "It should help"
	cont "you out!"
	done
	
R22SignText:
	text "Route 22"
	done
	
R22ChasmSignText:
	text "Giant Chasm"
	
	para "Beware of wild"
	line "#mon!"
	done
