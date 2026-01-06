ReversalMountainB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 23,  9, UNDELLA_TOWN, 6
	warp_event 19,  3, REVERSAL_MOUNTAIN_1F, 1
	warp_event 11,  5, REVERSAL_MOUNTAIN_1F, 4
	warp_event 27, 21, REVERSAL_MOUNTAIN_1F, 2
	warp_event  7, 27, REVERSAL_MOUNTAIN_1F, 3
	warp_event  7, 11, LENTIMAS_OUTSKIRT, 1

	def_coord_events

	def_bg_events
	bg_event 21,  7, BGEVENT_ITEM + HYPER_POTION, EVENT_REVERSAL_MOUNTAIN_B1F_HYPER_POTION
	
	def_object_events
	object_event 21, 22, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHiker1Reversal, -1
	object_event  6,  8, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBattleGirlReversal, -1
	itemball_event 20, 22, MOON_STONE, 1, EVENT_REVERSAL_MOUNTAIN_B1F_MOON_STONE
	itemball_event  4,  6, X_ATTACK, 1, EVENT_REVERSAL_MOUNTAIN_B1F_X_ATTACK
	tmhmball_event  6, 22, TM_SWIFT, EVENT_REVERSAL_MOUNTAIN_B1F_TM_SWIFT
	
TrainerHiker1Reversal:
	generictrainer HIKER, HIKER_REVERSAL_1, EVENT_BEAT_HIKER_REVERSAL_1, .SeenText, .BeatenText

	text "When we dig"
	line "through tunnels,"
	
	para "I get all wound"
	line "up!"
	done
	
.SeenText:
	text "Me and my #mon"
	line "are professional"

	para "tunnellers! We"
	line "have no rival!"
	done
	
.BeatenText:
	text "To hit a wall like"
	line "this…"
	done
	
TrainerBattleGirlReversal:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_REVERSAL, EVENT_BEAT_BATTLE_GIRL_REVERSAL, .SeenText, .BeatenText

	text "This mountain was"
	line "once a volcano."

	para "And volcanoes hold"
	line "the planet's"
	cont "energy!"
	done
	
.SeenText:
	text "I can feel the"
	line "energy that over-"
	
	para "flows from the"
	line "earth!"
	done
	
.BeatenText:
	text "I felt the energy"
	line "that overflowed"
	cont "from your #mon!"
	done
