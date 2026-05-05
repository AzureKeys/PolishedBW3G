TwistMountain3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  2, TWIST_MOUNTAIN_2F, 9
	warp_event 27,  9, TWIST_MOUNTAIN_2F, 10
	warp_event 11,  7, TWIST_MOUNTAIN_OUTSIDE, 12
	warp_event 19,  3, TWIST_MOUNTAIN_OUTSIDE, 13
	warp_event  5, 19, TWIST_MOUNTAIN_OUTSIDE, 14
	warp_event 13, 17, TWIST_MOUNTAIN_OUTSIDE, 15
	warp_event 17, 11, TWIST_MOUNTAIN_OUTSIDE, 16

	def_coord_events

	def_bg_events
	bg_event 19, 25, BGEVENT_ITEM + CALCIUM, EVENT_TWIST_MOUNTAIN_3F_CALCIUM
	
	def_object_events
	object_event 28,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerWorker1TwistMountain3F, -1
	object_event  9, 23, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerWorker2TwistMountain3F, -1
	object_event 19, 16, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranFTwistMountain3F, -1
	itemball_event 35,  4, MOON_STONE, 1, EVENT_TWIST_MOUNTAIN_3F_MOON_STONE
	
TrainerWorker1TwistMountain3F:
	generictrainer WORKER, WORKER_TWIST_MOUNTAIN_2, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_2, .SeenText, .BeatenText

	text "This man likes"
	line "winter. Winter on"
	cont "Twist Mountain…"
	
	para "It has an indesc-"
	line "ribable beauty."
	done
	
.SeenText:
	text "Twist Mountain has"
	line "changed over the"
	
	para "years, and this"
	line "man changes in"
	cont "every battle!"
	done

.BeatenText:
	text "Go easy on… This"
	line "grown man?"
	done
	
TrainerWorker2TwistMountain3F:
	generictrainer WORKER, WORKER_TWIST_MOUNTAIN_3, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_3, .SeenText, .BeatenText

	text "This worker is"
	line "happy to have a"
	
	para "job that lets him"
	line "be with his"
	cont "favorite #mon!"
	done
	
.SeenText:
	text "Let's see you take"
	line "a powerful attack"
	
	para "from veteran"
	line "Workers like us!"
	done

.BeatenText:
	text "We've trained by"
	line "doing physical"
	
	para "work, so even if"
	line "we lose, we're"
	cont "still powerful!"
	done
	
TrainerVeteranFTwistMountain3F:
	generictrainer VETERANF, VETERANF_TWIST_MOUNTAIN_1, EVENT_BEAT_VETERANF_TWIST_MOUNTAIN_1, .SeenText, .BeatenText

	text "Thank you… With"
	line "our battle, my"
	
	para "eyes have been"
	line "opened. Being"
	
	para "number one of"
	line "Twist Mountain is"
	
	para "only a stepping"
	line "stone on my"
	cont "journey!"
	done
	
.SeenText:
	text "Twist Mountain's"
	line "number one"
	
	para "tactician! That's"
	line "me!"
	done

.BeatenText:
	text "Maybe I shouldn't"
	line "be satisfied with"
	
	para "being number one"
	line "only on Twist"
	cont "Mountain…"
	done
