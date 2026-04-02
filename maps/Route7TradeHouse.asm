Route7TradeHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_7_MIDDLE, 1
	warp_event  3,  7, ROUTE_7_MIDDLE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
