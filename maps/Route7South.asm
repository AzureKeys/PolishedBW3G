Route7South_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 27, ROUTE_7_RAZOR_CLAW_HOUSE, 1
	warp_event 10,  5, CELESTIAL_TOWER_1F, 1
	warp_event  9, 27, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event 21, 49, BGEVENT_JUMPTEXT, Route7SignText
	bg_event  9,  7, BGEVENT_JUMPTEXT, Route7TowerSignText
	bg_event  9, 27, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_7
	bg_event 10, 27, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_7
	
	def_object_events
	object_event  4, 39, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPkmnBreederMR7, -1
	object_event  9, 45, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederFR7, -1
	object_event 18, 27, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerNurseryAideR7, -1
	object_event 16, 13, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 3, TrainerSchoolKidMR7, -1
	object_event 13, 19, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerSchoolKidFR7, -1
	object_event 16, 37, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route7SouthAmoongussScript, EVENT_ROUTE_7_AMOONGUSS_1
	object_event  7, 10, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, Route7SouthAmoongussScript, EVENT_ROUTE_7_AMOONGUSS_2
	itemball_event  8, 18, ULTRA_BALL, 3, EVENT_ROUTE_7_SOUTH_ULTRA_BALL
	itemball_event 23, 10, PP_UP, 1, EVENT_ROUTE_7_SOUTH_PP_UP
	itemball_event 17, 36, MAX_ETHER, 1, EVENT_ROUTE_7_SOUTH_MAX_ETHER
	fruittree_event 18, 24, FRUITTREE_ROUTE_7, ASPEAR_BERRY, PAL_NPC_BROWN
	
Route7SouthAmoongussScript:
	cry AMOONGUSS
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end
	
TrainerPkmnBreederMR7:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R7, EVENT_BEAT_PKMN_BREEDERM_R7, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R7
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "I have a request"
	line "for you! Please"
	cont "battle me!"
	done
	
.BeatenText:
	text "I'm happy my #-"
	line "mon got some good"
	cont "experience."
	done
	
.AfterText:
	text "Battling you was a"
	line "truly meaningful"
	cont "experience!"
	
	para "Please, if you"
	line "wish to battle"
	
	para "again, come and"
	line "talk to me!"
	done
	
TrainerPkmnBreederFR7:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R7, EVENT_BEAT_PKMN_BREEDERF_R7, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R7
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "I'm proud of my"
	line "#mon, which I"
	
	para "raised with love"
	line "and care!"
	done
	
.BeatenText:
	text "Looks like I lost"
	line "to you in the"
	
	para "love and care"
	line "department!"
	done
	
.AfterText:
	text "If you don't raise"
	line "your #mon with"
	
	para "love and care,"
	line "they'll grow up to"
	cont "be sad!"
	
	para "Come and see me if"
	line "you'd like to"
	cont "battle again!"
	done
	
TrainerNurseryAideR7:
	generictrainer NURSERY_AIDE, NURSERY_AIDE_R7, EVENT_BEAT_NURSERY_AIDE_R7, .SeenText, .BeatenText

	text "Everyone loves"
	line "playing hide-and-"
	
	para "seek… I have"
	line "trouble finding"
	cont "them!"
	done
	
.SeenText:
	text "Well, well, well…"
	line "If it isn't a lost"
	cont "#mon!"
	done

.BeatenText:
	text "Sorry! I mistook"
	line "you for a #mon!"
	done
	
TrainerSchoolKidMR7:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_R7, EVENT_BEAT_SCHOOL_KIDM_R7, .SeenText, .BeatenText

	text "To have so easily"
	line "emerged from a"
	
	para "battle… You're"
	line "cool! Too cool,"
	cont "in fact!"
	done
	
.SeenText:
	text "Can you keep up"
	line "without having"
	cont "your head spin?"
	done

.BeatenText:
	text "Oh… My head is"
	line "spinning…"
	done
	
TrainerSchoolKidFR7:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_R7, EVENT_BEAT_SCHOOL_KIDF_R7, .SeenText, .BeatenText

	text "Losing a battle is"
	line "so draining. I"
	
	para "feel really bummed"
	line "out."
	done
	
.SeenText:
	text "My victory is"
	line "coming into view!"
	done

.BeatenText:
	text "Ahh, how could I"
	line "possibly lose?"
	done
	
Route7SignText:
	text "Route 7."
	line "North to"
	cont "Celestial Tower."
	done
	
Route7TowerSignText:
	text "Celestial Tower."
	
	para "Purify your"
	line "spirit."
	done
	