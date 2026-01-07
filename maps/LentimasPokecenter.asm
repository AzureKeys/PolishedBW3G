LentimasPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, LENTIMAS_TOWN, 1
	warp_event  5,  9, LENTIMAS_TOWN, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasPokecenterGentlemanText, -1
	object_event  1,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasPokecenterGrannyText, -1
	object_event  8,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasPokecenterCooltrainerMText, -1
	
LentimasPokecenterGentlemanText:
	text "Have you found"
	line "any HM moves?"

	para "Those moves can"
	line "be used outside,"

	para "even if your #-"
	line "mon doesn't know"
	cont "the move!"
	
	para "As long as you"
	line "have a #mon"
	
	para "with you that can"
	line "learn it, you can"
	cont "use the move!"
	
	para "How convenient!"
	done

LentimasPokecenterGrannyText:
	text "Strange things"
	line "happen outside"
	cont "of town."
	
	para "Be careful."
	done

LentimasPokecenterCooltrainerMText:
	text "I'm on a journey."
	line "Why?"

	para "Well, do you rem-"
	line "ember exactly why"
	cont "you're traveling?"
	done
