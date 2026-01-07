StrangeHouseRooms_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, STRANGE_HOUSE_1F, 5
	warp_event  5,  7, STRANGE_HOUSE_1F, 5
	warp_event 20,  7, STRANGE_HOUSE_1F, 6
	warp_event 21,  7, STRANGE_HOUSE_1F, 6
	warp_event 36,  7, STRANGE_HOUSE_1F, 7
	warp_event 37,  7, STRANGE_HOUSE_1F, 7
	warp_event  4, 19, STRANGE_HOUSE_1F, 8
	warp_event  5, 19, STRANGE_HOUSE_1F, 8
	warp_event 20, 19, STRANGE_HOUSE_1F, 9
	warp_event 21, 19, STRANGE_HOUSE_1F, 9

	def_coord_events
	coord_event 20,  7, 0, StrangeHouseRoomsGhostScript
	coord_event 21,  7, 0, StrangeHouseRoomsGhostScript

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, StrangeHouseUpperLeftRoomTrigger
	bg_event 41,  4, BGEVENT_READ, StrangeHouseUpperRightRoomTrigger
	bg_event 41,  5, BGEVENT_READ, StrangeHouseUpperRightRoomTrigger
	bg_event  4, 15, BGEVENT_READ, StrangeHouseLowerLeftRoomTrigger
	bg_event  5, 15, BGEVENT_READ, StrangeHouseLowerLeftRoomTrigger
	bg_event 18, 13, BGEVENT_READ, StrangeHouseLowerRightRoomTrigger

	def_object_events
	object_event 20,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_STRANGE_HOUSE_ROOMS_GHOST
	object_event 36,  4, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
	object_event  6, 17, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StrangeHouseCooltrainerMText, -1
	object_event  7,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, StrangeHouseYoungsterText, -1
	object_event 20, 15, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, StrangeHouseLassText, -1
	itemball_event 25, 17, RARE_CANDY, 1, EVENT_STRANGE_HOUSE_ROOMS_RARE_CANDY
	itemball_event  5,  1, FULL_HEAL, 1, EVENT_STRANGE_HOUSE_ROOMS_FULL_HEAL
	tmhmball_event 20,  3, HM_CUT, EVENT_GOT_HM01_CUT
	
	object_const_def
	const STRANGEHOUSEROOMS_GHOST
	
StrangeHouseRoomsGhostScript:
	checkevent EVENT_GOT_HM01_CUT
	iffalsefwd .done
	appear STRANGEHOUSEROOMS_GHOST
	turnobject PLAYER, UP
	showtext .GhostText
	disappear STRANGEHOUSEROOMS_GHOST
	setscene 1
	setmapscene STRANGE_HOUSE_1F, 6 ; puzzle complete
.done
	end
	
.GhostText:
	text "… … … …"
	
	para "…That was fun…"
	
	para "I hope you come"
	line "to play again…"
	done

StrangeHouseLowerLeftRoomTrigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequalfwd 2, .done ; already in lower left layout
	ifequalfwd 6, .done ; puzzle already complete
	setmapscene STRANGE_HOUSE_1F, 2
	scall StrangeHouseRoomsTriggerEffectScript
.done
	end

StrangeHouseUpperLeftRoomTrigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequalfwd 3, .done ; already in upper left layout
	ifequalfwd 6, .done ; puzzle already complete
	setmapscene STRANGE_HOUSE_1F, 3
	scall StrangeHouseRoomsTriggerEffectScript
.done
	end

StrangeHouseLowerRightRoomTrigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequalfwd 4, .done ; already in lower right layout
	ifequalfwd 6, .done ; puzzle already complete
	setmapscene STRANGE_HOUSE_1F, 4
	scall StrangeHouseRoomsTriggerEffectScript
.done
	end

StrangeHouseUpperRightRoomTrigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequalfwd 5, .done ; already in upper right layout
	ifequalfwd 6, .done ; puzzle already complete
	setmapscene STRANGE_HOUSE_1F, 5
	scall StrangeHouseRoomsTriggerEffectScript
.done
	end
	
StrangeHouseRoomsTriggerEffectScript:
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	jumpthistext
	text "Something moved…"
	done
	
StrangeHouseCooltrainerMText:
	text "Are you exploring"
	line "this haunted"
	cont "house too?"
	
	para "Get this! I was"
	line "checking out that"
	cont "desk, when"
	
	para "all of a sudden,"
	line "there was a sound!"
	
	para "When I left the"
	line "room, the furni-"
	cont "ture outside had"
	cont "moved!"
	
	para "I'm telling you,"
	line "this is the work"
	cont "of a ghost!"
	done
	
StrangeHouseYoungsterText:
	text "Hmm…"
	
	para "So it seems that"
	line "the furniture will"
	
	para "rearrange itself"
	line "when I investigate"
	cont "certain objects…"
	
	para "There must be"
	line "something in this"
	cont "room too."
	
	para "Maybe the bed? Or"
	line "a bookshelf?"
	
	para "That broken chair"
	line "looks suspicious"
	cont "too…"
	done
	
StrangeHouseLassText:
	text "I think there must"
	line "be something"
	cont "hidden in the"
	cont "back room."
	
	para "But the furniture"
	line "always seems to"
	cont "block the way…"
	
	para "Maybe if I go"
	line "through the"
	
	para "basement, I could"
	line "get to the other"
	cont "side…"
	done
