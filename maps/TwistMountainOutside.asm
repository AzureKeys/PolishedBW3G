TwistMountainOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 27, TWIST_MOUNTAIN_ENTRANCE, 2
	warp_event 29, 13, TWIST_MOUNTAIN_1F, 2
	warp_event 31, 23, TWIST_MOUNTAIN_1F, 3
	warp_event 17, 13, TWIST_MOUNTAIN_1F, 4
	warp_event 19, 23, TWIST_MOUNTAIN_1F, 5
	warp_event 15,  7, TWIST_MOUNTAIN_2F, 3
	warp_event 25,  9, TWIST_MOUNTAIN_2F, 4
	warp_event 31,  7, TWIST_MOUNTAIN_2F, 5
	warp_event  6, 13, TWIST_MOUNTAIN_2F, 6
	warp_event 10, 23, TWIST_MOUNTAIN_2F, 7
	warp_event 31, 27, TWIST_MOUNTAIN_2F, 8
	warp_event 29,  1, TWIST_MOUNTAIN_3F, 3
	warp_event 37,  7, TWIST_MOUNTAIN_3F, 4
	warp_event 25, 35, TWIST_MOUNTAIN_3F, 5
	warp_event 37, 33, TWIST_MOUNTAIN_3F, 6
	warp_event 43, 19, TWIST_MOUNTAIN_3F, 7
	warp_event 14, 19, TWIST_MOUNTAIN_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 12, 20, BGEVENT_ITEM + FULL_RESTORE, EVENT_TWIST_MOUNTAIN_OUTSIDE_FULL_RESTORE_2
	
	def_object_events
	object_event 34, 24, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 0, TrainerNurseTwistMountainOutside, -1
	object_event  9, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerWorkerTwistMountainOutside, -1
	object_event 41, 14, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHikerTwistMountainOutside, -1
	object_event 38, 29, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranMTwistMountainOutside, -1
	itemball_event 30, 32, ULTRA_BALL, 5, EVENT_TWIST_MOUNTAIN_OUTSIDE_ULTRA_BALL
	itemball_event  9, 18, GREEN_SHARD, 1, EVENT_TWIST_MOUNTAIN_OUTSIDE_GREEN_SHARD
	itemball_event 19, 27, YELLOW_SHARD, 1, EVENT_TWIST_MOUNTAIN_OUTSIDE_YELLOW_SHARD
	itemball_event 30,  9, ETHER, 3, EVENT_TWIST_MOUNTAIN_OUTSIDE_ETHER
	itemball_event 36, 22, FULL_RESTORE, 3, EVENT_TWIST_MOUNTAIN_OUTSIDE_FULL_RESTORE
	itemball_event 40, 26, ROCKY_HELMET, 1, EVENT_TWIST_MOUNTAIN_OUTSIDE_ROCKY_HELMET
	
TrainerNurseTwistMountainOutside:
	trainer NURSE, NURSE_TWIST_MOUNTAIN, EVENT_BEAT_NURSE_TWIST_MOUNTAIN, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerWorkerTwistMountainOutside:
	generictrainer WORKER, WORKER_TWIST_MOUNTAIN_1, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_1, .SeenText, .BeatenText

	text "Like my #mon, I"
	line "always want to"
	
	para "take the same"
	line "route. I wonder"
	cont "why that is?"
	done
	
.SeenText:
	text "I've found a"
	line "strong looking"
	
	para "trainer during my"
	line "patrol! Go, my"
	cont "#mon!"
	done

.BeatenText:
	text "It's just as I"
	line "thought! A"
	
	para "monstrously strong"
	line "trainer!"
	done
	
TrainerHikerTwistMountainOutside:
	generictrainer HIKER_D, HIKER_TWIST_MOUNTAIN_2, EVENT_BEAT_HIKER_TWIST_MOUNTAIN_2, .SeenText, .BeatenText

	text "The more you"
	line "fight, the"
	
	para "stronger you'll"
	line "be. The more you"
	
	para "dig, the bigger"
	line "the hole will be…"
	
	para "If you have a"
	line "purpose, there's"
	cont "no wasted effort!"
	done
	
.SeenText:
	text "Why do I dig? Why"
	line "do you fight?"
	done

.BeatenText:
	text "Your past"
	line "experience…"
	
	para "Is that the source"
	line "of your strength?"
	done
	
TrainerVeteranMTwistMountainOutside:
	generictrainer VETERANM, VETERANM_TWIST_MOUNTAIN_1, EVENT_BEAT_VETERANM_TWIST_MOUNTAIN_1, .SeenText, .BeatenText

	text "I'm going to train"
	line "my #mon"
	
	para "properly and make"
	line "sure they grow"
	cont "balanced."
	
	para "Bwahaha! It's the"
	line "challenges that"
	
	para "make life worth"
	line "living, whatever"
	cont "your age!"
	done
	
.SeenText:
	text "OK! I will show"
	line "you the results of"
	cont "my daily workouts!"
	done

.BeatenText:
	text "Was my training"
	line "too unbalanced?"
	done
