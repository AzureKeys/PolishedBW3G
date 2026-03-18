DriftveilCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DriftveilFlyPoint

	def_warp_events
	warp_event 11, 35, PWT_DRIFTVEIL_GATE, 1
	warp_event 12, 35, PWT_DRIFTVEIL_GATE, 2
	warp_event 45, 28, DRIFTVEIL_DRAWBRIDGE_GATE, 1
	warp_event 45, 29, DRIFTVEIL_DRAWBRIDGE_GATE, 2
	warp_event 19, 17, DRIFTVEIL_POKECENTER, 1
	warp_event 24, 25, DRIFTVEIL_EVERSTONE_HOUSE, 1
	warp_event 27, 17, DRIFTVEIL_FOSSIL_HOUSE, 1
	warp_event 10, 17, DRIFTVEIL_TRADE_HOUSE, 1
	warp_event 27,  5, DRIFTVEIL_SHELTER, 1
	warp_event 34,  9, DRIFTVEIL_STONE_EMPORIUM, 1
	warp_event 35,  9, DRIFTVEIL_STONE_EMPORIUM, 2
	warp_event  4, 12, ROUTE_6, 1
	warp_event  4, 13, ROUTE_6, 2
	
	def_coord_events

	def_bg_events
	bg_event 12, 26, BGEVENT_JUMPTEXT, DriftveilCitySignText
	bg_event 28,  6, BGEVENT_JUMPTEXT, DriftveilShelterSignText
	
	def_object_events
	object_event 45, 28, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilCityGruntScript, EVENT_DRIFTVEIL_CITY_BLOCKERS
	object_event 45, 29, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilCityGruntScript, EVENT_DRIFTVEIL_CITY_BLOCKERS
	object_event 14, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilCityOfficerText, EVENT_DRIFTVEIL_CITY_BLOCKERS
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilCityOfficerText, EVENT_DRIFTVEIL_CITY_BLOCKERS
	object_event 16, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilCityOfficerText, EVENT_DRIFTVEIL_CITY_BLOCKERS
	object_event  9, 24, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_MARKET, MART_DRIFTVEIL_MERCHANT_1, -1
	object_event 11, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_MARKET, MART_DRIFTVEIL_MERCHANT_2, -1
	object_event  8, 22, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DriftveilMerchantScript, -1
	object_event 16, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, DriftveilCityYoungsterScript, -1
	object_event 25, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilCityGentlemanScript, -1
	object_event 15, 32, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilCityLassText, -1
	object_event 35, 13, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilCityLadyText, -1
	itemball_event 22, 33, REPEAT_BALL, 3, EVENT_DRIFTVEIL_CITY_REPEAT_BALL
	itemball_event 38, 24, HEART_SCALE, 1, EVENT_DRIFTVEIL_CITY_HEART_SCALE
	
DriftveilFlyPoint:
	setflag ENGINE_FLYPOINT_DRIFTVEIL
	endcallback
	
DriftveilMerchantScript:
	faceplayer
	checkevent EVENT_BOUGHT_DRIFTVEIL_CITY_THUNDERSTONE
	iffalsefwd .Purchase
	checkevent EVENT_BOUGHT_DRIFTVEIL_CITY_RAZOR_FANG
	iftrue_jumptext .OutOfStockText
.Purchase
	opentext
	writethistext
	text "Hey kid, wanna"
	line "buy something?"
	done
	promptbutton
	special PlaceMoneyTopRight
	checkevent EVENT_BOUGHT_DRIFTVEIL_CITY_THUNDERSTONE
	iftruefwd .FangOnly
	checkevent EVENT_BOUGHT_DRIFTVEIL_CITY_RAZOR_FANG
	iftruefwd .StoneOnly
	loadmenu DriftveilBothMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChoseStone
	ifequalfwd 2, .ChoseFang
	jumpopenedtext .ComeAgainText
	
.FangOnly
	loadmenu DriftveilFangMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChoseFang
	jumpopenedtext .ComeAgainText
	
.StoneOnly
	loadmenu DriftveilStoneMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChoseStone
	jumpthisopenedtext
.ComeAgainText:
	text "Alright, come back"
	line "later if you're"
	cont "interested."
	done
	
.ChoseStone
	checkmoney YOUR_MONEY, 2100
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem THUNDERSTONE
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 2100
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	itemnotify
	setevent EVENT_BOUGHT_DRIFTVEIL_CITY_THUNDERSTONE
	jumpopenedtext .ThanksText
	
.ChoseFang
	checkmoney YOUR_MONEY, 3000
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem RAZOR_FANG
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 3000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	itemnotify
	setevent EVENT_BOUGHT_DRIFTVEIL_CITY_RAZOR_FANG
	jumpthisopenedtext
.ThanksText:
	text "Hey, thanks kid!"
	done
	
.NoMoney
	jumpthisopenedtext
	text "Hey kid, are you"
	line "trying to rip me"
	cont "off? Scram!"
	done
	
.OutOfStockText:
	text "Sorry kid, you"
	line "bought me out!"
	done
	
.NoRoomText:
	text "You don't have"
	line "any room for that."
	done
	
DriftveilBothMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "ThunderStone¥2100@"
	db "Razor Fang  ¥3000@"
	db "CANCEL@"

DriftveilFangMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 3
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "Razor Fang  ¥3000@"
	db "CANCEL@"

DriftveilStoneMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 3
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "ThunderStone¥2100@"
	db "CANCEL@"
	
DriftveilCityGruntScript:
	showtextfaceplayer .GruntText
	turnobject LAST_TALKED, RIGHT
	end
.GruntText:
	text "Scram, kid! Can't"
	line "you see we're"
	cont "busy?"
	done
	
DriftveilCityYoungsterScript:
	checkevent EVENT_DRIFTVEIL_CITY_BLOCKERS
	iftrue_jumptextfaceplayer .BlockersGoneText
	jumpthistextfaceplayer
	text "I wanted to cross"
	line "the Drawbridge"
	
	para "to get to Nimbasa"
	line "City, but some"
	
	para "suspicious guys"
	line "won't let me"
	cont "through!"
	done
	
.BlockersGoneText:
	text "The guys at the"
	line "Drawbridge are"
	cont "gone now."
	
	para "I wonder where"
	line "they went."
	done
	
DriftveilCityGentlemanScript:
	checkevent EVENT_DRIFTVEIL_CITY_BLOCKERS
	iftrue_jumptextfaceplayer .BlockersGoneText
	jumpthistextfaceplayer
	text "The police are"
	line "out and about…"
	
	para "Something strange"
	line "is going on here…"
	done
	
.BlockersGoneText:
	text "It seems there was"
	line "some commotion at"
	
	para "the #mon World"
	line "Tournament!"
	done
	
DriftveilCityOfficerText:
	text "Sorry, we're not"
	line "letting anyone"
	cont "past here."
	
	para "There's currently"
	line "an investigation"
	cont "in progress."
	done
	
DriftveilCityLassText:
	text "I want to level up"
	line "my dear #mon so"
	
	para "they never have to"
	line "feel the sting of"
	cont "defeat!"
	done
	
DriftveilCityLadyText:
	text "The people in the"
	line "Stone Emporium are"
	cont "crazy for gems!"
	done
	
DriftveilCitySignText:
	text "Driftveil City."
	
	para "A city of"
	line "billowing sails."
	done
	
DriftveilShelterSignText:
	text "Driftveil City"
	line "#mon shelter."
	done
