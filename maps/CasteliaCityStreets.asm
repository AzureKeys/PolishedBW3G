CasteliaCityStreets_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  6, CASTELIA_CITY_NORTH, 2
	warp_event 14,  6, CASTELIA_CITY_NORTH, 3
	warp_event 21,  8, CASTELIA_CITY_NORTH, 4
	warp_event 22,  8, CASTELIA_CITY_NORTH, 5
	warp_event 29,  4, CASTELIA_CITY_NORTH, 6
	warp_event 30,  4, CASTELIA_CITY_NORTH, 7
	warp_event 39,  4, CASTELIA_CITY_NORTH, 8
	warp_event 40,  4, CASTELIA_CITY_NORTH, 9
	warp_event  5, 21, CASTELIA_CITY_SOUTH, 1
	warp_event  6, 21, CASTELIA_CITY_SOUTH, 2
	warp_event 21, 23, CASTELIA_CITY_SOUTH, 3
	warp_event 22, 23, CASTELIA_CITY_SOUTH, 4
	warp_event 35, 23, CASTELIA_CITY_SOUTH, 5
	warp_event 36, 23, CASTELIA_CITY_SOUTH, 6
	warp_event 47, 23, CASTELIA_CITY_SOUTH, 7
	warp_event 48, 23, CASTELIA_CITY_SOUTH, 8
	warp_event 35, 16, CASTELIA_BIKE_SHOP, 1
	warp_event 35, 17, CASTELIA_BIKE_SHOP, 2
	warp_event 44, 16, CASTELIA_MASSAGE, 1
	warp_event 44, 17, CASTELIA_MASSAGE, 2
	warp_event 50, 17, CASTELIA_GAME_FREAK, 1
	warp_event  4, 15, CASTELIA_GYM, 1

	def_coord_events
	coord_event  4, 16, 1, CasteliaCityStreetsCherenScript

	def_bg_events
	bg_event 35, 15, BGEVENT_JUMPTEXT, CasteliaBikeSignText
	bg_event 44, 15, BGEVENT_JUMPTEXT, CasteliaMassageSignText
	bg_event 48, 18, BGEVENT_JUMPTEXT, CasteliaGameFreakSignText
	bg_event 32, 17, BGEVENT_JUMPTEXT, CasteliaConeSignText
	bg_event 24, 13, BGEVENT_ITEM + BLACKGLASSES, EVENT_CASTELIA_CITY_STREETS_BLACKGLASSES
	bg_event 25, 13, BGEVENT_ITEM + BLACKGLASSES, EVENT_CASTELIA_CITY_STREETS_BLACKGLASSES
	
	def_object_events
	object_event 10, 11, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_CASTELIA_CITY_STREETS_CHEREN
	object_event 31, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, CasteliaCityStreetsConeVendorScript, -1
	object_event 25, 12, SPRITE_SLEEPING_MAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaCityStreetsSleepingManScript, -1
	object_event 11, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityStreetsYoungsterText, -1
	object_event 30,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityStreetsTeacherText, -1
	object_event 34, 13, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_PURPLE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityStreetsSchoolgirlText, -1
	object_event 41,  8, SPRITE_MUSICIAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCityStreetsMusicianText, -1
	
	object_const_def
	const CASTELIACITYSTREETS_CHEREN
	
CasteliaCityStreetsCherenScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	appear CASTELIACITYSTREETS_CHEREN
	applymovement CASTELIACITYSTREETS_CHEREN, CasteliaCityStreets_CherenAppearMovement
	turnobject PLAYER, RIGHT
	showtext .IntroText
	addcellnum PHONE_CHEREN
	opentext
	writethistext
	text "<PLAYER> got"
	line "Cheren's phone"
	cont "number."
	done
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
	writethistext
	text "Cheren: I'm pretty"
	line "knowledgable about"
	cont "#mon evolution."
	
	para "Call me if you"
	line "want to know how"
	
	para "to evolve any of"
	line "your #mon."
	
	para "I'm going to"
	line "Nimbasa City."
	
	para "I've heard reports"
	line "that Team Plasma"
	
	para "has been up to"
	line "something at the"
	cont "old Park…"
	
	para "Come and meet me"
	line "if you'd like to"
	cont "lend a hand."
	done
	waitbutton
	closetext
	applymovement CASTELIACITYSTREETS_CHEREN, CasteliaCityStreets_CherenLeaveMovement
	disappear CASTELIACITYSTREETS_CHEREN
	clearevent EVENT_NIMBASA_PARK_OUTSIDE_CHEREN
	setmapscene NIMBASA_PARK_OUTSIDE, 1
	setscene 0
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
.IntroText:
	text "Oh, excuse me,"
	line "are you <PLAYER>?"
	
	para "My name is Cheren."
	line "I'm a friend of"
	cont "the Prof."
	
	para "I've been invest-"
	line "igating the recent"
	
	para "appearances of a"
	line "group claiming to"
	cont "be Team Plasma."
	
	para "They were a terror"
	line "group that was"
	cont "disbanded a few"
	cont "years ago."
	
	para "Oh? You've already"
	line "had a run-in with"
	cont "them?"
	
	para "Perhaps you could"
	line "be of assistance."
	
	para "Here, register my"
	line "number in your"
	cont "X-Transciever."
	done
	
CasteliaCityStreetsConeVendorScript:
	checkflag ENGINE_GOT_CASTELIACONE_TODAY
	iftrue_jumptext .AlreadyBoughtText
	opentext
	writethistext
	text "Hi! Welcome to"
	line "Castelia City!"
	
	para "How would you like"
	line "to try a specialty"
	cont "CasteliaCone?"
	
	para "It's just ¥100."
	
	para "You can buy just"
	line "one, or a dozen."
	
	para "How about it?"
	done
	special PlaceMoneyTopRight
	loadmenu CasteliaConeVendorMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .one
	ifequalfwd 2, .dozen
	jumpthisopenedtext
	text "Oh, that's too"
	line "bad."
	done
.one
	checkmoney YOUR_MONEY, 100
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem CASTELIACONE
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 100
	sjumpfwd .bought
.dozen
	checkmoney YOUR_MONEY, 1200
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem CASTELIACONE, 12
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 1200
	; fallthrough
.bought
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_GOT_CASTELIACONE_TODAY
	writethistext
	text "That CasteliaCone"
	line "can cure any"
	
	para "status condition"
	line "of a #mon!"
	done
	promptbutton
	itemnotify
	closetext
	end
	
.NoMoney
	jumpthisopenedtext
	text "Uh-oh, looks like"
	line "you don't have"
	cont "enough money."
	done
	
.NoRoomText:
	text "You have no room"
	line "for this."
	done
	
.AlreadyBoughtText:
	text "Come back tomorrow"
	line "if you'd like"
	
	para "another"
	line "CasteliaCone!"
	done
	
CasteliaConeVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 12, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "One    100@"
	db "Dozen 1200@"
	db "Cancel@"
	
CasteliaCityStreetsSleepingManScript:
	checkevent EVENT_GOT_TM_REST
	iftrue_jumptext .SleepingText
	opentext
	writethistext
	text "…zzzzz…"
	
	para "…wha, huh?"
	
	para "Hey, I'm trying"
	line "to sleep here!"
	
	para "Take this and go"
	line "away…"
	done
	promptbutton
	verbosegivetmhm TM_REST
	setevent EVENT_GOT_TM_REST
	closetext
	end
	
.SleepingText:
	text "…zzzzz…"
	done
	
CasteliaCityStreets_CherenAppearMovement:
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_end
	
CasteliaCityStreets_CherenLeaveMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
CasteliaCityStreetsYoungsterText:
	text "I've been training"
	line "out in the desert"
	
	para "to take on the"
	line "Gym!"
	done

CasteliaCityStreetsTeacherText:
	text "Have you tried a"
	line "CasteliaCone?"
	
	para "They're all the"
	line "rage!"
	done

CasteliaCityStreetsSchoolgirlText:
	text "I love being"
	line "surrounded by tall"
	cont "buildings!"
	done

CasteliaCityStreetsMusicianText:
	text "Should I change my"
	line "#mon's moves or"
	cont "its held items?"
	done

CasteliaBikeSignText:
	text "Castelia Cycles."
	done

CasteliaMassageSignText:
	text "#mon massage"
	line "parlor."
	done

CasteliaGameFreakSignText:
	text "Game Freak HQ."
	done

CasteliaConeSignText:
	text "Tasty and refresh-"
	line "ing! Get your"
	cont "CasteliaCone"
	cont "today!"
	done
