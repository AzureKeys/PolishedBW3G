NacrenePokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, NACRENE_CITY, 1
	warp_event  5,  9, NACRENE_CITY, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  7, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacrenePokecenterSocialiteText, -1
	object_event  8,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacrenePokecenterBugCatcherText, -1
	pokemon_event  9,  2, JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, NacrenePokecenterJigglypuffText, -1
	
NacrenePokecenterSocialiteText:
	text "The #mon with"
	line "me right now are"
	
	para "the ones that, out"
	line "of all those I've"

	para "met so far, I've"
	line "taken a particular"
	cont "shine to!"
	done

NacrenePokecenterBugCatcherText:
	text "Most #mon get"
	line "drowsy if they"

	para "hear a Jigglypuff"
	line "singing."
	done

NacrenePokecenterJigglypuffText:
	text "Jigglypuff: Puu"
	line "pupuu."
	done
