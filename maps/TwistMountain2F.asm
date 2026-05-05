TwistMountain2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37,  1, TWIST_MOUNTAIN_1F, 6
	warp_event  5,  1, TWIST_MOUNTAIN_1F, 7
	warp_event  5, 13, TWIST_MOUNTAIN_OUTSIDE, 6
	warp_event 13, 13, TWIST_MOUNTAIN_OUTSIDE, 7
	warp_event 37, 13, TWIST_MOUNTAIN_OUTSIDE, 8
	warp_event 15, 21, TWIST_MOUNTAIN_OUTSIDE, 9
	warp_event 17, 29, TWIST_MOUNTAIN_OUTSIDE, 10
	warp_event 25, 25, TWIST_MOUNTAIN_OUTSIDE, 11
	warp_event 17,  3, TWIST_MOUNTAIN_3F, 1
	warp_event 31, 19, TWIST_MOUNTAIN_3F, 2
	warp_event 31,  1, TWIST_MOUNTAIN_GENESECT_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event 28, 31, BGEVENT_ITEM + MAX_REVIVE, EVENT_TWIST_MOUNTAIN_2F_MAX_REVIVE
	bg_event  9, 24, BGEVENT_ITEM + MAX_POTION, EVENT_TWIST_MOUNTAIN_2F_MAX_POTION
	bg_event  2, 11, BGEVENT_ITEM + CARBOS, EVENT_TWIST_MOUNTAIN_2F_CARBOS
	
	def_object_events
	object_event 29, 26, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerWorkerTwistMountain2F, -1
	object_event  4,  9, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerHikerTwistMountain2F, -1
	object_event  5, 20, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranFTwistMountain2F, -1
	itemball_event  2, 31, BIG_PEARL, 1, EVENT_TWIST_MOUNTAIN_2F_BIG_PEARL
	itemball_event 19, 10, RARE_CANDY, 1, EVENT_TWIST_MOUNTAIN_2F_RARE_CANDY
	itemball_event  2, 20, PP_UP, 1, EVENT_TWIST_MOUNTAIN_2F_PP_UP
	
TrainerWorkerTwistMountain2F:
	generictrainer WORKER, WORKER_TWIST_MOUNTAIN_4, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_4, .SeenText, .BeatenText

	text "You can feel my"
	line "face if you don't"
	
	para "believe me. See?"
	line "Dripping with"
	cont "sweat!"
	done
	
.SeenText:
	text "Hold up there,"
	line "youngster!"
	
	para "A battle will help"
	line "you warm up!"
	done

.BeatenText:
	text "Ha! Battling gets"
	line "me so warm, I've"
	cont "started sweating!"
	done
	
TrainerHikerTwistMountain2F:
	generictrainer HIKER, HIKER_TWIST_MOUNTAIN_1, EVENT_BEAT_HIKER_TWIST_MOUNTAIN_1, .SeenText, .BeatenText

	text "My spirits rise"
	line "and fall. I'm just"
	cont "charmingly"
	cont "unpredictable!"
	done
	
.SeenText:
	text "When I'm surrounded"
	line "by rocks, my"
	cont "spirit goes up!"
	done

.BeatenText:
	text "When I lose, my"
	line "spirits sink…"
	done
	
TrainerVeteranFTwistMountain2F:
	generictrainer VETERANF, VETERANF_TWIST_MOUNTAIN_2, EVENT_BEAT_VETERANF_TWIST_MOUNTAIN_2, .SeenText, .BeatenText

	text "I used to train"
	line "under Grimsley."
	
	para "I'm sure he would"
	line "have known what"
	
	para "the right move"
	line "would have been."
	done
	
.SeenText:
	text "In battles, it's"
	line "also important to"
	
	para "know what moves"
	line "not to make."
	done

.BeatenText:
	text "I've been training"
	line "for years now, but"
	
	para "it's still not"
	line "enough…"
	done
