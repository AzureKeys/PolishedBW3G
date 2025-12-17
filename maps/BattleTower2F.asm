BattleTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  1, BATTLE_TOWER_1F, 4

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event  5,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event 16,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event 17,  3, BGEVENT_UP, BattleTower2FTVScript

	def_object_events
	object_event  4,  6, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FCooltrainermText, EVENT_MURKY_SWAMP_CHERYL
	object_event  7,  7, SPRITE_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FLadyText, EVENT_DIM_CAVE_RILEY
	object_event  9,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FTwinText, EVENT_CINNABAR_VOLCANO_BUCK
	object_event 17,  8, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FSuperNerdText, EVENT_QUIET_CAVE_MARLEY
	pokemon_event 18,  8, PIKACHU, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_RED, BattleTower2FPikachuText, EVENT_QUIET_CAVE_MARLEY
	object_event 12,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FYoungsterText, EVENT_SCARY_CAVE_MIRA
	object_event 15,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FBlackbeltText, EVENT_BATTLE_TOWER_OUTSIDE_ANABEL

	object_const_def

BattleTower2FTVScript:
	jumpthistext

	text "There's an intense"
	line "battle on the TV."
	done

BattleTower2FCooltrainermText:
	text "I need to go, but"
	line "I just can't stop"

	para "watching this"
	line "battle!"
	done

BattleTower2FLadyText:
	text "What makes me most"
	line "happy being a"
	cont "trainer?"

	para "The fact that"
	line "#mon will bring"

	para "me lots of"
	line "friends!"
	done

BattleTower2FTwinText:
	text "Some people are"
	line "surprised to see"

	para "a small girl like"
	line "me at the Battle"
	cont "Tower."

	para "It's not like I"
	line "have to battle"
	cont "myself, you know?"
	done

BattleTower2FSuperNerdText:
	text "Hehe! All the"
	line "trainers around us"
	cont "look so pathetic!"

	para "…Actually, that"
	line "mindset makes you"
	cont "lose with one hit!"

	para "Don't let your"
	line "guard down,"
	cont "Pikachu!"
	done

BattleTower2FPikachuText:
	text "Pikachu: Pichuu!"
	done

BattleTower2FYoungsterText:
	text "To be strong is to"
	line "be weak."

	para "To be weak is to"
	line "be strong."

	para "Somebody told me"
	line "that before."

	para "I don't understand"
	line "it, but it sounds"
	cont "deep."
	done

BattleTower2FBlackbeltText:
	text "The karate gi is"
	line "the uniform of"
	cont "fighters!"

	para "There is nothing"
	line "better suited for"

	para "the Battle Tower"
	line "than this!"
	done
