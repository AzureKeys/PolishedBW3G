Route6Lab_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ROUTE_6, 3
	warp_event  4,  7, ROUTE_6, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, Route6LabBlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, Route6LabBlackboardText
	
	def_object_events
	object_event  3,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6LabScientistMScript, -1
	object_event  2,  1, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6LabScientistFScript, -1
	
Route6LabScientistMScript:
	jumpthistextfaceplayer
	text "Here in this lab,"
	line "we study the"
	
	para "weather patterns"
	line "across Unova."
	done
	
Route6LabScientistFScript:
	faceplayer
	opentext
	writethistext
	text "I'm researching"
	line "certain rocks that"
	
	para "can affect the"
	line "weather."
	
	para "If you have one,"
	line "would you mind"
	cont "giving it to me?"
	
	para "I can trade you"
	line "some shards in"
	cont "return."
	
	para "Will you give me"
	line "a rock?"
	done
	promptbutton
	loadmenu R6LabMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChoseDamp
	ifequalfwd 2, .ChoseHeat
	ifequalfwd 3, .ChoseIcy
	ifequalfwd 4, .ChoseSmooth
	jumpthisopenedtext
.DeclinedText:
	text "Ah, that's too"
	line "bad…"
	done
	
.ChoseDamp:
	checkitem DAMP_ROCK
	iffalse_jumpopenedtext .DontHaveText
	writethistext
	text "I see…"
	line "Will you give me"
	cont "that Damp Rock?"
	
	para "I'll give you 5"
	line "Green Shards in"
	cont "return."
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	takeitem DAMP_ROCK
	verbosegiveitem GREEN_SHARD, 5
	jumpopenedtext .ThanksText
	
.ChoseHeat:
	checkitem HEAT_ROCK
	iffalse_jumpopenedtext .DontHaveText
	writethistext
	text "I see…"
	line "Will you give me"
	cont "that Heat Rock?"
	
	para "I'll give you 5"
	line "Red Shards in"
	cont "return."
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	takeitem HEAT_ROCK
	verbosegiveitem RED_SHARD, 5
	jumpopenedtext .ThanksText
	
.ChoseIcy:
	checkitem ICY_ROCK
	iffalse_jumpopenedtext .DontHaveText
	writethistext
	text "I see…"
	line "Will you give me"
	cont "that Icy Rock?"
	
	para "I'll give you 5"
	line "Blue Shards in"
	cont "return."
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	takeitem ICY_ROCK
	verbosegiveitem BLUE_SHARD, 5
	jumpopenedtext .ThanksText
	
.ChoseSmooth:
	checkitem SMOOTH_ROCK
	iffalse_jumpopenedtext .DontHaveText
	writethistext
	text "I see…"
	line "Will you give me"
	cont "that Smooth Rock?"
	
	para "I'll give you 5"
	line "Yellow Shards in"
	cont "return."
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	takeitem SMOOTH_ROCK
	verbosegiveitem YELLOW_SHARD, 5
	jumpthisopenedtext
.ThanksText:
	text "Thanks, this will"
	line "help me further"
	cont "my research."
	done
	
.DontHaveText:
	text "Wait a minute,"
	line "you don't have"
	cont "that rock!"
	done
	
R6LabMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 13, TEXTBOX_Y - 0
	dw .MenuData
	db 1 ; default option
	
.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "Damp Rock@"
	db "Heat Rock@"
	db "Icy Rock@"
	db "Smooth Rock@"
	db "CANCEL@"

Route6LabBlackboardText:
	text "It's covered in"
	line "complex formulas."
	done
