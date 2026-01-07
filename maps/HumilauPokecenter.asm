HumilauPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, HUMILAU_CITY, 2
	warp_event  5,  9, HUMILAU_CITY, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE_D
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauPokecenterYoungsterText, -1
	object_event  8,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauPokecenterGentlemanText, -1
	object_event  1,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauPokecenterTeacherText, -1
	
HumilauPokecenterYoungsterText:
	text "Alright! Here's"
	line "some advice from a"

	para "guy who spends all"
	line "of his time in"
	cont "#mon Centers!"
	
	para "When your #mon"
	line "have low HP, make"
	cont "sure to heal them!"
	done

HumilauPokecenterGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

HumilauPokecenterTeacherText:
	text "It's so convenient"
	line "having the Mart"

	para "built into the"
	line "#mon Center."
	
	para "It's your one-stop"
	line "shop for all"
	cont "things #mon!"
	done
