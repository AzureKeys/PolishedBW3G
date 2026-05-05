TwistMountainB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 15, TWIST_MOUNTAIN_1F, 8

	def_coord_events

	def_bg_events
	bg_event 15, 14, BGEVENT_ITEM + ELIXIR, EVENT_TWIST_MOUNTAIN_B1F_ELIXIR
	
	def_object_events
	itemball_event 18, 15, BLUE_SHARD, 1, EVENT_TWIST_MOUNTAIN_B1F_BLUE_SHARD
	itemball_event 16,  7, REVIVE, 3, EVENT_TWIST_MOUNTAIN_B1F_REVIVE
	itemball_event 10,  5, LUCKY_EGG, 1, EVENT_TWIST_MOUNTAIN_B1F_LUCKY_EGG
