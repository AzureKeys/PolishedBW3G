PkmnLeaguePokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, PKMN_LEAGUE_ENTRANCE, 2
	warp_event  5,  9, PKMN_LEAGUE_ENTRANCE, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  7, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PkmnLeaguePokecenterVeteranMText, -1
	object_event  8,  4, SPRITE_VETERAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PkmnLeaguePokecenterVeteranFText, -1
	
PkmnLeaguePokecenterVeteranMText:
	text "No matter how many"
	line "times the Elite"
	cont "Four defeat me…"
	
	para "I'll keep moving"
	line "forward with my"
	cont "#mon!"
	done
	
PkmnLeaguePokecenterVeteranFText:
	text "Understand what"
	line "type of #mon"
	
	para "each of the Elite"
	line "Four uses. That is"
	
	para "a shortcut for"
	line "victory!"
	done
