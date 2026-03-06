CasteliaSewers_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CasteliaSewersSetTiles
	callback MAPCALLBACK_STONETABLE, CasteliaSewersBoulderCallback

	def_warp_events
	warp_event 49, 10, CASTELIA_CITY_SOUTH, 15
	warp_event  9,  4, CASTELIA_SEWERS_ROOMS, 1
	warp_event  9, 10, CASTELIA_SEWERS_ROOMS, 3
	warp_event 19,  8, CASTELIA_SEWERS_ROOMS, 5
	warp_event 33,  8, CASTELIA_SEWERS_ROOMS, 7
	warp_event  5, 25, CASTELIA_SEWERS_ROOMS, 9
	warp_event 32,  2, CASTELIA_SEWERS, 1 ; hole
	warp_event 33,  0, RELIC_PASSAGE_FRONT, 1

	def_coord_events

	def_bg_events
	bg_event 17, 27, BGEVENT_ITEM + MAX_REPEL, EVENT_CASTELIA_SEWERS_MAX_REPEL
	bg_event 32, 28, BGEVENT_ITEM + NUGGET, EVENT_CASTELIA_SEWERS_NUGGET
	
	def_object_events
	strengthboulder_event 36,  2, EVENT_CASTELIA_SEWERS_BOULDER
	strengthboulder_event 13,  3, -1
	object_event 33,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaSewersBlockerText, EVENT_CASTELIA_SEWERS_BLOCKER
	object_event  0,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMCasteliaSewers, -1
	object_event 17, 10, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerScientistFCasteliaSewers, -1
	object_event 42, 11, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerWorker1CasteliaSewers, -1
	object_event 20, 19, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerWorker2CasteliaSewers, -1
	object_event 40, 21, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_GENERICTRAINER, 2, TrainerJanitor1CasteliaSewers, -1
	object_event 21, 25, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_GENERICTRAINER, 3, TrainerJanitor2CasteliaSewers, -1
	object_event 21, 33, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_GENERICTRAINER, 2, TrainerJanitor3CasteliaSewers, -1
	itemball_event  7, 17, X_SP_ATK, 1, EVENT_CASTELIA_SEWERS_X_SP_ATK
	itemball_event 29, 33, X_SP_DEF, 1, EVENT_CASTELIA_SEWERS_X_SP_DEF
	itemball_event 30, 17, PEARL, 1, EVENT_CASTELIA_SEWERS_PEARL
	itemball_event 33, 34, FOCUS_SASH, 1, EVENT_CASTELIA_SEWERS_FOCUS_SASH
	itemball_event 11, 40, HEART_SCALE, 1, EVENT_CASTELIA_SEWERS_HEART_SCALE
	tmhmball_event 15,  1, TM_SLUDGE_BOMB, EVENT_CASTELIA_SEWERS_TM_SLUDGE_BOMB
	tmhmball_event 41, 31, HM_STRENGTH, EVENT_CASTELIA_SEWERS_HM_STRENGTH
	
	object_const_def
	const CASTELIASEWERS_BOULDER
	
CasteliaSewersSetTiles:
	checkevent EVENT_CASTELIA_SEWERS_BOULDER
	iffalsefwd .CheckWater
	changeblock 32,  2, $b0
.CheckWater
	checkevent EVENT_CASTELIA_SEWERS_WATER_RAISED
	iffalse .done
	
	changeblock  4,  8, $91 ; water
	changeblock  4, 10, $91 ; water
	changeblock  4, 12, $91 ; water
	changeblock  4, 14, $91 ; water
	changeblock  4, 16, $91 ; water
	changeblock  4, 18, $91 ; water
	changeblock  4, 20, $91 ; water
	changeblock  4, 22, $91 ; water
	changeblock 12,  8, $91 ; water
	changeblock 12, 14, $91 ; water
	changeblock 14, 16, $91 ; water
	changeblock 14, 18, $91 ; water
	changeblock 14, 22, $91 ; water
	changeblock 14, 26, $91 ; water
	changeblock 18, 12, $91 ; water
	changeblock 18, 14, $91 ; water
	changeblock 20, 12, $91 ; water
	changeblock 20, 14, $91 ; water
	changeblock 30, 14, $91 ; water
	changeblock 32, 14, $91 ; water
	changeblock 26, 18, $91 ; water
	changeblock 26, 22, $91 ; water
	changeblock 26, 24, $91 ; water
	changeblock 26, 28, $91 ; water
	changeblock 28, 22, $91 ; water
	changeblock 30, 22, $91 ; water
	changeblock 32, 22, $91 ; water
	changeblock 34, 22, $91 ; water
	changeblock 36, 22, $91 ; water
	changeblock 36, 26, $91 ; water
	changeblock 36, 28, $91 ; water
	changeblock 36, 30, $91 ; water
	changeblock 38, 28, $91 ; water
	changeblock 38, 30, $91 ; water
	changeblock 40, 28, $91 ; water
	changeblock 36, 34, $91 ; water
	changeblock 36, 36, $91 ; water
	changeblock 36, 38, $91 ; water
	changeblock 36, 40, $91 ; water
	changeblock 26, 34, $91 ; water
	changeblock 26, 36, $91 ; water
	changeblock 26, 38, $91 ; water
	changeblock 26, 40, $91 ; water
	changeblock 14, 32, $91 ; water
	changeblock 14, 36, $91 ; water
	changeblock 14, 38, $91 ; water
	changeblock 14, 40, $91 ; water
	changeblock  8, 30, $91 ; water
	changeblock 10, 30, $91 ; water
	changeblock 12, 30, $91 ; water
	changeblock 14, 30, $91 ; water
	changeblock 16, 30, $91 ; water
	changeblock 18, 30, $91 ; water
	changeblock 20, 30, $91 ; water
	changeblock 22, 30, $91 ; water
	changeblock 24, 30, $91 ; water
	changeblock 26, 30, $91 ; water
	changeblock 28, 30, $91 ; water
	changeblock 30, 30, $91 ; water
	changeblock 32, 30, $91 ; water
	changeblock 36, 18, $91 ; water
	changeblock 36, 16, $91 ; water
	changeblock 38, 16, $91 ; water
	changeblock 36, 14, $91 ; water
	changeblock 36, 12, $91 ; water
	changeblock 36, 10, $91 ; water
	changeblock 36,  8, $91 ; water
	changeblock 36,  6, $91 ; water
	changeblock 36,  4, $91 ; water
	changeblock 38,  6, $91 ; water
	changeblock 42,  4, $91 ; water
	changeblock 42,  6, $91 ; water
	changeblock 42,  8, $91 ; water
	changeblock 44,  4, $91 ; water
	changeblock 44,  6, $91 ; water
	changeblock 46,  4, $91 ; water
	changeblock 46,  6, $91 ; water
	changeblock 50,  4, $91 ; water
	
	changeblock  6, 14, $92 ; wall top water l
	changeblock  6, 22, $92 ; wall top water l
	changeblock 16, 40, $92 ; wall top water l
	changeblock 28, 40, $92 ; wall top water l
	changeblock 38, 40, $92 ; wall top water l
	changeblock 14, 14, $92 ; wall top water l
	
	changeblock 24, 40, $93 ; wall top water r
	changeblock 34, 40, $93 ; wall top water r
	changeblock 28, 14, $93 ; wall top water r
	changeblock 10, 14, $93 ; wall top water r
	
	changeblock  8, 14, $96 ; wall top water
	changeblock  8, 22, $96 ; wall top water
	changeblock 10, 22, $96 ; wall top water
	changeblock 18, 22, $96 ; wall top water
	changeblock 20, 22, $96 ; wall top water
	changeblock 22, 22, $96 ; wall top water
	changeblock 26, 14, $96 ; wall top water
	changeblock 30, 12, $96 ; wall top water
	changeblock 18, 40, $96 ; wall top water
	changeblock 20, 40, $96 ; wall top water
	changeblock 22, 40, $96 ; wall top water
	changeblock 30, 40, $96 ; wall top water
	changeblock 32, 40, $96 ; wall top water
	changeblock 40, 40, $96 ; wall top water
	
	changeblock 12, 10, $97 ; water with gate
	changeblock 14, 20, $97 ; water with gate
	changeblock 14, 28, $97 ; water with gate
	changeblock 26, 16, $97 ; water with gate
	changeblock 26, 20, $97 ; water with gate
	changeblock 26, 32, $97 ; water with gate
	changeblock 36, 20, $97 ; water with gate
	changeblock 36, 32, $97 ; water with gate
	
	changeblock 12, 12, $98 ; left-right bridge
	changeblock 14, 24, $98 ; left-right bridge
	changeblock 14, 34, $98 ; left-right bridge
	changeblock 26, 26, $98 ; left-right bridge
	changeblock 36, 24, $98 ; left-right bridge
	
	changeblock 12, 22, $99 ; up-down bridge
	changeblock 16, 14, $99 ; up-down bridge
	changeblock 16, 22, $99 ; up-down bridge
	changeblock 24, 22, $99 ; up-down bridge
	changeblock 40,  6, $99 ; up-down bridge
	changeblock 48,  4, $99 ; up-down bridge
	
	changeblock 34, 30, $9c ; wall right water
	changeblock 34, 14, $9c ; wall right water
	
	changeblock 38, 14, $9a ; up-right stairs water
	changeblock 38, 26, $9a ; up-right stairs water
	changeblock  4, 30, $9a ; up-right stairs water
	
	changeblock  6, 30, $9b ; up-left stairs water
	changeblock 24, 18, $9b ; up-left stairs water
	
	changeblock 32, 32, $4c ; floor
	
	changeblock 48,  6, $9d ; flooded stairs right
	changeblock 22, 12, $9d ; flooded stairs right
	
	changeblock 16, 12, $9e ; flooded stairs left
	changeblock 12, 26, $9e ; flooded stairs left
	changeblock 40,  4, $9e ; flooded stairs left
	changeblock 40,  8, $9e ; flooded stairs left
	
	changeblock 34, 18, $a0 ; flooded stairs left top
	changeblock 34, 20, $a1 ; flooded stairs left bottom
	
	changeblock  6, 32, $a2 ; flooded stairs top
	
	changeblock 28, 12, $9f ; flooded stairs left fixed
.done
	endcallback
	
CasteliaSewersBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 7, CASTELIASEWERS_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	disappear CASTELIASEWERS_BOULDER
	changeblock 32,  2, $b0
	refreshmap
	waitbutton
	closetext
	end
	
TrainerScientistMCasteliaSewers:
	generictrainer SCIENTISTM, SCIENTISTM_CASTELIA_SEWERS, EVENT_BEAT_SCIENTISTM_CASTELIA_SEWERS, .SeenText, .BeatenText

	text "There are machines"
	line "that let water in"
	cont "and out of the"
	cont "sewers."
	done
	
.SeenText:
	text "I'm studying the"
	line "environment here."
	done

.BeatenText:
	text "Oh! Too much data!"
	done
	
TrainerScientistFCasteliaSewers:
	generictrainer SCIENTISTF, SCIENTISTF_CASTELIA_SEWERS, EVENT_BEAT_SCIENTISTF_CASTELIA_SEWERS, .SeenText, .BeatenText

	text "I'm interested in"
	line "the drainage"
	cont "system down here."
	done
	
.SeenText:
	text "Hi, would you like"
	line "to assist in my"
	cont "research?"
	done

.BeatenText:
	text "Duly noted!"
	done
	
TrainerWorker1CasteliaSewers:
	generictrainer WORKER, WORKER_CASTELIA_SEWERS_1, EVENT_BEAT_WORKER_CASTELIA_SEWERS_1, .SeenText, .BeatenText

	text "Since we built"
	line "this sewer, all"

	para "kinds of #mon"
	line "have gathered."
	
	para "It's like there's"
	line "no boundary"
	
	para "between people and"
	line "#mon!"
	done
	
.SeenText:
	text "We need sewers,"
	line "but what about"
	cont "#mon?"
	done

.BeatenText:
	text "There appears to"
	line "no barrier between"
	
	para "you and your"
	line "#mon!"
	done
	
TrainerWorker2CasteliaSewers:
	generictrainer WORKER, WORKER_CASTELIA_SEWERS_2, EVENT_BEAT_WORKER_CASTELIA_SEWERS_2, .SeenText, .BeatenText

	text "The tunnel is"
	line "blocked by a"
	cont "boulder."

	para "You'll need a"
	line "special move to"
	cont "get past it."
	
	para "Maybe you can find"
	line "something like"
	cont "that in the"
	cont "sewers!"
	done
	
.SeenText:
	text "There's a tunnel"
	line "in the back of"
	cont "the sewers."

	para "If you can beat"
	line "me, I'll tell you"
	cont "how to get there."
	done

.BeatenText:
	text "Okay, I'll tell"
	line "you!"
	done
	
TrainerJanitor1CasteliaSewers:
	generictrainer JANITOR, JANITOR_CASTELIA_SEWERS_1, EVENT_BEAT_JANITOR_CASTELIA_SEWERS_1, .SeenText, .BeatenText

	text "When you clean, do"
	line "you ever feel like"
	
	para "it's never going"
	line "to end?"
	done
	
.SeenText:
	text "Cleaning actually"
	line "takes a lot of"
	cont "strength…"
	done

.BeatenText:
	text "Who cares about"
	line "losing! There's a"
	cont "spot over there!"
	done
	
TrainerJanitor2CasteliaSewers:
	generictrainer JANITOR, JANITOR_CASTELIA_SEWERS_2, EVENT_BEAT_JANITOR_CASTELIA_SEWERS_2, .SeenText, .BeatenText

	text "I sure love to"
	line "clean, and I can"
	
	para "clean forever down"
	line "here!"
	done
	
.SeenText:
	text "I've been training"
	line "real hard doing"
	cont "all this cleaning!"
	done

.BeatenText:
	text "I missed a spot!"
	done
	
TrainerJanitor3CasteliaSewers:
	generictrainer JANITOR, JANITOR_CASTELIA_SEWERS_4, EVENT_BEAT_JANITOR_CASTELIA_SEWERS_4, .SeenText, .BeatenText

	text "My boss is gonna"
	line "be upset…"
	done
	
.SeenText:
	text "Uh-oh, busted!"
	done

.BeatenText:
	text "Darn!"
	done
	
CasteliaSewersBlockerText:
	text "Hey buddy, there's"
	line "important stuff"
	cont "going on in here."

	para "Buzz off!"
	done
