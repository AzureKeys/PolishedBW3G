AccumulaTradeHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, ACCUMULA_TOWN, 5
	warp_event  7,  7, ACCUMULA_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
