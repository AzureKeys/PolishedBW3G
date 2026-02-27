NacreneCafe_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NACRENE_CITY, 4
	warp_event  3,  7, NACRENE_CITY, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NacreneCafeClerkScript, -1
	object_event  4,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneCafePokefanFText, -1
	object_event  6,  6, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneCafeMusicianText, -1
	
NacreneCafeClerkScript:
	opentext
	writethistext
	text "Hi, welcome to"
	line "Nacrene Cafe!"

	para "Would you like to"
	line "buy a drink?"
	done
	promptbutton
	loadmenu NacreneCafeMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .FreshWater
	ifequalfwd 2, .SodaPop
	ifequalfwd 3, .Lemonade
	jumpopenedtext .ComeAgainText
	
.FreshWater
	writethistext
	text "Okay, one Fresh"
	line "Water. That'll be"
	cont "¥200."

	para "Is that okay?"
	done
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .ComeAgainText
	checkmoney YOUR_MONEY, 200
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem FRESH_WATER
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 200
	sjumpfwd .GotDrink
	
.SodaPop
	writethistext
	text "Okay, one Soda"
	line "Pop. That'll be"
	cont "¥300."

	para "Is that okay?"
	done
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .ComeAgainText
	checkmoney YOUR_MONEY, 300
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem SODA_POP
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 300
	sjumpfwd .GotDrink
	
.Lemonade
	writethistext
	text "Okay, one"
	line "Lemonade. That'll"
	cont "be ¥350."

	para "Is that okay?"
	done
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .ComeAgainText
	checkmoney YOUR_MONEY, 350
	ifequalfwd HAVE_LESS, .NoMoney
	giveitem LEMONADE
	iffalse_jumpopenedtext .NoRoomText
	takemoney YOUR_MONEY, 350
	; fallthrough
	
.GotDrink
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writethistext
	text "Thanks! Enjoy"
	line "your drink!"
	done
	promptbutton
	itemnotify
	closetext
	end
	
.NoMoney
	jumpthisopenedtext
	text "It looks like you"
	line "don't have enough"
	cont "money for that."
	done
	
.ComeAgainText:
	text "Okay, come again!"
	done
	
.NoRoomText:
	text "You have no room"
	line "for this!"
	done
	
NacreneCafeMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 1, 18, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Fresh Water ¥200@"
	db "Soda Pop    ¥300@"
	db "Lemonade    ¥350@"
	db "CANCEL@"

NacreneCafePokefanFText:
	text "The Cafe offers"
	line "different kinds"
	cont "of drinks."

	para "Even #mon love"
	line "them!"
	done

NacreneCafeMusicianText:
	text "Nacrene City may"
	line "not be as big as"

	para "some of the other"
	line "cities in Unova,"

	para "but we more than"
	line "make up for it in"
	cont "atmosphere!"
	done
