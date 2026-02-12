DEF VIRBANKGAMECORNER_MOON_STONE_COINS  EQU 500
DEF VIRBANKGAMECORNER_ICE_STONE_COINS   EQU 700
DEF VIRBANKGAMECORNER_SHELL_STONE_COINS EQU 1000
DEF VIRBANKGAMECORNER_KLINK_COINS       EQU 1500
DEF VIRBANKGAMECORNER_CRYOGONAL_COINS   EQU 2500
DEF VIRBANKGAMECORNER_DEINO_COINS       EQU 5000

VirbankGameCorner_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 13, VIRBANK_CITY, 6
	warp_event  3, 13, VIRBANK_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, VirbankGameCornerLuckySlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, VirbankGameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, VirbankGameCornerLuckySlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, VirbankGameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 12,  7, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 12,  8, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 12,  9, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 12, 10, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, VirbankGameCornerCardFlipMachineScript
	bg_event 13,  6, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, VirbankGameCornerCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, VirbankGameCornerCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, VirbankGameCornerLuckySlotsMachineScript
	bg_event 18,  7, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event 18,  8, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event 18,  9, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event 18, 10, BGEVENT_READ, VirbankGameCornerSlotsMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, VirbankGameCornerSlotsMachineScript
	
	def_object_events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumpstd, gamecornercoinvendor, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerReceptionistScript1, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerReceptionistScript2, -1
	object_event  5, 10, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << MORN) | (1 << DAY), PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerPharmacistScript, -1
	object_event 17,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerPharmacistScript, -1
	object_event  8,  8, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << DAY) | (1 << NITE), PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerMusicianScript, -1
	object_event 11,  8, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerRoughneckScript, -1
	object_event 14, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << MORN) | (1 << DAY) | (1 << EVE), PAL_NPC_PURPLE_D, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerPokefanFScript, -1
	object_event 17,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << MORN) | (1 << DAY), PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, VirbankGameCornerGentlemanScript, -1
	object_event 10,  3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankGameCornerCooltrainerFText, -1
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankGameCornerPokefanMText, -1
	
VirbankGameCornerReceptionistScript1:
	faceplayer
	opentext
	writetext VirbankGameCornerIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext VirbankGameCornerNoCaseText
.loop
	writetext VirbankGameCornerWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .MoonStone
	ifequalfwd 2, .IceStone
	ifequalfwd 3, .ShellStone
	jumpopenedtext VirbankGameCornerQuitText
	
.MoonStone
	checkcoins VIRBANKGAMECORNER_MOON_STONE_COINS
	ifequal HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getitemname MOON_STONE, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	giveitem MOON_STONE
	iffalse_jumpopenedtext VirbankGameCornerNoRoomItemText
	takecoins VIRBANKGAMECORNER_MOON_STONE_COINS
	sjumpfwd .purchased
	
.IceStone
	checkcoins VIRBANKGAMECORNER_ICE_STONE_COINS
	ifequal HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getitemname ICE_STONE, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	giveitem ICE_STONE
	iffalse_jumpopenedtext VirbankGameCornerNoRoomItemText
	takecoins VIRBANKGAMECORNER_ICE_STONE_COINS
	sjumpfwd .purchased
	
.ShellStone
	checkcoins VIRBANKGAMECORNER_SHELL_STONE_COINS
	ifequal HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getitemname SHELL_STONE, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	giveitem SHELL_STONE
	iffalse_jumpopenedtext VirbankGameCornerNoRoomItemText
	takecoins VIRBANKGAMECORNER_SHELL_STONE_COINS
	; fallthrough
.purchased
	waitsfx
	playsound SFX_TRANSACTION
	writetext VirbankGameCornerGivePrizeText
	waitbutton
	sjump .loop
	
.MenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 18, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Moon Stone   {d:VIRBANKGAMECORNER_MOON_STONE_COINS}@"
	db "Ice Stone    {d:VIRBANKGAMECORNER_ICE_STONE_COINS}@"
	db "Shell Stone {d:VIRBANKGAMECORNER_SHELL_STONE_COINS}@"
	db "CANCEL@"	
	
VirbankGameCornerReceptionistScript2:
	faceplayer
	opentext
	writetext VirbankGameCornerIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext VirbankGameCornerNoCaseText
.loop
	writetext VirbankGameCornerWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .Klink
	ifequalfwd 2, .Cryogonal
	ifequalfwd 3, .Deino
	jumpopenedtext VirbankGameCornerQuitText
	
.Klink
	checkcoins VIRBANKGAMECORNER_KLINK_COINS
	ifequalfwd HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getmonname KLINK, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext VirbankGameCornerGivePrizeText
	waitbutton
	givepoke KLINK, 15
	iffalse_jumpopenedtext VirbankGameCornerNoRoomText
	setmonval KLINK
	special Special_GameCornerPrizeMonCheckDex
	takecoins VIRBANKGAMECORNER_KLINK_COINS
	sjump .loop
	
.Cryogonal
	checkcoins VIRBANKGAMECORNER_CRYOGONAL_COINS
	ifequalfwd HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getmonname CRYOGONAL, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext VirbankGameCornerGivePrizeText
	waitbutton
	givepoke CRYOGONAL, 15
	iffalse_jumpopenedtext VirbankGameCornerNoRoomText
	setmonval CRYOGONAL
	special Special_GameCornerPrizeMonCheckDex
	takecoins VIRBANKGAMECORNER_CRYOGONAL_COINS
	sjump .loop
	
.Deino
	checkcoins VIRBANKGAMECORNER_DEINO_COINS
	ifequalfwd HAVE_LESS, VirbankGameCorner_NoCoinsScript
	getmonname DEINO, STRING_BUFFER_3
	scall VirbankGameCorner_PurchaseScript
	iffalse_jumpopenedtext VirbankGameCornerQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext VirbankGameCornerGivePrizeText
	waitbutton
	givepoke DEINO, 15
	iffalse_jumpopenedtext VirbankGameCornerNoRoomText
	setmonval DEINO
	special Special_GameCornerPrizeMonCheckDex
	takecoins VIRBANKGAMECORNER_DEINO_COINS
	sjump .loop
	
.MenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 16, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Klink     {d:VIRBANKGAMECORNER_KLINK_COINS}@"
	db "Cryogonal {d:VIRBANKGAMECORNER_CRYOGONAL_COINS}@"
	db "Deino     {d:VIRBANKGAMECORNER_DEINO_COINS}@"
	db "CANCEL@"
	
VirbankGameCorner_PurchaseScript:
	writetext VirbankGameCornerConfirmPrizeText
	yesorno
	end
	
VirbankGameCorner_NoCoinsScript:
	jumpopenedtext VirbankGameCornerNoCoinsText

VirbankGameCornerSlotsMachineScript:
	random 6
	ifequalfwd 0, VirbankGameCornerLuckySlotsMachineScript
	reanchormap
	setval FALSE
	special Special_SlotMachine
	endtext
	
VirbankGameCornerLuckySlotsMachineScript:
	reanchormap
	setval TRUE
	special Special_SlotMachine
	endtext
	
VirbankGameCornerCardFlipMachineScript:
	reanchormap
	special Special_CardFlip
	endtext
	
VirbankGameCornerPharmacistScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, RIGHT
	end
.Text:
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done
	
VirbankGameCornerMusicianScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, LEFT
	end
.Text:
	text "I just love this"
	line "new slot machine."
	done
	
VirbankGameCornerRoughneckScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, RIGHT
	end
.Text:
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done
	
VirbankGameCornerPokefanFScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, LEFT
	end
.Text:
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done
	
VirbankGameCornerGentlemanScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, RIGHT
	end
.Text:
	text "I used an Ice"
	line "Stone on my #-"
	cont "mon."

	para "It was hard to get"
	line "enough coins for"

	para "it, but it was"
	line "worth it."
	done

VirbankGameCornerCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done
	
VirbankGameCornerPokefanMText:
	text "I'd sure like that"
	line "Deino, but I don't"

	para "think I'll ever"
	line "earn enough coins…"

	para "Gambling sure is"
	line "tough!"
	done
	
VirbankGameCornerIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done
	
VirbankGameCornerNoCaseText:
	text "Oh? You don't have"
	line "a Coin Case."
	done
	
VirbankGameCornerWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done
	
VirbankGameCornerConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done
	
VirbankGameCornerGivePrizeText:
	text "Here you go!"
	done
	
VirbankGameCornerNoCoinsText:
	text "Sorry! You need"
	line "more coins."
	done
	
VirbankGameCornerNoRoomText:
	text "Oh, no. You can't"
	line "carry any more and"
	cont "your Box is full."

	para "I'll return your"
	line "coins to you."
	done
	
VirbankGameCornerNoRoomItemText:
	text "Oh, no. It looks"
	line "like you have no"
	
	para "more room for"
	line "items in your bag."
	
	para "Come back once"
	line "you've made some"
	cont "space."
	done

VirbankGameCornerQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done
