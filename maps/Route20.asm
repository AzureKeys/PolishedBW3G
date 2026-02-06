Route20_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 39, 14, BGEVENT_ITEM + HP_UP, EVENT_ROUTE_20_HP_UP
	
	def_object_events
	object_event  9, 14, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM1R20, -1
	object_event 36, 16, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidM2R20, -1
	object_event 23,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM3R20, -1
	object_event 30, 21, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF1R20, -1
	object_event 21, 11, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF2R20, -1
	object_event 33,  9, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidF3R20, -1
	object_event 12,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerTwinsR20, -1
	object_event 13,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerTwinsR20, -1
	object_event 38,  9, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerNurseryAideR20, -1
	fruittree_event  6,  5, FRUITTREE_ROUTE_20, PECHA_BERRY, PAL_NPC_PINK
	itemball_event  7, 10, MAX_POTION, 1, EVENT_ROUTE_20_MAX_POTION
	itemball_event 18, 20, PP_MAX, 1, EVENT_ROUTE_20_PP_MAX
	itemball_event  6, 23, HEART_SCALE, 1, EVENT_ROUTE_20_HEART_SCALE
	
TrainerSchoolKidM1R20:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_R20_1, EVENT_BEAT_SCHOOL_KIDM_R20_1, .SeenText, .BeatenText

	text "By losing, you can"
	line "discover what your"
	cont "true strength is!"
	done
	
.SeenText:
	text "To me, the battle-"
	line "field is a place"
	cont "for learning!"
	done

.BeatenText:
	text "W-wait! I've got"
	line "to analyze this"
	cont "defeat!"
	done
	
TrainerSchoolKidM2R20:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_R20_2, EVENT_BEAT_SCHOOL_KIDM_R20_2, .SeenText, .BeatenText

	text "That's it! I'm"
	line "gonna become the"
	
	para "Champion, and then"
	line "I'll blow you out"
	cont "of the water!"
	done
	
.SeenText:
	text "Hey, you! You're"
	line "gonna lose and"
	cont "cry!"
	done

.BeatenText:
	text "…Grrr!"
	done
	
TrainerSchoolKidM3R20:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_R20_3, EVENT_BEAT_SCHOOL_KIDM_R20_3, .SeenText, .BeatenText

	text "What do you think"
	line "would happen if we"
	
	para "had our #mon"
	line "fight without any"
	cont "orders?"
	done
	
.SeenText:
	text "You look tough!"
	
	para "All right! My"
	line "#mon are burn-"
	cont "ing for a fight"
	
	para "against a tough"
	line "opponent!"
	done

.BeatenText:
	text "Arg! I wasn't able"
	line "to give good"
	cont "orders!"
	done
	
TrainerSchoolKidF1R20:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_R20_1, EVENT_BEAT_SCHOOL_KIDF_R20_1, .SeenText, .BeatenText

	text "Hmm… I wonder if I"
	line "would meet some"

	para "new #mon if I"
	line "went to the Ranch?"
	done
	
.SeenText:
	text "Is that a #dex?"

	para "I'd love it if you"
	line "would show me lots"
	
	para "of different kinds"
	line "of #mon!"
	done

.BeatenText:
	text "I've never seen a"
	line "#mon like that!"
	done
	
TrainerSchoolKidF2R20:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_R20_2, EVENT_BEAT_SCHOOL_KIDF_R20_2, .SeenText, .BeatenText

	text "When you let a"
	line "#mon evolve, it"
	
	para "will be stronger,"
	line "but if you don't"
	
	para "let it evolve, it"
	line "will learn moves"
	cont "quicker."
	done
	
.SeenText:
	text "Hi, hi! Trainer!"
	line "Please show me"
	
	para "what kinds of"
	line "#mon you are"
	cont "training!"
	done

.BeatenText:
	text "Great, great! I"
	line "didn't know that"
	
	para "way to raise #-"
	line "mon!"
	done
	
TrainerSchoolKidF3R20:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_R20_3, EVENT_BEAT_SCHOOL_KIDF_R20_3, .SeenText, .BeatenText

	text "…It's okay. My"
	line "precious #mon"

	para "will make me feel"
	line "better when we get"
	cont "home."
	done
	
.SeenText:
	text "Ta-da! Here's my"
	line "cute #mon!"
	done

.BeatenText:
	text "Oh maaaan!"
	done
	
TrainerTwinsR20:
	generictrainer TWINS, TWINS_R20, EVENT_BEAT_TWINS_R20, .SeenText, .BeatenText

	text "Even though we"
	line "look the same, our"
	
	para "parents can always"
	line "tell us apart!"
	done
	
.SeenText:
	text "The two of us make"
	line "an amazing"
	cont "combination!"
	
	para "Let's battle!"
	done

.BeatenText:
	text "Our amazing"
	line "combination…"
	done
	
TrainerNurseryAideR20:
	generictrainer NURSERY_AIDE, NURSERY_AIDE_R20, EVENT_BEAT_NURSERY_AIDE_R20, .SeenText, .BeatenText

	text "Every day is full"
	line "of amazing, new"
	
	para "discoveries when"
	line "I'm with children"
	cont "and #mon!"
	done
	
.SeenText:
	text "I always give it"
	line "my best when I'm"

	para "around kids and"
	line "#mon!"
	done

.BeatenText:
	text "Oh no! I'm not"
	line "being a very good"
	
	para "example to the"
	line "kids, am I?"
	done
	