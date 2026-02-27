AccumulaStonesHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ACCUMULA_TOWN, 4
	warp_event  3,  7, ACCUMULA_TOWN, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AccumulaFireStoneGirlScript, -1
	object_event  4,  2, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AccumulaWaterStoneGirlScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaLeafStoneGirlScript, -1
	
AccumulaFireStoneGirlScript:
	faceplayer
	checkevent EVENT_GOT_ACCUMULA_TOWN_FIRE_STONE
	iftrue_jumptext AccumulaStoneHouse_GotStoneText
	opentext
	writethistext
	text "I'm thirsty, do"
	line "you have some"
	cont "Soda Pop?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext AccumulaStoneHouse_DeclinedText
	checkitem SODA_POP
	iffalse_jumpopenedtext AccumulaStoneHouse_NoDrinkText
	writetext AccumulaStoneHouse_ThanksText
	promptbutton
	verbosegiveitem FIRE_STONE
	iffalsefwd .done
	takeitem SODA_POP
	setevent EVENT_GOT_ACCUMULA_TOWN_FIRE_STONE
.done
	closetext
	end
	
AccumulaWaterStoneGirlScript:
	faceplayer
	checkevent EVENT_GOT_ACCUMULA_TOWN_WATER_STONE
	iftrue_jumptext AccumulaStoneHouse_GotStoneText
	opentext
	writethistext
	text "I'm thirsty, do"
	line "you have some"
	cont "Fresh Water?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext AccumulaStoneHouse_DeclinedText
	checkitem FRESH_WATER
	iffalse_jumpopenedtext AccumulaStoneHouse_NoDrinkText
	writetext AccumulaStoneHouse_ThanksText
	promptbutton
	verbosegiveitem WATER_STONE
	iffalsefwd .done
	takeitem FRESH_WATER
	setevent EVENT_GOT_ACCUMULA_TOWN_WATER_STONE
.done
	closetext
	end
	
AccumulaLeafStoneGirlScript:
	faceplayer
	checkevent EVENT_GOT_ACCUMULA_TOWN_LEAF_STONE
	iftrue_jumptext AccumulaStoneHouse_GotStoneText
	opentext
	writethistext
	text "I'm thirsty, do"
	line "you have some"
	cont "Lemonade?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext AccumulaStoneHouse_DeclinedText
	checkitem LEMONADE
	iffalse_jumpopenedtext AccumulaStoneHouse_NoDrinkText
	writetext AccumulaStoneHouse_ThanksText
	promptbutton
	verbosegiveitem LEAF_STONE
	iffalsefwd .done
	takeitem LEMONADE
	setevent EVENT_GOT_ACCUMULA_TOWN_LEAF_STONE
.done
	closetext
	end
	
AccumulaStoneHouse_GotStoneText:
	text "Thanks for the"
	line "drink!"
	done
	
AccumulaStoneHouse_DeclinedText:
	text "Aww, please?"
	done

AccumulaStoneHouse_NoDrinkText:
	text "Hey, you don't"
	line "have any!"
	done

AccumulaStoneHouse_ThanksText:
	text "Thanks! Here, you"
	line "can have this from"
	cont "me!"
	done
