CasteliaTradeHouse2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  5, CASTELIA_CITY_NORTH, 12
	warp_event  0,  6, CASTELIA_CITY_NORTH, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
