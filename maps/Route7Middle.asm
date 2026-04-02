Route7Middle_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 13,  8, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, 0, -1 ; dummy trainer
	object_event 13,  9, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, 0, -1 ; dummy trainer
	itemball_event -1,  4, PP_UP, 1, EVENT_ROUTE_7_SOUTH_PP_UP ; dummy item
	