VictoryRoadEntranceNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VictoryRoadFlyPoint

	def_warp_events
	warp_event 15,  5, VICTORY_ROAD_POKECENTER, 1

	def_coord_events

	def_bg_events
	bg_event 10,  7, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText
	bg_event 22, 22, BGEVENT_ITEM + MAX_ETHER, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_MAX_ETHER
	bg_event 17, 16, BGEVENT_ITEM + MAX_POTION, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_MAX_POTION
	bg_event 27, 18, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_BIG_MUSHROOM
	
	def_object_events
	itemball_event 23,  8, PP_UP, 1, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_PP_UP
	itemball_event 25, 16, IRON, 1, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_IRON
	itemball_event 45,  4, RAZOR_FANG, 1, EVENT_VICTORY_ROAD_ENTRANCE_NORTH_RAZOR_FANG
	object_event 34, 26, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_3, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	object_event 30, 26, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	object_event 26, 26, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_2, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	object_event 22, 26, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_3, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	object_event 18, 26, SPRITE_BADGE_7_8, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	
VictoryRoadFlyPoint:
	setflag ENGINE_FLYPOINT_VICTORY_ROAD
	endcallback

VictoryRoadEntranceSignText:
	text "Victory Road"
	line "ahead."
	done
