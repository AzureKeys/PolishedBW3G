NimbasaParkCoasterRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, NimbasaParkHandleCoastersScript
	
	def_warp_events
	warp_event  8, 29, NIMBASA_PARK_OUTSIDE, 3
	warp_event  9, 29, NIMBASA_PARK_OUTSIDE, 3

	def_coord_events
	coord_event 36,  2, -1, NimbasaParkHiddenGruntScript1
	coord_event 36,  3, -1, NimbasaParkHiddenGruntScript2
	coord_event 36,  4, -1, NimbasaParkHiddenGruntScript3
	coord_event 36,  5, -1, NimbasaParkHiddenGruntScript4

	def_bg_events
	bg_event 23, 21, BGEVENT_READ, NimbasaParkCoasterRoomSwitch1Script
	bg_event 37,  3, BGEVENT_READ, NimbasaParkCoasterRoomSwitch2Script
	bg_event 27, 13, BGEVENT_READ, NimbasaParkCoasterRoomSwitch3Script
	bg_event  7, 27, BGEVENT_JUMPTEXT, NimbasaParkCoasterRoomSignText
	bg_event 10, 27, BGEVENT_JUMPTEXT, NimbasaParkCoasterRoomSignText
	bg_event 10, 21, BGEVENT_ITEM + NUGGET, EVENT_NIMBASA_PARK_COASTER_ROOM_NUGGET
	bg_event 11, 21, BGEVENT_ITEM + NUGGET, EVENT_NIMBASA_PARK_COASTER_ROOM_NUGGET
	bg_event 34, 11, BGEVENT_ITEM + NUGGET, EVENT_NIMBASA_PARK_COASTER_ROOM_THUNDERSTONE
	bg_event 35, 11, BGEVENT_ITEM + NUGGET, EVENT_NIMBASA_PARK_COASTER_ROOM_THUNDERSTONE
	
	def_object_events
	object_event 36,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaParkCoasterRoomHiddenGruntAfterText, EVENT_NIMBASA_PARK_COASTER_ROOM_HIDDEN_GRUNT
	object_event  3, 13, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntM1NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntM2NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	object_event 22,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 4, TrainerGruntM3NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	object_event 22, 25, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntF1NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	object_event 17,  6, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntF2NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	object_event 32, 24, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF3NimbasaParkCoasterRoom, EVENT_NIMBASA_PARK_GRUNTS
	itemball_event  6, 16, HYPER_POTION, 1, EVENT_NIMBASA_PARK_COASTER_ROOM_HYPER_POTION
	itemball_event 15, 20, FULL_HEAL, 1, EVENT_NIMBASA_PARK_COASTER_ROOM_FULL_HEAL
	itemball_event 19, 11, PROTEIN, 1, EVENT_NIMBASA_PARK_COASTER_ROOM_PROTEIN
	tmhmball_event 32,  3, TM_THIEF, EVENT_NIMBASA_PARK_COASTER_ROOM_TM_THIEF
	
	object_const_def
	const NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	
NimbasaParkHandleCoastersScript:
	checkevent EVENT_NIMBASA_PARK_COASTER_CRASHED
	iffalsefwd .NoCrash
	changeblock 26, 24, $8c ; no coaster on track
.NoCrash
	checkscene
	ifequalfwd 0, .done ; coaster in initial position
	changeblock 18,  2, $95 ; no coaster on track
	changeblock 30, 20, $48 ; coaster blocking track
.done
	endcallback
	
NimbasaParkCoasterRoomSwitch1Script:
	earthquake 30
	playsound SFX_POUND
	waitsfx
	pause 15
	showtext .MovedText
	checkscene
	ifequalfwd 0, .position2
; initial position
	changeblock 18,  2, $9d ; coaster blocking track
	changeblock 30, 20, $87 ; no coaster on track
	setscene 0
	end
	
.position2
	changeblock 18,  2, $95 ; no coaster on track
	changeblock 30, 20, $48 ; coaster blocking track
	setscene 1
	end
	
.MovedText:
	text "It sounds like one"
	line "of the coaster"
	cont "cars just moved…"
	done
	
NimbasaParkCoasterRoomSwitch2Script:
	checkevent EVENT_NIMBASA_PARK_COASTER_CRASHED
	iftrue_jumptext .AlreadyPressedText
	changeblock 26, 24, $8c ; no coaster on track
	setevent EVENT_NIMBASA_PARK_COASTER_CRASHED
	earthquake 30
	playsound SFX_POUND
	waitsfx
	playsound SFX_POUND
	waitsfx
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	showtext .CrashedText
	end
	
.CrashedText:
	text "It sounds like"
	line "something heavy"
	cont "crashed…"
	
	para "A coaster car must"
	line "have fallen off of"
	cont "the track."
	done
	
.AlreadyPressedText:
	text "Nothing happened…"
	done
	
NimbasaParkCoasterRoomSwitch3Script:
	checkevent EVENT_OPENED_NIMBASA_PARK_RUNWAY
	iftruefwd .done
	setevent EVENT_OPENED_NIMBASA_PARK_RUNWAY
	opentext
	writethistext
	text "Oh! There's a"
	line "switch."
	
	para "Let's press it!"
	done
	waitsfx
	playsound SFX_TALLY
	waitsfx
	waitbutton
	closetext
	setevent EVENT_NIMBASA_PARK_RUNWAY_CHEREN ; disappear Cheren from Runway
	specialphonecall SPECIALCALL_CHEREN_NIMBASA
.done
	end
	
NimbasaParkHiddenGruntScript1:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_4
	iftruefwd .done
	playmusic MUSIC_PLASMA_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, 15
	turnobject PLAYER, UP
	sjumpfwd NimbasaParkHiddenGruntScript
.done
	end
	
NimbasaParkHiddenGruntScript2:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_4
	iftruefwd .done
	playmusic MUSIC_PLASMA_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, .Movement
	sjumpfwd NimbasaParkHiddenGruntScript
.done
	end
.Movement:
	step_down
	step_end
	
NimbasaParkHiddenGruntScript3:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_4
	iftruefwd .done
	playmusic MUSIC_PLASMA_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, .Movement
	sjumpfwd NimbasaParkHiddenGruntScript
.done
	end
.Movement:
	step_down
	step_down
	step_end
	
NimbasaParkHiddenGruntScript4:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_4
	iftruefwd .done
	playmusic MUSIC_PLASMA_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT, .Movement
	sjumpfwd NimbasaParkHiddenGruntScript
.done
	end
.Movement:
	step_down
	step_down
	step_down
	step_end
	
NimbasaParkHiddenGruntScript:
	showtext .SeenText
	; disappear him in case he beats us
	setevent EVENT_NIMBASA_PARK_COASTER_ROOM_HIDDEN_GRUNT
	winlosstext .BeatenText, 0
	setlasttalked NIMBASAPARKCOASTERROOM_HIDDEN_GRUNT
	loadtrainer GRUNTM, GRUNTM_NIMBASA_4
	startbattle
	reloadmapafterbattle
	; we beat him, so make him stay visible
	clearevent EVENT_NIMBASA_PARK_COASTER_ROOM_HIDDEN_GRUNT
	setevent EVENT_BEAT_GRUNTM_NIMBASA_4
	end
	
.SeenText:
	text "Hey, hey, what do"
	line "we have here? You"

	para "have good #mon."
	line "Let me see!"
	done
	
.BeatenText:
	text "What? My #mon"
	line "weren't enough?"
	done
	
NimbasaParkCoasterRoomHiddenGruntAfterText:
	text "If I only had some"
	line "better #mon…"
	
	para "Then no one could"
	line "stop me!"
	done
	
TrainerGruntM1NimbasaParkCoasterRoom:
	generictrainer GRUNTM, GRUNTM_NIMBASA_1, EVENT_BEAT_GRUNTM_NIMBASA_1, .SeenText, .BeatenText

	text "You've got to be"
	line "kidding! And I"

	para "toughened it up so"
	line "much, too!"
	done
	
.SeenText:
	text "I stole this #-"
	line "mon years ago, and"
	
	para "I've been training"
	line "it ever since!"
	
	para "It's tough!"
	done

.BeatenText:
	text "Don't let it go to"
	line "your head… but you"
	
	para "put up a good"
	line "fight…"
	done
	
TrainerGruntM2NimbasaParkCoasterRoom:
	generictrainer GRUNTM, GRUNTM_NIMBASA_2, EVENT_BEAT_GRUNTM_NIMBASA_2, .SeenText, .BeatenText

	text "If we keep going"
	line "like this, it'll"

	para "end up like it did"
	line "last time!"
	done
	
.SeenText:
	text "Just to warn you,"
	line "I show no mercy!"
	done

.BeatenText:
	text "What's the big"
	line "idea? The #mon"
	
	para "I stole was"
	line "useless!"
	done
	
TrainerGruntM3NimbasaParkCoasterRoom:
	generictrainer GRUNTM, GRUNTM_NIMBASA_3, EVENT_BEAT_GRUNTM_NIMBASA_3, .SeenText, .BeatenText

	text "Ack! I need"
	line "backup!"
	done
	
.SeenText:
	text "It's no use!"
	line "You're outmatched!"
	done

.BeatenText:
	text "So you're a"
	line "trainer who fights"
	
	para "for your #mon,"
	line "eh?"
	done
	
TrainerGruntF1NimbasaParkCoasterRoom:
	generictrainer GRUNTF, GRUNTF_NIMBASA_1, EVENT_BEAT_GRUNTF_NIMBASA_1, .SeenText, .BeatenText

	text "Alright, I'll let"
	line "you in on a"
	cont "secret."

	para "There are switches"
	line "that can move some"
	cont "of the coasters."
	done
	
.SeenText:
	text "This used to be a"
	line "roller coaster."

	para "Can you figure out"
	line "how to get through"
	cont "this place?"
	done

.BeatenText:
	text "I get it…"
	done
	
TrainerGruntF2NimbasaParkCoasterRoom:
	generictrainer GRUNTF, GRUNTF_NIMBASA_2, EVENT_BEAT_GRUNTF_NIMBASA_2, .SeenText, .BeatenText

	text "What's with this"
	line "trainer?!"
	
	para "This reminds me of"
	line "that trainer who"
	
	para "messed with us"
	line "years ago…"
	done
	
.SeenText:
	text "Okay, it's my"
	line "turn!"
	done

.BeatenText:
	text "Plasma! Plasmaaa!"
	done
	
TrainerGruntF3NimbasaParkCoasterRoom:
	generictrainer GRUNTF, GRUNTF_NIMBASA_3, EVENT_BEAT_GRUNTF_NIMBASA_3, .SeenText, .BeatenText

	text "I'd take your weak"
	line "#mon and raise"
	cont "them up strong…"
	done
	
.SeenText:
	text "If I win, give me"
	line "your #mon!"
	done

.BeatenText:
	text "What?! What a"
	line "joke!"
	done
	
NimbasaParkCoasterRoomSignText:
	text "N--basa --ty Gy-"
	line "Lea--r: E--sa"
	done
