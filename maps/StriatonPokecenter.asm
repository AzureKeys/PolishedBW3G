StriatonPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, STRIATON_CITY, 1
	warp_event  5,  9, STRIATON_CITY, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonPokecenterRangerFText, -1
	object_event  8,  4, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonPokecenterGymGuyText, -1
	object_event  1,  7, SPRITE_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonPokecenterLadyText, -1
	
StriatonPokecenterRangerFText:
	text "Are you catching"
	line "lots of #mon?"

	para "Having a lot of"
	line "#mon makes"

	para "looking at the"
	line "#dex or the PC"
	cont "Box so much fun!"
	done

StriatonPokecenterGymGuyText:
	text "Have you heard?"
	line "The Gym here in"

	para "town was re-opened"
	line "recently!"
	done

StriatonPokecenterLadyText:
	text "Team Plasma is no"
	line "longer in Unova."

	para "At least, they're"
	line "supposed to have"
	cont "gone away."
	done
