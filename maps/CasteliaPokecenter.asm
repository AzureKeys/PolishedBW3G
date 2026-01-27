CasteliaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, CASTELIA_CITY_SOUTH, 9
	warp_event  5,  9, CASTELIA_CITY_SOUTH, 9

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE_D
	object_event  1,  3, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_PURPLE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPokecenterRangerMText, -1
	object_event  1,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPokecenterPokefanMText, -1
	object_event  8,  4, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPokecenterLadyText, -1
	pokemon_event  9,  4, AUDINO, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, CasteliaPokecenterAudinoText, -1
	
CasteliaPokecenterRangerMText:
	text "The Battle Company"
	line "makes all kinds of"

	para "products for #-"
	line "mon battling."
	done

CasteliaPokecenterPokefanMText:
	text "Nimbasa City…"

	para "Strange people in"
	line "the abandoned"
	cont "park…"

	para "Something is going"
	line "on, I know it!"
	done
	
CasteliaPokecenterLadyText:
	text "Burgh, the Gym"
	line "Leader, is soooo"
	cont "cool."

	para "His #mon are"
	line "really tough too."
	done

CasteliaPokecenterAudinoText:
	text "Audii!"
	done
