FloccesyRanchHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, FLOCCESY_RANCH, 1
	warp_event  4,  7, FLOCCESY_RANCH, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FloccesyRanchHouseMilkScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyRanchHousePokefanFText, -1
	
FloccesyRanchHouseMilkScript:
	checkflag ENGINE_GOT_MILK_TODAY
	iftrue_jumptext .AlreadyBoughtText
	opentext
	writethistext
	text "How'd you like my"
	line "Moomoo Milk?"

	para "It's my pride and"
	line "joy, there."

	para "Give it to #mon"
	line "to restore HP!"

	para "I'll give it to ya"
	line "fer just ¥500."
	
	para "You want jus' one,"
	line "or a case o' six?"
	done
	special PlaceMoneyTopRight
	loadmenu MoomooMilkVendorMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .one
	ifequalfwd 2, .six
	jumpthisopenedtext
	text "You don't want it?"
	line "Come again, hear?"
	done
.one
	checkmoney YOUR_MONEY, 500
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem MOOMOO_MILK
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 500
	sjumpfwd .bought
.six
	checkmoney YOUR_MONEY, 3000
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem MOOMOO_MILK, 6
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 3000
	; fallthrough
.bought
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_GOT_MILK_TODAY
	writethistext
	text "Here ya go!"
	line "Drink up'n enjoy!"
	done
	promptbutton
	itemnotify
	closetext
	end
	
.NoMoney
	jumpthisopenedtext
	text "Sorry, there."
	line "No cash, no sale!"
	done
	
.NoRoomText:
	text "I reckon yer"
	line "Bag's full."
	done
	
.AlreadyBoughtText:
	text "I best go do my"
	line "milkin'."
	done
	
MoomooMilkVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "One  500@"
	db "Six 3000@"
	db "Cancel@"

FloccesyRanchHousePokefanFText:
	text "Our milk goes out"
	line "all over Unova."
	done
