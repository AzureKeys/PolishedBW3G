CasteliaCityNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CasteliaFlyPoint

	def_warp_events
	warp_event 17,  3, ROUTE_4_CASTELIA_GATE, 3
	warp_event  5, 29, CASTELIA_CITY_STREETS, 1
	warp_event  6, 29, CASTELIA_CITY_STREETS, 2
	warp_event 13, 29, CASTELIA_CITY_STREETS, 3
	warp_event 14, 29, CASTELIA_CITY_STREETS, 4
	warp_event 21, 29, CASTELIA_CITY_STREETS, 5
	warp_event 22, 29, CASTELIA_CITY_STREETS, 6
	warp_event 29, 29, CASTELIA_CITY_STREETS, 7
	warp_event 30, 29, CASTELIA_CITY_STREETS, 8

	def_coord_events

	def_bg_events
	bg_event 16, 10, BGEVENT_JUMPTEXT, CasteliaCitySignText
	bg_event  6, 24, BGEVENT_JUMPTEXT, CasteliaGymStreetSignText
	bg_event 14, 25, BGEVENT_JUMPTEXT, CasteliaAlleySignText
	bg_event 21, 25, BGEVENT_JUMPTEXT, CasteliaModeStreetSignText
	bg_event 31, 27, BGEVENT_JUMPTEXT, CasteliaStreetSignText
	bg_event 10, 18, BGEVENT_ITEM + HEART_SCALE, EVENT_CASTELIA_CITY_NORTH_HEART_SCALE
	bg_event 10, 19, BGEVENT_ITEM + HEART_SCALE, EVENT_CASTELIA_CITY_NORTH_HEART_SCALE
	
	def_object_events
	object_event 15, 16, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthLadyText, -1
	object_event 16, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthYoungsterText, -1
	object_event 22, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthTeacherText, -1
	object_event 12, 15, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthTwin1Text, -1
	object_event 12, 16, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthTwin2Text, -1
	object_event 22, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityNorthLassText, -1
	itemball_event 18, 19, TIMER_BALL, 3, EVENT_CASTELIA_CITY_NORTH_TIMER_BALL
	
CasteliaFlyPoint:
	setflag ENGINE_FLYPOINT_CASTELIA
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftruefwd .done
	specialphonecall SPECIALCALL_BIANCA_CASTELIA
.done
	endcallback

CasteliaCityNorthLadyText:
	text "It's wonderful how"
	line "the #mon and"
	
	para "women here are so"
	line "full of life!"
	done

CasteliaCityNorthYoungsterText:
	text "When you're tired,"
	line "you should rest!"

	para "Don't force your-"
	line "self to be"
	cont "energetic."
	done

CasteliaCityNorthTeacherText:
	text "I wonder what"
	line "Castelia was like"

	para "before it got"
	line "this big."
	done

CasteliaCityNorthTwin1Text:
	text "My mom has a #-"
	line "mon called Meowth."

	para "It's my favorite!"
	line "It's a different"
	cont "color than other"
	cont "Meowth!"
	
	para "She says if you're"
	line "kind to it, it'll"
	cont "turn into a"
	cont "stronger #mon!"
	done

CasteliaCityNorthTwin2Text:
	text "My mom says there"
	line "are some #mon"

	para "that evolve when"
	line "you use stones on"
	
	para "them. I wonder how"
	line "many kinds of"
	cont "stones there are."
	done

CasteliaCityNorthLassText:
	text "To live surrounded"
	line "by people, do you"
	
	para "have to grow to"
	line "like everyone, or"
	
	para "do you only have"
	line "to like yourself?"
	done

CasteliaCitySignText:
	text "Castelia City."
	
	para "A city of"
	line "grandeur."
	done

CasteliaGymStreetSignText:	
	text "Gym Street."
	done

CasteliaAlleySignText:
	text "Narrow Alley."
	done

CasteliaModeStreetSignText:
	text "Mode Street."
	done

CasteliaStreetSignText:
	text "Castelia Street."
	done
	