DEF CASTELIAPLAZAPRIZEROOM_CLEFAIRY_COINS  EQU 300
DEF CASTELIAPLAZAPRIZEROOM_BELDUM_COINS    EQU 1000
DEF CASTELIAPLAZAPRIZEROOM_PINSIR_COINS    EQU 1600
DEF CASTELIAPLAZAPRIZEROOM_LITWICK_COINS   EQU 300
DEF CASTELIAPLAZAPRIZEROOM_AXEW_COINS      EQU 1000
DEF CASTELIAPLAZAPRIZEROOM_HERACROSS_COINS EQU 1600

CasteliaPlazaPrizeRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8,  0, CASTELIA_PLAZA_GAME_CORNER, 2
	warp_event 11,  0, CASTELIA_PLAZA_RESTAURANT, 1
	warp_event 14,  0, CASTELIA_PLAZA_ELEVATOR, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaPrizeRoomReceptionistScript1, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaPrizeRoomReceptionistScript2, -1
	object_event  9,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaPrizeRoomRangerFText, -1
	
CasteliaPlazaPrizeRoomReceptionistScript1:
	faceplayer
	opentext
	writetext CasteliaPlazaPrizeRoomIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoCaseText
.loop
	writetext CasteliaPlazaPrizeRoomWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .Clefairy
	ifequalfwd 2, .Beldum
	ifequalfwd 3, .Pinsir
	jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	
.Clefairy
	checkcoins CASTELIAPLAZAPRIZEROOM_CLEFAIRY_COINS
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname CLEFAIRY, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke CLEFAIRY, 10
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval CLEFAIRY
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_CLEFAIRY_COINS
	sjump .loop
	
.Beldum
	checkcoins CASTELIAPLAZAPRIZEROOM_BELDUM_COINS
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname BELDUM, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke BELDUM, 10
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval BELDUM
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_BELDUM_COINS
	sjump .loop
	
.Pinsir
	checkcoins CASTELIAPLAZAPRIZEROOM_PINSIR_COINS
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname PINSIR, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke PINSIR, 15
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval PINSIR
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_PINSIR_COINS
	sjump .loop
	
.MenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Clefairy {d:CASTELIAPLAZAPRIZEROOM_CLEFAIRY_COINS}@"
	db "Beldum  {d:CASTELIAPLAZAPRIZEROOM_BELDUM_COINS}@"
	db "Pinsir  {d:CASTELIAPLAZAPRIZEROOM_PINSIR_COINS}@"
	db "CANCEL@"
	
CasteliaPlazaPrizeRoomReceptionistScript2:
	faceplayer
	opentext
	writetext CasteliaPlazaPrizeRoomIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoCaseText
.loop
	writetext CasteliaPlazaPrizeRoomWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .Litwick
	ifequalfwd 2, .Axew
	ifequalfwd 3, .Heracross
	jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	
.Litwick
	checkcoins CASTELIAPLAZAPRIZEROOM_LITWICK_COINS
	ifequalfwd HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname LITWICK, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke LITWICK, 10
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval LITWICK
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_LITWICK_COINS
	sjump .loop
	
.Axew
	checkcoins CASTELIAPLAZAPRIZEROOM_AXEW_COINS
	ifequalfwd HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname AXEW, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke AXEW, 10
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval AXEW
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_AXEW_COINS
	sjump .loop
	
.Heracross
	checkcoins CASTELIAPLAZAPRIZEROOM_HERACROSS_COINS
	ifequalfwd HAVE_LESS, CasteliaPlazaPrizeRoom_NoCoinsScript
	getmonname HERACROSS, STRING_BUFFER_3
	scall CasteliaPlazaPrizeRoom_PurchaseScript
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomGivePrizeText
	waitbutton
	givepoke HERACROSS, 15
	iffalse_jumpopenedtext CasteliaPlazaPrizeRoomNoRoomText
	setmonval HERACROSS
	special Special_GameCornerPrizeMonCheckDex
	takecoins CASTELIAPLAZAPRIZEROOM_HERACROSS_COINS
	sjump .loop
	
.MenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Litwick    {d:CASTELIAPLAZAPRIZEROOM_LITWICK_COINS}@"
	db "Axew      {d:CASTELIAPLAZAPRIZEROOM_AXEW_COINS}@"
	db "Heracross {d:CASTELIAPLAZAPRIZEROOM_HERACROSS_COINS}@"
	db "CANCEL@"

CasteliaPlazaPrizeRoom_PurchaseScript:
	writetext CasteliaPlazaPrizeRoomConfirmPrizeText
	yesorno
	end
	
CasteliaPlazaPrizeRoom_NoCoinsScript:
	jumpopenedtext CasteliaPlazaPrizeRoomNoCoinsText
	
CasteliaPlazaPrizeRoomIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done
	
CasteliaPlazaPrizeRoomNoCaseText:
	text "Oh? You don't have"
	line "a Coin Case."
	done
	
CasteliaPlazaPrizeRoomWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done
	
CasteliaPlazaPrizeRoomConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done
	
CasteliaPlazaPrizeRoomGivePrizeText:
	text "Here you go!"
	done
	
CasteliaPlazaPrizeRoomNoCoinsText:
	text "Sorry! You need"
	line "more coins."
	done
	
CasteliaPlazaPrizeRoomNoRoomText:
	text "Oh, no. You can't"
	line "carry any more and"
	cont "your Box is full."

	para "I'll return your"
	line "coins to you."
	done

CasteliaPlazaPrizeRoomQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

CasteliaPlazaPrizeRoomRangerFText:
	text "I've been eyeing"
	line "the Pinsir and"
	
	para "Heracross, but"
	line "they're so"
	cont "expensive!"
	
	para "Maybe if I had"
	line "them, I could join"
	cont "Burgh's Gym…"
	done
	