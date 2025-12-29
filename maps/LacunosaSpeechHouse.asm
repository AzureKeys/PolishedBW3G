LacunosaSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LACUNOSA_TOWN, 2
	warp_event  3,  7, LACUNOSA_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaSpeechHouseText, -1
	
LacunosaSpeechHouseText:
	text "Have you heard of"
	line "hidden grottoes?"
	
	para "If you see a dark"
	line "spot between the"
	cont "trees, check"
	cont "inside."

	para "#mon like to"
	line "stash shiny items"
	cont "they find there."

	para "If you come back"
	line "after a while, you"
	cont "may find something"
	cont "new there!"
	done
	