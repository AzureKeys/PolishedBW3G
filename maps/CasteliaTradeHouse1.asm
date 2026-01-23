CasteliaTradeHouse1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  5, CASTELIA_CITY_NORTH, 10
	warp_event  7,  6, CASTELIA_CITY_NORTH, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
