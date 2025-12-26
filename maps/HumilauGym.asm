HumilauGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 23, HUMILAU_CITY, 5
	warp_event  5, 23, HUMILAU_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  2, 21, BGEVENT_READ, HumilauGymStatue
	bg_event  7, 21, BGEVENT_READ, HumilauGymStatue

	def_object_events
	object_event  4,  4, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauGymMarlonScript, -1
	object_event  6, 21, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HumilauGymGuyScript, -1
	object_event  4, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerMHumilauGym, -1
	object_event  3,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerFHumilauGym, -1
	
HumilauGymMarlonScript:
	checkevent EVENT_BEAT_MARLON
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer MARLON, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MARLON
	opentext
	givebadge WAVEBADGE, 0
	setevent EVENT_BEAT_SWIMMERM_HUMILAU_GYM
	setevent EVENT_BEAT_SWIMMERF_HUMILAU_GYM
	writethistext
	text "That's the"
	line "official #mon"
	cont "League Wave Badge!"
	
	para "With that, traded"
	line "#mon up to Lv."
	cont "20 will obey you."

	para "Here--take this"
	line "too."
	done
	promptbutton
	verbosegiveitem TM_RAIN_DANCE
	setevent EVENT_GOT_TM18_RAIN_DANCE
	writethistext
	text "When ya use a TM,"
	line "a #mon will"
	cont "learn a new move!"

	para "And don't worry"
	line "about usin' it up!"
	
	para "You can use a TM"
	line "as many times as"
	cont "ya want!"

	para "TM18 teaches the"
	line "move Rain Dance."

	para "It causes a crazy"
	line "rain storm that"

	para "makes water type"
	line "attacks stronger!"
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "Ya know, <PLAYER>,"
	line "there are #mon"
	
	para "Gyms in all kinds"
	line "of cities and"
	
	para "towns across"
	line "Unova."

	para "You should test"
	line "your skills at"
	cont "those Gyms too!"

	para "If you head back"
	line "to Undella Town,"

	para "you can find the"
	line "entrance to"
	cont "Reversal Mountain."
	
	para "Head through there"
	line "to find the path"
	cont "forward."
	
	para "Good luck,"
	line "<PLAYER>!"
	done
	
.SeenText:
	text "Marlon: <PLAYER>!"

	para "How's your"
	line "trainin' coming?"

	para "You're finally"
	line "ready to take"
	cont "on my Gym"
	cont "challenge?"

	para "Sweet! I won't"
	line "hold back,"
	cont "<PLAYER>!"

	para "Come on!"
	done
	
.BeatenText:
	text "Wow, sweet moves,"
	line "<PLAYER>!"

	para "You've gotten"
	line "even better than"
	cont "I expected!"
	
	para "Go ahead, take"
	line "this. You've"
	cont "earned it!"
	done

HumilauGymGuyScript:
	checkevent EVENT_BEAT_MARLON
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	
	text "Hey! I'm no train-"
	line "er but I can give"
	cont "some advice!"

	para "Believe me!"
	line "If you believe, a"

	para "championship dream"
	line "can come true."

	para "You believe?"
	line "Then listen."

	para "The fire-type is"
	line "weak against the"

	para "water-type. Keep"
	line "this in mind."
	done
	
.WinText:
	text "Nice battle! Keep"
	line "it up, and you'll"

	para "be the Champ in no"
	line "time at all!"
	done
	
HumilauGymStatue:
	gettrainername MARLON, 1, STRING_BUFFER_4
	checkflag ENGINE_WAVEBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

TrainerSwimmerMHumilauGym:
	generictrainer SWIMMERM, SWIMMERM_HUMILAU_GYM, EVENT_BEAT_SWIMMERM_HUMILAU_GYM, .SeenText, .BeatenText

	text "I may have been"
	line "the one to lose,"

	para "but I'm still"
	line "going to go ahead"
	
	para "and say it… You"
	line "should definitely"
	cont "seek a style!"
	done
	
.SeenText:
	text "To be as clear as"
	line "water… That is the"
	cont "style that I seek!"
	done
	
.BeatenText:
	text "When I lose, I"
	line "feel like I might"
	cont "just disappear…"
	done
	
TrainerSwimmerFHumilauGym:
	generictrainer SWIMMERF_D, SWIMMERF_HUMILAU_GYM, EVENT_BEAT_SWIMMERF_HUMILAU_GYM, .SeenText, .BeatenText

	text "This is pathetic,"
	line "losing to some"
	cont "rookie trainer…"
	done
	
.SeenText:
	text "If you can beat"
	line "me, you'll get to"
	
	para "face Marlon. Don't"
	line "let your guard"
	cont "down yet!"
	done
	
.BeatenText:
	text "How can this be?"
	line "I wasn't being"
	cont "careless at all!"
	done
	