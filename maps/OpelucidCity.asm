OpelucidCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OpelucidFlyPoint

	def_warp_events
	warp_event 49, 26, ROUTE_11_OPELUCID_GATE, 1
	warp_event 49, 27, ROUTE_11_OPELUCID_GATE, 2
	warp_event  4, 26, ROUTE_9_OPELUCID_GATE, 1
	warp_event  4, 27, ROUTE_9_OPELUCID_GATE, 2
	warp_event 33, 23, OPELUCID_POKECENTER, 1
	warp_event 11, 19, OPELUCID_SUPER_ROD_HOUSE, 1
	warp_event 33, 13, OPELUCID_BLACKBELT_HOUSE, 1
	warp_event 25,  5, OPELUCID_CURIOSITY_SHOP, 1
	warp_event 28, 15, DRAYDENS_HOUSE_1F, 1

	def_coord_events
	coord_event 40, 25, 0, OpelucidCityIrisScript1
	coord_event 40, 26, 0, OpelucidCityIrisScript2
	coord_event 40, 27, 0, OpelucidCityIrisScript3
	
	def_bg_events
	bg_event 17, 27, BGEVENT_JUMPTEXT, OpelucidCitySignText
	bg_event  6, 24, BGEVENT_JUMPTEXT, OpelucidRoute9SignText
	bg_event 44, 24, BGEVENT_JUMPTEXT, OpelucidRoute11SignText
	bg_event 30, 18, BGEVENT_JUMPTEXT, OpelucidDraydenSignText
	
	def_object_events
	object_event 17,  6, SPRITE_IRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidCityIrisBlockerText, EVENT_OPELUCID_CITY_IRIS
	object_event 16, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidCityLassText, -1
	object_event 18, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidCityPokefanMText, -1
	object_event 37, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidCityYoungsterText, -1
	object_event 35, 25, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidCityGentlemanText, -1
	itemball_event 33, 17, PROTEIN, 1, EVENT_OPELUCID_CITY_PROTEIN
		
	object_const_def
	const OPELUCIDCITY_IRIS
	
OpelucidFlyPoint:
	setflag ENGINE_FLYPOINT_OPELUCID
	endcallback
	
OpelucidCityIrisScript1:
	moveobject OPELUCIDCITY_IRIS, 38, 20
	sjumpfwd OpelucidCityIrisScript
	
OpelucidCityIrisScript2:
	moveobject OPELUCIDCITY_IRIS, 38, 21
	sjumpfwd OpelucidCityIrisScript
	
OpelucidCityIrisScript3:
	moveobject OPELUCIDCITY_IRIS, 38, 22
	; fallthrough
OpelucidCityIrisScript:
	appear OPELUCIDCITY_IRIS
	applymovement OPELUCIDCITY_IRIS, .ApproachMovement
	showtext .IrisText
	applymovement OPELUCIDCITY_IRIS, .LeaveMovement
	disappear OPELUCIDCITY_IRIS
	moveobject OPELUCIDCITY_IRIS, 17,  6
	appear OPELUCIDCITY_IRIS
	turnobject OPELUCIDCITY_IRIS, DOWN
	setscene 1
	end
	
.ApproachMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_end
	
.LeaveMovement:
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
.IrisText:
	text "Iris: Hey <PLAYER>!"
	line "It's me, Iris!"
	
	para "We met back at the"
	line "#mon World"
	cont "Tournament,"
	cont "remember?"
	
	para "Congrats on your"
	line "win, by the way!"
	
	para "I bet you're here"
	line "to challenge my"
	
	para "grandpa. He's the"
	line "Gym Leader here in"
	cont "Opelucid City."
	
	para "Unfortunately,"
	line "he's not here"
	cont "right now."
	
	para "He said something"
	line "was going on at"
	
	para "Dragonspiral Tower"
	line "and went to go"
	
	para "check it out. If"
	line "you want to get to"
	
	para "the tower, you can"
	line "get there by going"
	
	para "west to Icirrus"
	line "City."
	
	para "I'm going back to"
	line "the Gym now. Good"
	cont "luck <PLAYER>!"
	done
	
OpelucidCityIrisBlockerText:
	text "Iris: Sorry"
	line "<PLAYER>, my"
	
	para "grandpa still"
	line "hasn't come back"
	cont "to the gym."
	done

OpelucidCityLassText:
	text "Gym leader Drayden"
	line "leads Opelucid"
	cont "City as its mayor."
	
	para "He's always train-"
	line "ing by wrestling"
	cont "with his #mon."
	done
	
OpelucidCityPokefanMText:
	text "Unova's symbols"
	line "are legendary"
	cont "dragon #mon."
	
	para "But I wonder where"
	line "they are now?"
	done
	
OpelucidCityYoungsterText:
	text "There was a person"
	line "called N who had a"
	
	para "legendary #mon"
	line "with him. Do you"
	
	para "think he was"
	line "really the hero?"
	done
	
OpelucidCityGentlemanText:
	text "Why do #mon"
	line "stay by our sides?"
	
	para "If we could talk"
	line "to them, we could"
	
	para "ask. I'm a bit"
	line "scared about what"
	cont "they'd say."
	done
	
OpelucidCitySignText:
	text "Opelucid City."
	
	para "The city where"
	line "past and future"
	cont "intertwine."
	done
	
OpelucidRoute9SignText:
	text "West to Route 9."
	
	para "Passage to"
	line "Icirrus City."
	done
	
OpelucidRoute11SignText:
	text "East to Route 11."
	
	para "Village Bridge"
	line "ahead."
	done
	
OpelucidDraydenSignText:
	text "Home of Drayden."
	
	para "(and Iris!)"
	done
