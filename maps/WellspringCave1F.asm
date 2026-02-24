WellspringCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 29,  3, ROUTE_3, 4
	warp_event 17, 21, WELLSPRING_CAVE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event 14, 18, BGEVENT_ITEM + PP_UP, EVENT_WELLSPRING_CAVE_1F_PP_UP
	
	def_object_events
	object_event 16,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerBlackbelt1Wellspring, -1
	itemball_event 22,  8, ICE_STONE, 1, EVENT_WELLSPRING_CAVE_1F_ICE_STONE
	itemball_event 17,  8, MAX_REPEL, 3, EVENT_WELLSPRING_CAVE_1F_MAX_REPEL
	itemball_event 12,  8, ESCAPE_ROPE, 3, EVENT_WELLSPRING_CAVE_1F_ESCAPE_ROPE
	itemball_event  3,  6, ELIXIR, 1, EVENT_WELLSPRING_CAVE_1F_ELIXIR
	
TrainerBlackbelt1Wellspring:
	generictrainer BLACKBELT_T, BLACKBELT_WELLSPRING_1, EVENT_BEAT_BLACKBELT_WELLSPRING_1, .SeenText, .BeatenText

	text "You can't win with"
	line "just guts, but"
	
	para "that doesn't mean"
	line "you don't need em!"
	done
	
.SeenText:
	text "Travel the uneven"
	line "road to hone your-"

	para "self! You've got"
	line "to train your gut!"
	done

.BeatenText:
	text "You can't win with"
	line "just guts!"
	done
	