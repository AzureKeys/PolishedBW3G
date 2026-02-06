FloccesyRanch_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  5, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 19, 19, BGEVENT_JUMPTEXT, FloccesyRanchSignText
	bg_event  7,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_FLOCCESY_RANCH
	bg_event  8,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_FLOCCESY_RANCH
	
	def_object_events
	fruittree_event 13,  9, FRUITTREE_FLOCCESY_RANCH, ORAN_BERRY, PAL_NPC_BLUE
	itemball_event  4,  9, X_ATTACK, 1, EVENT_FLOCCESY_RANCH_X_ATTACK
	
FloccesyRanchSignText:
	text "Floccesy Ranch"
	
	para "Try our Moomoo"
	line "Milk today!"
	done
