NacreneOutskirt_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 12, PINWHEEL_FOREST, 2
	warp_event  3, 13, PINWHEEL_FOREST, 3

	def_coord_events

	def_bg_events
	bg_event 15,  8, BGEVENT_JUMPTEXT, NacreneOutskirtSignText
	
	def_object_events
	object_event  6, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 3, TrainerYoungsterNacrene, -1
	object_event 15, 33, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerLassNacrene, -1
	object_event  5, 38, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerParasolLadyNacrene, -1
	object_event 18, 44, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerRichBoyNacrene, -1
	object_event  9,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneOutskirtYoungsterText, -1
	itemball_event 13, 48, FULL_HEAL, 3, EVENT_NACRENE_OUTSKIRT_FULL_HEAL
	itemball_event 13, 19, IRON, 1, EVENT_NACRENE_OUTSKIRT_IRON
	itemball_event  8, 32, NUGGET, 1, EVENT_NACRENE_OUTSKIRT_NUGGET
	itemball_event 17, 28, PP_MAX, 1, EVENT_NACRENE_OUTSKIRT_PP_MAX
	
TrainerYoungsterNacrene:
	generictrainer YOUNGSTER_D, YOUNGSTER_NACRENE_OUTSKIRT, EVENT_BEAT_YOUNGSTER_NACRENE, .SeenText, .BeatenText

	text "I ran around a"
	line "ton today!"
	done
	
.SeenText:
	text "I'm just gonna run"
	line "around! I've got"
	
	para "the whole field to"
	line "myself!"
	done

.BeatenText:
	text "I know… I shouldn't"
	line "take it all for"
	cont "myself…"
	done
	
TrainerLassNacrene:
	generictrainer LASS, LASS_NACRENE_OUTSKIRT, EVENT_BEAT_LASS_NACRENE, .SeenText, .BeatenText

	text "I've been thinking"
	line "lately. Even if I"
	
	para "were separated"
	line "from my #mon,"
	
	para "would they choose"
	line "me as their"
	cont "trainer again…?"
	done
	
.SeenText:
	text "Hey, trainer! Let's"
	line "have a refreshing"
	
	para "battle and blow"
	line "away all my"
	cont "troubles!"
	done

.BeatenText:
	text "You guys feel like"
	line "an unbeatable"
	cont "combination!"
	done
	
TrainerParasolLadyNacrene:
	generictrainer PARASOL_LADY, PARASOL_LADY_NACRENE_OUTSKIRT, EVENT_BEAT_PARASOL_LADY_NACRENE, .SeenText, .BeatenText

	text "I heard a parasol"
	line "is great… But I'm"
	
	para "the only one who"
	line "has one?"
	done
	
.SeenText:
	text "A woman standing"
	line "alone with a para-"
	cont "sol in one hand…"
	
	para "Hi… Please have a"
	line "battle with me."
	done

.BeatenText:
	text "The parasol can't"
	line "block defeat…"
	done
	
TrainerRichBoyNacrene:
	generictrainer RICH_BOY, RICH_BOY_NACRENE_OUTSKIRT, EVENT_BEAT_RICH_BOY_NACRENE, .SeenText, .BeatenText

	text "A true VIP exper-"
	line "ience is one where"
	
	para "you can truly see"
	line "the battle up"
	cont "close!"
	done
	
.SeenText:
	text "Are you ready to"
	line "experience a VIP"
	
	para "#mon battle"
	line "performance?"
	done

.BeatenText:
	text "My performance"
	line "wasn't up to VIP"
	cont "standards…"
	done
	
NacreneOutskirtYoungsterText:
	text "There are cops in"
	line "the forest. They"
	
	para "wouldn't let me"
	line "through!"
	done

NacreneOutskirtSignText:
	text "West to Pinwheel"
	line "Forest."
	
	para "Stay on the road!"
	done
	