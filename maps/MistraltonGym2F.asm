MistraltonGym2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, MistraltonGym2FFansCallback

	def_warp_events
	warp_event  8, 15, MISTRALTON_GYM_1F, 3 ; hole
	warp_event  3, 11, MISTRALTON_GYM_1F, 8 ; hole
	warp_event  7, 11, MISTRALTON_GYM_1F, 4 ; hole
	warp_event 11, 11, MISTRALTON_GYM_1F, 10 ; hole
	warp_event 13, 15, MISTRALTON_GYM_1F, 9 ; hole
	warp_event 14,  7, MISTRALTON_GYM_1F, 5 ; hole
	warp_event 15,  3, MISTRALTON_GYM_1F, 11 ; hole
	warp_event  6,  2, MISTRALTON_GYM_1F, 6 ; hole
	warp_event  5,  7, MISTRALTON_GYM_1F, 12 ; hole
	warp_event  9,  1, MISTRALTON_GYM_1F, 7 ; hole
	warp_event  8,  7, MISTRALTON_GYM_1F, 13 ; hole
	warp_event  9, 15, MISTRALTON_GYM_2F, 12 ; fan from 1F
	warp_event  6, 11, MISTRALTON_GYM_2F, 13 ; fan from 1F
	warp_event 15,  7, MISTRALTON_GYM_2F, 14 ; fan from 1F
	warp_event  6,  3, MISTRALTON_GYM_2F, 15 ; fan from 1F
	warp_event  8,  1, MISTRALTON_GYM_2F, 16 ; fan from 1F
	
	def_coord_events

	def_bg_events
	
	def_object_events
	strengthboulder_event 14, 11, SPRITE_FAN, EVENT_MISTRALTON_GYM_2F_FAN_1
	strengthboulder_event  5,  2, SPRITE_FAN, EVENT_MISTRALTON_GYM_2F_FAN_2
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPilot1MistraltonGym2F, -1
	object_event  2,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerPilot2MistraltonGym2F, -1
	
	object_const_def
	const MISTRALTONGYM2F_FAN_1
	const MISTRALTONGYM2F_FAN_2
	
MistraltonGym2FFansCallback:
	usestonetable .FansTable
	endcallback
	
.FansTable:
	stonetable 5, MISTRALTONGYM2F_FAN_1, .Disappear1
	stonetable 9, MISTRALTONGYM2F_FAN_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	disappear MISTRALTONGYM2F_FAN_1
	clearevent EVENT_MISTRALTON_GYM_1F_FAN_2
	sjumpfwd .Fall
	
.Disappear2:
	disappear MISTRALTONGYM2F_FAN_2
	clearevent EVENT_MISTRALTON_GYM_1F_FAN_4
	; fallthrough
.Fall:
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	showtext .FallText
	end
	
.FallText:
	text "The fan fell"
	line "through!"
	done
	
TrainerPilot1MistraltonGym2F:
	generictrainer PILOT, PILOT_MISTRALTON_GYM_4, EVENT_BEAT_PILOT_MISTRALTON_GYM_4, .SeenText, .BeatenText

	text "You need to push"
	line "the fans into the"
	
	para "slots in the floor"
	line "to cross the gym."
	done
	
.SeenText:
	text "Can you figure out"
	line "how to get through"
	cont "our Gym?"
	done

.BeatenText:
	text "I was beaten!"
	done
	
TrainerPilot2MistraltonGym2F:
	generictrainer PILOT, PILOT_MISTRALTON_GYM_5, EVENT_BEAT_PILOT_MISTRALTON_GYM_5, .SeenText, .BeatenText

	text "I became a pilot"
	line "so I could soar"
	
	para "through the skies"
	line "alongside my"
	cont "flying #mon!"
	done
	
.SeenText:
	text "My #mon are"
	line "stronger than the"
	
	para "wind! They're my"
	line "pride and joy!"
	done

.BeatenText:
	text "They may be"
	line "stronger than the"
	
	para "wind, but they're"
	line "not as strong as"
	cont "yours!"
	done
