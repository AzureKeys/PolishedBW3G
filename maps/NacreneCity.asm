NacreneCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NacreneFlyPoint

	def_warp_events
	warp_event 13, 15, NACRENE_POKECENTER, 1
	warp_event  7, 15, NACRENE_CHARCOAL_HOUSE, 1
	warp_event 25,  5, NACRENE_WISE_GLASSES_HOUSE, 1
	warp_event  6,  5, NACRENE_CAFE, 1
	warp_event 16,  5, NACRENE_MUSEUM, 1
	warp_event 17,  5, NACRENE_MUSEUM, 2
	warp_event 29, 16, ROUTE_3_NACRENE_GATE, 1
	warp_event 29, 17, ROUTE_3_NACRENE_GATE, 2

	def_coord_events
	coord_event  0,  8, 0, NacreneCityLenoraScene1
	coord_event  0,  9, 0, NacreneCityLenoraScene2
	coord_event  0, 10, 0, NacreneCityLenoraScene3
	coord_event  0, 11, 0, NacreneCityLenoraScene4

	def_bg_events
	bg_event 19, 12, BGEVENT_JUMPTEXT, NacreneCitySignText
	bg_event  8,  7, BGEVENT_JUMPTEXT, NacreneCafeSignText
	bg_event 15,  6, BGEVENT_JUMPTEXT, NacreneMuseumSignText
	bg_event 28, 15, BGEVENT_JUMPTEXT, NacreneRouteSignText
	bg_event 23,  2, BGEVENT_ITEM + REVIVE, EVENT_NACRENE_CITY_REVIVE
	bg_event  9,  3, BGEVENT_ITEM + PP_UP, EVENT_NACRENE_CITY_PP_UP
	bg_event 10,  3, BGEVENT_ITEM + PP_UP, EVENT_NACRENE_CITY_PP_UP
	
	def_object_events
	object_event  6,  8, SPRITE_LENORA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_NACRENE_CITY_LENORA
	object_event  2,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneCitySchoolgirlText, -1
	object_event 16,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneCityGentlemanText, -1
	object_event  5, 17, SPRITE_MUSICIAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneCityMusicianText, -1
	
	object_const_def
	const NACRENECITY_LENORA
	
NacreneFlyPoint:
	setflag ENGINE_FLYPOINT_NACRENE
	endcallback
	
NacreneCityLenoraScene1:
	applymovement NACRENECITY_LENORA, .Movement
	sjumpfwd NacreneCityLenoraScene
.Movement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
NacreneCityLenoraScene2:
	applymovement NACRENECITY_LENORA, .Movement
	sjumpfwd NacreneCityLenoraScene
.Movement:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
NacreneCityLenoraScene3:
	applymovement NACRENECITY_LENORA, .Movement
	sjumpfwd NacreneCityLenoraScene
.Movement:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
NacreneCityLenoraScene4:
	applymovement NACRENECITY_LENORA, .Movement
	sjumpfwd NacreneCityLenoraScene
.Movement:
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
NacreneCityLenoraScene:
	showtext .LenoraText
	applymovement NACRENECITY_LENORA, .LeaveMovement
	disappear NACRENECITY_LENORA
	setscene 1
	setevent EVENT_PINWHEEL_FOREST_BLOCKERS ; Remove cops from forest
	end
.LeaveMovement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
.LenoraText:	
	text "Hey! I don't"
	line "recognize you."
	
	para "You're not up to"
	line "anything shady,"
	cont "are you?"
	
	para "… … … …"
	
	para "Sorry, we just had"
	line "a break in at the"
	
	para "museum. Something"
	line "important was"
	cont "stolen."
	
	para "I'm Lenora, I run"
	line "the museum here in"
	
	para "town. We have a"
	line "special machine"
	
	para "that can revive"
	line "#mon fossils!"
	
	para "But it's useless"
	line "without that Data"
	
	para "Disk that was"
	line "stolen…"
	
	para "You should stop by"
	line "if you find out"
	cont "anything."
	
	para "Bye now!"
	done
	
NacreneCitySignText:
	text "Nacrene City"
	
	para "A pearl of a"
	line "place!"
	done
	
NacreneCafeSignText:
	text "Nacrene City Cafe."
	
	para "Refresh your body"
	line "and soul!"
	done
	
NacreneMuseumSignText:
	text "Nacrene City"
	line "Museum."
	
	para "Where the past"
	line "comes to life!"
	done
	
NacreneRouteSignText:
	text "Route 3 ahead."
	
	para "Passage to"
	line "Striaton City."
	done
	
NacreneCitySchoolgirlText:
	text "The cafe in town"
	line "serves specialty"
	
	para "drinks you can't"
	line "get anywhere else!"
	done
	
NacreneCityGentlemanText:
	text "We used to have a"
	line "Gym in the museum,"
	
	para "but Lenora has"
	line "retired to run"
	
	para "the museum full"
	line "time."
	done
	
NacreneCityMusicianText:
	text "Nacrene City may"
	line "not be the biggest"
	
	para "city in Unova, but"
	line "it's got a"
	
	para "thriving scene for"
	line "young artists."
	done
