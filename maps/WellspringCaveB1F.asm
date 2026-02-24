WellspringCaveB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 47, WELLSPRING_CAVE_1F, 2

	def_coord_events

	def_bg_events
	bg_event  9, 29, BGEVENT_ITEM + MAX_ELIXIR, EVENT_WELLSPRING_CAVE_B1F_MAX_ELIXIR
	bg_event 15,  3, BGEVENT_ITEM + MAX_REVIVE, EVENT_WELLSPRING_CAVE_B1F_MAX_REVIVE
	
	def_object_events
	object_event  9,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerBlackbelt2Wellspring, -1
	object_event 12, 27, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, TrainerBattleGirlWellspring, -1
	object_event 11, 19, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerHikerWellspring, -1
	itemball_event 18, 29, CARBOS, 1, EVENT_WELLSPRING_CAVE_B1F_CARBOS
	itemball_event 18, 42, MAX_POTION, 1, EVENT_WELLSPRING_CAVE_B1F_MAX_POTION
	tmhmball_event 11,  3, TM_SHADOW_CLAW, EVENT_WELLSPRING_CAVE_B1F_TM_SHADOW_CLAW
	
TrainerBlackbelt2Wellspring:
	generictrainer BLACKBELT_T, BLACKBELT_WELLSPRING_2, EVENT_BEAT_BLACKBELT_WELLSPRING_2, .SeenText, .BeatenText

	text "Isn't darkness"
	line "great? It's the"

	para "space of dreams"
	line "where you don't"
	
	para "know what's even"
	line "there!"
	done
	
.SeenText:
	text "Here in the dark-"
	line "ness… I feel my"

	para "way through thanks"
	line "to my #mon!"
	
	para "I'll show you the"
	line "power of our bond!"
	done

.BeatenText:
	text "Our power went"
	line "dark!"
	done
	
TrainerBattleGirlWellspring:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_WELLSPRING, EVENT_BEAT_BATTLE_GIRL_WELLSPRING, .SeenText, .BeatenText

	text "I was just joking"
	line "about never"
	cont "stopping!"
	done
	
.SeenText:
	text "You gotta have"
	line "stamina! Burn the"
	
	para "flames of life,"
	line "and never stop"
	cont "moving forward!"
	done

.BeatenText:
	text "I'm out of"
	line "stamina!"
	done
	
TrainerHikerWellspring:
	generictrainer HIKER, HIKER_WELLSPRING, EVENT_BEAT_HIKER_WELLSPRING, .SeenText, .BeatenText

	text "This lake was"
	line "formed by the"

	para "water from under-"
	line "ground rivers…"
	
	para "Such a clear,"
	line "flawless blue…"
	done
	
.SeenText:
	text "A lake that"
	line "spreads beneath"

	para "the earth… And the"
	line "Hiker who waits"
	cont "beside it!"
	done

.BeatenText:
	text "You seized victory"
	line "with ease, young"
	cont "trainer…"
	done
	