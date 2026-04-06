Route21_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerM1R21, -1
	object_event 13, 24, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerM2R21, -1
	object_event  5, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerM3R21, -1
	object_event  4,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerSwimmerF1R21, -1
	object_event 18, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerF2R21, -1
	object_event  3, 20, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerF3R21, -1
	object_event 15, 46, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerBlackbeltR21, -1
	itemball_event  9,  7, BIG_PEARL, 1, EVENT_ROUTE_21_BIG_PEARL
	itemball_event 10, 36, HP_UP, 1, EVENT_ROUTE_21_HP_UP
	itemball_event 19, 35, LURE_BALL, 3, EVENT_ROUTE_21_LURE_BALL
	
TrainerSwimmerM1R21:
	generictrainer SWIMMERM, SWIMMERM_R21_1, EVENT_BEAT_SWIMMERM_R21_1, .SeenText, .BeatenText

	text "They say that"
	line "Marlon can stay in"
	
	para "the ocean for"
	line "seven days and"
	cont "seven nights!"
	done
	
.SeenText:
	text "I trained with"
	line "Marlon, the gym"
	
	para "leader of Humilau"
	line "City!"
	done

.BeatenText:
	text "I still have room"
	line "to improve!"
	done
	
TrainerSwimmerM2R21:
	generictrainer SWIMMERM_D, SWIMMERM_R21_2, EVENT_BEAT_SWIMMERM_R21_2, .SeenText, .BeatenText

	text "When floating in"
	line "the water, keep"

	para "moving to keep"
	line "yourself limber!"
	done
	
.SeenText:
	text "It is said that"
	line "water will not"
	
	para "grow stagnant as"
	line "long as it keeps"
	cont "flowing…"
	
	para "So as long as I"
	line "keep moving on…"
	done

.BeatenText:
	text "Looks like I've"
	line "gotten stagnant…"
	done
	
TrainerSwimmerM3R21:
	generictrainer SWIMMERM_D, SWIMMERM_R21_3, EVENT_BEAT_SWIMMERM_R21_3, .SeenText, .BeatenText

	text "Big things are"
	line "awesome! Why?"
	
	para "Because they're"
	line "big!"
	done
	
.SeenText:
	text "You see this enor-"
	line "mous puddle? They"
	cont "call it an ocean!"
	done

.BeatenText:
	text "Woah! You're"
	line "enormous too!"
	done
	
TrainerSwimmerF1R21:
	generictrainer SWIMMERF, SWIMMERF_R21_1, EVENT_BEAT_SWIMMERF_R21_1, .SeenText, .BeatenText

	text "All #mon have"
	line "their own"
	
	para "strengths. I've"
	line "got to learn more"
	
	para "about the"
	line "strengths of my"
	cont "own #mon!"
	done
	
.SeenText:
	text "The thing about"
	line "water is that it's"
	cont "always changing…"

	para "From the piercing"
	line "strength of a jet,"
	
	para "to the crushing"
	line "power of a wave…"
	
	para "That's what I'm"
	line "about to show you!"
	done

.BeatenText:
	text "You're just as"
	line "strong, perhaps"
	cont "even stronger!"
	done
	
TrainerSwimmerF2R21:
	generictrainer SWIMMERF, SWIMMERF_R21_2, EVENT_BEAT_SWIMMERF_R21_2, .SeenText, .BeatenText

	text "Some #mon are"
	line "huge, but they can"
	
	para "still fit inside"
	line "a #ball!"
	done
	
.SeenText:
	text "Catch this! My"
	line "#mon is huge!"
	done

.BeatenText:
	text "Wow, you're even"
	line "more than I"
	cont "expected!"
	done
	
TrainerSwimmerF3R21:
	generictrainer SWIMMERF_D, SWIMMERF_R21_3, EVENT_BEAT_SWIMMERF_R21_3, .SeenText, .BeatenText

	text "I'm a girl with"
	line "everything…"
	
	para "Well, everything"
	line "but a place to put"
	cont "my #balls!"
	done
	
.SeenText:
	text "I learned all the"
	line "good points of my"
	
	para "water type #mon"
	line "by swimming with"
	cont "them!"
	done

.BeatenText:
	text "What a fresh"
	line "trainer! Really,"
	cont "really fresh!"
	done
	
TrainerBlackbeltR21:
	generictrainer BLACKBELT_T, BLACKBELT_R21, EVENT_BEAT_BLACKBELT_R21, .SeenText, .BeatenText

	text "I'm training to"
	line "not be fooled by"
	
	para "the swimming"
	line "ladies… I'm not"
	
	para "just looking at"
	line "them!"
	done
	
.SeenText:
	text "Hi-yah! Hi-yah!"
	line "I'm practicing my"
	
	para "punching technique"
	line "in front of the"
	
	para "sea! Give it a"
	line "try!"
	done

.BeatenText:
	text "I won't stop"
	line "punching just"
	cont "because I lost!"
	done
	