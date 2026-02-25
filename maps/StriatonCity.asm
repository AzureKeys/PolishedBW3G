StriatonCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, StriatonFlyPoint

	def_warp_events
	warp_event 33, 17, STRIATON_POKECENTER, 1
	warp_event 29, 17, STRIATON_TRADE_HOUSE, 1
	warp_event 29, 26, STRIATON_LAB, 1
	warp_event 29, 27, STRIATON_LAB, 2
	warp_event 38, 17, STRIATON_GYM, 1
	warp_event 39, 17, STRIATON_GYM, 2

	def_coord_events

	def_bg_events
	bg_event 24, 17, BGEVENT_JUMPTEXT, StriatonCitySignText
	bg_event 13, 18, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_STRIATON_CITY_BIG_MUSHROOM
	bg_event 15, 14, BGEVENT_ITEM + PP_UP, EVENT_STRIATON_CITY_PP_UP
	
	def_object_events
	object_event 10, 21, SPRITE_SOCIALITE, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonCitySocialiteText, -1
	object_event 27, 25, SPRITE_RANGER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonCityRangerMText, -1
	object_event 37, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonCityLassText, -1
	object_event 24, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonCityGentlemanText, -1
	itemball_event  6, 29, X_SPEED, 1, EVENT_STRIATON_CITY_X_SPEED
	itemball_event 44, 27, LOVE_BALL, 3, EVENT_STRIATON_CITY_LOVE_BALL
	itemball_event  2, 21, DUSK_BALL, 3, EVENT_STRIATON_CITY_DUSK_BALL
	itemball_event  3, 15, BIG_PEARL, 1, EVENT_STRIATON_CITY_BIG_PEARL
	itemball_event 15, 28, YELLOW_SHARD, 1, EVENT_STRIATON_CITY_YELLOW_SHARD
	
StriatonFlyPoint:
	setflag ENGINE_FLYPOINT_STRIATON
	endcallback
	
StriatonCitySocialiteText:
	text "This garden is a"
	line "great place to"
	cont "come to relax."
	
	para "I feel zen just"
	line "standing here."
	done
	
StriatonCityRangerMText:
	text "Dr.Fennel and Dr."
	line "Amanita live in"
	cont "this city."
	
	para "They created many"
	line "things, even the"
	cont "#mon storage"
	cont "system!"
	done
	
StriatonCityLassText:
	text "Striaton City used"
	line "to have three Gym"
	
	para "leaders, but they"
	line "stepped down."
	
	para "One of the leaders"
	line "recently came back"
	cont "to run the Gym,"
	cont "though!"
	done
	
StriatonCityGentlemanText:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done

StriatonCitySignText:
	text "Striaton City"
	
	para "Three stars,"
	line "together as one."
	done
