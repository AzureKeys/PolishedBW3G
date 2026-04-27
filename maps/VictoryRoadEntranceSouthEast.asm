VictoryRoadEntranceSouthEast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 18, 11, ROUTE_23_WEST, 7
	warp_event 19, 11, ROUTE_23_WEST, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  2, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 14,  6, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_YELLOW, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 10,  2, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_2, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event 10,  6, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_2, 0, 0, -1, PAL_NPC_BADGE_YELLOW, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event  6,  2, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_3, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event  6,  6, SPRITE_BADGE_1_2_3, SPRITEMOVEDATA_BADGE_3, 0, 0, -1, PAL_NPC_BADGE_YELLOW, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event  2,  2, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event  2,  6, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_1, 0, 0, -1, PAL_NPC_BADGE_YELLOW, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1
	object_event -2,  2, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_2, 0, 0, -1, PAL_NPC_BADGE_BLUE, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
	object_event -2,  6, SPRITE_BADGE_4_5_6, SPRITEMOVEDATA_BADGE_2, 0, 0, -1, PAL_NPC_BADGE_YELLOW, OBJECTTYPE_SCRIPT, 0, DoNothingScript, -1 ; dummy object
