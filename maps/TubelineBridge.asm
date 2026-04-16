TubelineBridge_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17,  6, ROUTE_9, 7
	warp_event 17,  7, ROUTE_9, 8
	warp_event  0,  6, ROUTE_8, 1
	warp_event  0,  7, ROUTE_8, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 12,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TubelineBridgeTeacherText, -1
	object_event  3,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TubelineBridgeSocialiteText, -1
	
TubelineBridgeTeacherText:
	text "It's so loud in"
	line "here! If I were a"
	
	para "#mon, I'd want"
	line "to have Soundproof"
	cont "as my ability!"
	done
	
TubelineBridgeSocialiteText:
	text "This Tubeline"
	line "Bridge was No. 1"
	
	para "in the bridge"
	line "rankings in Unova."
	
	para "That means it's"
	line "the sturdiest!"
	done
	