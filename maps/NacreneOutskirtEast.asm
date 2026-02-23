NacreneOutskirtEast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 17, 12, BGEVENT_ITEM + ULTRA_BALL, EVENT_NACRENE_OUTSKIRT_ULTRA_BALL
	bg_event 20, 10, BGEVENT_ITEM + MAX_ELIXIR, EVENT_NACRENE_OUTSKIRT_MAX_ELIXIR
	
	def_object_events
	object_event 17, 17, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerBlackbeltNacrene, -1
	object_event 21, 16, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBattleGirlNacrene, -1
	object_event -2, 20, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, -1 ; dummy trainer
	itemball_event -3,  4, PP_MAX, 1, EVENT_NACRENE_OUTSKIRT_PP_MAX ; dummy item
	
TrainerBlackbeltNacrene:
	generictrainer BLACKBELT_T, BLACKBELT_NACRENE_OUTSKIRT, EVENT_BEAT_BLACKBELT_NACRENE, .SeenText, .BeatenText

	text "I am a trainer who"
	line "fights as freely"
	
	para "as the clouds"
	line "drift in the sky!"
	done
	
.SeenText:
	text "I will read your"
	line "mind and predict"
	cont "your every move!"
	done

.BeatenText:
	text "Your moves… They"
	line "are entirely"
	cont "unpredictable!"
	done
	
TrainerBattleGirlNacrene:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_NACRENE_OUTSKIRT, EVENT_BEAT_BATTLE_GIRL_NACRENE, .SeenText, .BeatenText

	text "A flood of attacks"
	line "from #mon…"
	
	para "I know! Jetstream"
	line "Attack! Let's call"
	cont "it that!"
	done
	
.SeenText:
	text "Heh, I wonder what"
	line "would happen if I"
	
	para "had all my #mon"
	line "attack at once?"
	done

.BeatenText:
	text "I couldn't focus"
	line "on the target!"
	done
	