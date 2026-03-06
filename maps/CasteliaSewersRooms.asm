CasteliaSewersRooms_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, CASTELIA_SEWERS, 2
	warp_event  3,  5, CASTELIA_SEWERS, 2
	warp_event 12,  5, CASTELIA_SEWERS, 3
	warp_event 13,  5, CASTELIA_SEWERS, 3
	warp_event 26,  5, CASTELIA_SEWERS, 4
	warp_event 27,  5, CASTELIA_SEWERS, 4
	warp_event 18, 17, CASTELIA_SEWERS, 5
	warp_event 19, 17, CASTELIA_SEWERS, 5
	warp_event  7, 11, CASTELIA_SEWERS, 6

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event 28,  1, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event  2, 11, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event 17, 11, BGEVENT_ITEM + BIG_PEARL, EVENT_CASTELIA_SEWERS_ROOMS_BIG_PEARL
	
	def_object_events
	object_event  1,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerWorkerCasteliaSewersRooms, -1
	object_event  3, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_GENERICTRAINER, 2, TrainerJanitorCasteliaSewersRooms, -1
	
CasteliaSewersWaterToggleScript:
	opentext
	writethistext
	text "There's a switch."
	line "Press it?"
	done
	promptbutton
	yesorno
	iffalsefwd .done
	playsound SFX_SURF
	writethistext
	text "Sounds like a lot"
	line "of rushing water."
	done
	promptbutton
	waitsfx
	checkevent EVENT_CASTELIA_SEWERS_WATER_RAISED
	iftruefwd .lower
	setevent EVENT_CASTELIA_SEWERS_WATER_RAISED
	sjumpfwd .done
.lower
	clearevent EVENT_CASTELIA_SEWERS_WATER_RAISED
.done
	closetext
	end
	
TrainerWorkerCasteliaSewersRooms:
	generictrainer WORKER, WORKER_CASTELIA_SEWERS_3, EVENT_BEAT_WORKER_CASTELIA_SEWERS_3, .SeenText, .BeatenText

	text "Isn't it fun how"
	line "shouting in a"
	
	para "sewer tunnel makes"
	line "your voice echo?"
	done
	
.SeenText:
	text "Whoooa!"
	done

.BeatenText:
	text "I looost!"
	done
	
TrainerJanitorCasteliaSewersRooms:
	generictrainer JANITOR, JANITOR_CASTELIA_SEWERS_3, EVENT_BEAT_JANITOR_CASTELIA_SEWERS_3, .SeenText, .BeatenText

	text "You need to use"
	line "the machines to"

	para "flood or empty the"
	line "sewers if you want"
	cont "to get through."
	done
	
.SeenText:
	text "Do you know how to"
	line "get through the"
	cont "sewers?"
	done

.BeatenText:
	text "I can't win!"
	done
