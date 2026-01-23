CasteliaCitySouth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  4, CASTELIA_CITY_STREETS, 9
	warp_event  6,  4, CASTELIA_CITY_STREETS, 10
	warp_event 17,  6, CASTELIA_CITY_STREETS, 11
	warp_event 18,  6, CASTELIA_CITY_STREETS, 12
	warp_event 31,  8, CASTELIA_CITY_STREETS, 13
	warp_event 32,  8, CASTELIA_CITY_STREETS, 14
	warp_event 43,  4, CASTELIA_CITY_STREETS, 15
	warp_event 44,  4, CASTELIA_CITY_STREETS, 16

	def_coord_events

	def_bg_events
	bg_event 28, 12, BGEVENT_JUMPTEXT, CasteliaBattleCompanySignText
	bg_event 52,  6, BGEVENT_JUMPTEXT, CasteliaBridgeSignText
	bg_event  4,  9, BGEVENT_JUMPTEXT, CasteliaFerrySignText
	bg_event 14,  8, BGEVENT_JUMPTEXT, CasteliaPlazaSignText
	
	def_object_events
	object_event 32, 24, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, CasteliaCitySouthMysticWaterScript, -1
	object_event  5, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthFerryManText, -1
	object_event 33, 15, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthSailor1Text, -1
	object_event 44,  9, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthSailor2Text, -1
	object_event 52, 17, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthGentlemanText, -1
	object_event 21, 14, SPRITE_WAITRESS, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthWaitressText, -1
	object_event 14, 12, SPRITE_BEACH_GUY, SPRITEMOVEDATA_STANDING_DOWN, 3, 3, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaCitySouthBeachGuyText, -1
	pokemon_event 15, 12, RAICHU, ALOLAN_FORM, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_ORANGE, CasteliaCitySouthRaichuText, -1
	itemball_event 23, 24, WATER_STONE, 1, EVENT_CASTELIA_CITY_SOUTH_WATER_STONE
	keyitemball_event 14, 22, COIN_CASE, EVENT_CASTELIA_CITY_SOUTH_COIN_CASE
	
CasteliaCitySouthMysticWaterScript:
	faceplayer
	checkevent EVENT_GOT_MYSTIC_WATER
	iftrue_jumptext .AfterText
	opentext
	writethistext
	text "Ahoy there, young-"
	line "un! I've been"
	
	para "lookin' for a"
	line "shiny type of"
	
	para "trinket they call"
	line "a Heart Scale."
	
	para "They say you can"
	line "fish 'em up, but"
	
	para "I've been havin'"
	line "no luck!"
	
	para "You wouldn't have"
	line "one you could"
	cont "spare, would ya?"
	done
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	
	checkitem HEART_SCALE
	iffalse_jumpopenedtext .NoScaleText
	
	writethistext
	text "Aye! Many thanks!"
	line "Let me give you"
	
	para "somethin' for yer"
	line "trouble. It's just"
	
	para "somethin' I fished"
	line "up here on the"
	cont "pier."
	done
	promptbutton
	verbosegiveitem MYSTIC_WATER
	iffalsefwd .NoRoom
	takeitem HEART_SCALE
	setevent EVENT_GOT_MYSTIC_WATER
	writetext .AfterText
.NoRoom
	waitbutton
	closetext
	end
	
.AfterText:
	text "Water-type #mon"
	line "seem to take a"
	
	para "likin' to that"
	line "thing! Try lettin'"
	cont "one hold onto it!"
	done
	
.NoScaleText:
	text "Wait a minute! You"
	line "don't even have"
	cont "one yourself!"
	done
	
.DeclinedText:
	text "Arr, that's too"
	line "bad…"
	done
	
CasteliaCitySouthFerryManText:
	text "Ahoy! This be the"
	line "Ferry to Virbank"
	cont "City."

	para "If ye've got a"
	line "ticket, go show it"
	
	para "to the fellow"
	line "inside the build-"
	cont "ing just up ahead."
	done
	
CasteliaCitySouthSailor1Text:
	text "Everyone's faces"
	line "blend together!"

	para "Is that because"
	line "I'm tired?"
	done
	
CasteliaCitySouthSailor2Text:
	text "When you just"
	line "can't stand it"
	
	para "anymore, try"
	line "shouting at the"
	cont "open ocean!"
	done
	
CasteliaCitySouthGentlemanText:
	text "The Sewers have"
	line "flooded recently."

	para "It's just as well,"
	line "dangerous #mon"
	cont "had begun to come"
	cont "out of there."
	done
	
CasteliaCitySouthWaitressText:
	text "Castelia's Game"
	line "Plaza has a great"

	para "selection of"
	line "prizes! I'm just"

	para "no good at the"
	line "games, so I never"
	cont "win anything…"
	done
	
CasteliaCitySouthBeachGuyText:
	text "This Raichu is my"
	line "partner. It"

	para "evolved when I"
	line "touched it with an"

	para "Odd Souvenir I"
	line "found while out"
	cont "swimming."
	
	para "It looks different"
	line "than other Raichu,"
	cont "isn't that wild?"
	done
	
CasteliaCitySouthRaichuText:
	text "Raichu: Chuu-chu!"
	done
	
CasteliaBattleCompanySignText:
	text "Battle Company."
	done
	
CasteliaBridgeSignText:
	text "Skyarrow Bridge."

	para "Passage to"
	line "Nacrene City."
	done
	
CasteliaFerrySignText:
	text "Ferry service to"
	line "Virbank City."

	para "Inquire inside."
	done
	
CasteliaPlazaSignText:
	text "Castelia Game"
	line "Plaza."

	para "Come play with us!"
	done
