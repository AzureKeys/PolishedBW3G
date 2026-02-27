AccumulaBallManiacHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, ACCUMULA_TOWN, 6
	warp_event  7,  7, ACCUMULA_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, AccumulaBallManiacScript, -1

AccumulaBallManiacScript:
	checkflag ENGINE_BALL_MANIAC
	iftrue_jumptextfaceplayer .GotBallText
	faceplayer
	opentext
	writethistext
	text "Hi! They call me"
	line "the #Ball"
	cont "maniac!"
	
	para "I collect all"
	line "kinds of different"
	cont "#Balls."
	
	para "People come from"
	line "all over town to"
	cont "See my collection!"
	
	para "Different kinds of"
	line "#Ball are"
	
	para "better at catching"
	line "#mon, depending"
	cont "on the situation."
	
	para "How about you? How"
	line "would you like a"
	
	para "sample of my fine"
	line "#Balls?"
	done
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writethistext
	text "Ah, a trainer of"
	line "good taste, I see!"
	
	para "Here, try using"
	line "these!"
	done
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequalfwd SATURDAY, .Saturday
; Sunday
	verbosegiveitem QUICK_BALL, 5
	sjumpfwd .GotBalls
.Monday
	verbosegiveitem REPEAT_BALL, 5
	sjumpfwd .GotBalls
.Tuesday
	verbosegiveitem NET_BALL, 5
	sjumpfwd .GotBalls
.Wednesday
	verbosegiveitem DIVE_BALL, 5
	sjumpfwd .GotBalls
.Thursday
	verbosegiveitem TIMER_BALL, 5
	sjumpfwd .GotBalls
.Friday
	verbosegiveitem FRIEND_BALL, 5
	sjumpfwd .GotBalls
.Saturday
	verbosegiveitem DUSK_BALL, 5
	; fallthrough
.GotBalls
	setflag ENGINE_BALL_MANIAC
	jumpthisopenedtext
.GotBallText:
	text "Come back later if"
	line "you'd like another"
	
	para "sample from my"
	line "collection!"
	done
	
.DeclinedText:
	text "Ah, that's too"
	line "bad. Come back"
	
	para "around if you"
	line "change your mind."
	done
