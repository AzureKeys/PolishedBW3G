Underground_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  3,  9, BGEVENT_ITEM + FULL_RESTORE, EVENT_UNDERGROUND_HIDDEN_FULL_RESTORE
	bg_event  1, 21, BGEVENT_ITEM + X_SP_ATK, EVENT_UNDERGROUND_HIDDEN_X_SP_ATK

	def_object_events
	tmhmball_event  4, 15, TM_EXPLOSION, EVENT_UNDERGROUND_TM_EXPLOSION
