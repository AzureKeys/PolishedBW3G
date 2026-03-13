DriftveilTradeHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, DRIFTVEIL_CITY, 8
	warp_event  3,  7, DRIFTVEIL_CITY, 8

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1
