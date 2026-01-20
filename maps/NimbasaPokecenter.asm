NimbasaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, NIMBASA_CITY, 5
	warp_event  5,  9, NIMBASA_CITY, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN_D
	object_event  7,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaPokecenterGrampsText, -1
	object_event  1,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaPokecenterLassText, -1
	pokemon_event  2,  7, TRUBBISH, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, NimbasaPokecenterTrubbishText, -1
	
NimbasaPokecenterGrampsText:
	text "Have you found"
	line "any colored shards"

	para "around? I hear"
	line "there are some"
	
	para "trainers that will"
	line "teach you moves in"
	cont "return for them."

	para "In Driftveil City,"
	line "there's a place"

	para "where collectors"
	line "meet to exchange"
	cont "colored shards."
	done

NimbasaPokecenterLassText:
	text "This is my #-"
	line "mon, Trubbish!"

	para "I caught it on"
	line "Route 16."

	para "It may be trash,"
	line "but it's my"
	cont "special trash!"
	done

NimbasaPokecenterTrubbishText:
	text "Truuub."
	done
