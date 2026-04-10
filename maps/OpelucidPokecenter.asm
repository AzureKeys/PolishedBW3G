OpelucidPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, OPELUCID_CITY, 5
	warp_event  5,  9, OPELUCID_CITY, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_DARK_GREEN
	object_event  8,  5, SPRITE_MUSICIAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidPokecenterMusicianText, -1
	object_event  1,  3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidPokecenterCooltrainerFText, -1
	object_event  1,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OpelucidPokecenterHikerText, -1
	
OpelucidPokecenterMusicianText:
	text "Team Plasma once"
	line "tried to take over"
	cont "our city."

	para "They were beaten"
	line "by our Gym Leader,"
	cont "Drayden!"
	done
	
OpelucidPokecenterCooltrainerFText:
	text "Drayden is strong,"
	line "but his grand-"
	cont "daughter, Iris,"

	para "was the #mon"
	line "League champion!"
	done
	
OpelucidPokecenterHikerText:
	text "I was hoping to"
	line "buy some supplies"

	para "to climb Route 10,"
	line "but it's closed…"
	done
