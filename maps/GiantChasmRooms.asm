GiantChasmRooms_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 19, GIANT_CHASM_1F, 3
	warp_event  9, 23, GIANT_CHASM_B1F, 1
	warp_event  9, 11, GIANT_CHASM_B1F, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	tmhmball_event  8,  6, TM_THUNDERBOLT, EVENT_GIANT_CHASM_ROOMS_TM_THUNDERBOLT
