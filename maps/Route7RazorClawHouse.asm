Route7RazorClawHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_7_SOUTH, 1
	warp_event  3,  7, ROUTE_7_SOUTH, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, Route7RazorClawGuyScript, -1
	
Route7RazorClawGuyScript:
	faceplayer
	checkevent EVENT_BOUGHT_RAZOR_CLAW
	iftrue_jumptext .BoughtText
	opentext
	writetext .AskBuyText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkmoney YOUR_MONEY, 5000
	ifequalfwd HAVE_LESS, .NoMoney
	verbosegiveitem RAZOR_CLAW
	iffalsefwd .NoRoom
	setevent EVENT_BOUGHT_RAZOR_CLAW
	takemoney YOUR_MONEY, 5000
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
	text "Hey! You don't"
	line "even have the"
	cont "money!"
	done
	
.BoughtText:
	text "Hey thanks! Hope"
	line "you get some use"
	cont "out of it!"
	done
	
.AskBuyText:
	text "Hey, you're a"
	line "trainer, right?"
	
	para "Wanna buy this"
	line "cool Claw I found?"
	
	para "I'm sure it'll"
	line "be useful somehow."
	
	para "I'll give it to"
	line "you for ¥5000,"
	cont "how bout it?"
	done
	
.RefusedText:
	text "Aw, c'mon, you're"
	line "missing out on a"
	cont "great deal!"
	done
