StrangeHouseB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, STRANGE_HOUSE_1F, 3
	warp_event 24, 11, STRANGE_HOUSE_1F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_ITEM + ETHER, EVENT_STRANGE_HOUSE_B1F_ETHER
	bg_event 11, 11, BGEVENT_ITEM + CARBOS, EVENT_STRANGE_HOUSE_B1F_CARBOS

	def_object_events
	itemball_event  7,  7, SUPER_POTION, 1, EVENT_STRANGE_HOUSE_B1F_SUPER_POTION
	tmhmball_event 17, 11, TM_WILL_O_WISP, EVENT_STRANGE_HOUSE_B1F_TM_WILL_O_WISP
	