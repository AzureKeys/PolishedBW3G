LentimasCoinHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, LENTIMAS_TOWN, 2
	warp_event  4,  7, LENTIMAS_TOWN, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LentimasCoinHouseScript, -1
	
LentimasCoinHouseScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_AMULET_COIN
	iftrue_jumpopenedtext .BoughtText
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkmoney YOUR_MONEY, 1500
	ifequalfwd HAVE_LESS, .NoMoney
	writetext .GiveCoinText
	promptbutton
	verbosegiveitem AMULET_COIN
	iffalsefwd .NoRoom
	setevent EVENT_GOT_AMULET_COIN
	takemoney YOUR_MONEY, 1500
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext .BoughtText
	waitbutton
.NoRoom
	closetext
	end
	
.NoMoney
	jumpthisopenedtext
	text "Oh dear, it looks"
	line "like money's tight"
	cont "for you too."
	done
	
.BoughtText:
	text "Thank you for"
	line "your generosity,"
	cont "young trainer."
	
	para "May luck smile on"
	line "you!"
	done
	
.AskBuyText:
	text "Please, young"
	line "trainer, could you"

	para "spare ¥1500 for an"
	line "old man?"
	done
	
.RefusedText:
	text "Ah, that's too"
	line "bad…"
	done
	
.GiveCoinText:
	text "Oh, thank you!"
	line "I must thank you"
	cont "somehow."
	
	para "Here, take this"
	line "coin with you."
	
	para "Maybe it will"
	line "bring you luck!"
	done
