TwistMountain1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 29, 11, ICIRRUS_CITY_SOUTH, 3
	warp_event 23, 17, TWIST_MOUNTAIN_OUTSIDE, 2
	warp_event 21, 25, TWIST_MOUNTAIN_OUTSIDE, 3
	warp_event  3, 31, TWIST_MOUNTAIN_OUTSIDE, 4
	warp_event  3,  7, TWIST_MOUNTAIN_OUTSIDE, 5
	warp_event 17,  3, TWIST_MOUNTAIN_2F, 1
	warp_event 13, 21, TWIST_MOUNTAIN_2F, 2
	warp_event  9,  3, TWIST_MOUNTAIN_B1F, 1

	def_coord_events

	def_bg_events
	bg_event 18, 10, BGEVENT_ITEM + BIG_PEARL, EVENT_TWIST_MOUNTAIN_1F_BIG_PEARL
	
	def_object_events
	object_event  9, 19, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerWorkerTwistMountain1F, -1
	object_event 23, 24, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranMTwistMountain1F, -1
	itemball_event  2, 21, RED_SHARD, 1, EVENT_TWIST_MOUNTAIN_1F_RED_SHARD
	itemball_event 28, 26, NUGGET, 1, EVENT_TWIST_MOUNTAIN_1F_NUGGET
	
TrainerWorkerTwistMountain1F:
	generictrainer WORKER, WORKER_TWIST_MOUNTAIN_5, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_5, .SeenText, .BeatenText

	text "Twist Mountain is"
	line "cold all year"
	
	para "round! It's a great"
	line "place for ice type"
	
	para "#mon that are"
	line "happy in the"
	cont "depths of winter!"
	done
	
.SeenText:
	text "Check out the"
	line "combination of my"
	
	para "cool #mon and"
	line "my hot fighting"
	cont "spirit!"
	done

.BeatenText:
	text "It looks like you"
	line "also have a hot-"
	cont "and-cool"
	cont "combination!"
	done
	
TrainerVeteranMTwistMountain1F:
	generictrainer VETERANM, VETERANM_TWIST_MOUNTAIN_2, EVENT_BEAT_VETERANM_TWIST_MOUNTAIN_2, .SeenText, .BeatenText

	text "Perhaps I should"
	line "think about"
	
	para "changing the envi-"
	line "ronment where we"
	cont "train…"
	done
	
.SeenText:
	text "I come here every"
	line "year to train. The"
	
	para "cold, harsh envi-"
	line "ronment really"
	
	para "brings out a #-"
	line "mon's strength!"
	done

.BeatenText:
	text "How harsh…"
	done
