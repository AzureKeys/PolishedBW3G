OpelucidCuriosityShop_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, OPELUCID_CITY, 8
	warp_event  4,  7, OPELUCID_CITY, 8

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CuriosityShopScript, -1
	
CuriosityShopScript:
	faceplayer
	opentext
	writethistext
	text "Hey, welcome to"
	line "the Opelucid City"
	cont "Curiosity Shop."
	
	para "We got all kinds"
	line "of rare bargains!"
	
	para "Let's see…"
	line "Today's bargain is"
	done
	promptbutton
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
; Sunday
	writethistext
	text "this mysterious"
	line "Spell Tag."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .NoMoney
	verbosegiveitem SPELL_TAG
	iffalse_jumpopenedtext .NoRoomText
	sjump .Sale
.Monday
	writethistext
	text "this shiny Silver"
	line "Powder."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .NoMoney
	verbosegiveitem SILVERPOWDER
	iffalse_jumpopenedtext .NoRoomText
	sjumpfwd .Sale
.Tuesday
	writethistext
	text "this powerful"
	line "Magnet."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem MAGNET
	iffalse_jumpopenedtext .NoRoomText
	sjumpfwd .Sale
.Wednesday
	writethistext
	text "this pile of"
	line "Soft Sand."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem SOFT_SAND
	iffalse_jumpopenedtext .NoRoomText
	sjumpfwd .Sale
.Thursday
	writethistext
	text "this deadly"
	line "Poison Barb."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem POISON_BARB
	iffalse_jumpopenedtext .NoRoomText
	sjumpfwd .Sale
.Friday
	writethistext
	text "this razor Sharp"
	line "Beak."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem SHARP_BEAK
	iffalse_jumpopenedtext .NoRoomText
	sjumpfwd .Sale
.Saturday
	writethistext
	text "this strangely"
	line "Twisted Spoon."
	done
	promptbutton
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem TWISTEDSPOON
	iffalse_jumpopenedtext .NoRoomText
	; fallthrough
.Sale
	takemoney YOUR_MONEY, 10000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	jumpthisopenedtext
	text "Hey thanks! Come"
	line "back another day,"
	
	para "we may have a"
	line "different bargain."
	done
	
.NoMoney:
	jumpthisopenedtext
	text "Hey, what are you"
	line "tryin' to pull?"
	
	para "You don't have the"
	cont "money for that!"
	done
	
.AskBuyText:
	text "It can be yours"
	line "for the low price"
	cont "of just ¥10000."
	
	para "How 'bout it?"
	done
	
.DeclinedText:
	text "Ah, that's too"
	line "bad. Come back if"
	cont "you change your"
	cont "mind."
	done
	
.NoRoomText:
	text "Uh-oh, looks like"
	line "you don't have any"
	cont "room for it."
	done
