VirbankCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VirbankFlyPoint
	callback MAPCALLBACK_TILES, VirbankCityTileScript

	def_warp_events
	warp_event  4, 12, ROUTE_20_VIRBANK_GATE, 3
	warp_event  4, 13, ROUTE_20_VIRBANK_GATE, 4
	warp_event 15,  9, VIRBANK_POKECENTER, 1
	warp_event 24,  9, VIRBANK_POISON_BARB_HOUSE, 1
	warp_event 32,  9, VIRBANK_MUSCLE_BAND_HOUSE, 1
	warp_event  8, 25, VIRBANK_GAME_CORNER, 1
	warp_event 38, 25, VIRBANK_PORT, 1

	def_coord_events
	coord_event  6, 10, 1, VirbankCityBridge1OverheadTrigger
	coord_event  6, 11, 1, VirbankCityBridge1OverheadTrigger
	coord_event  6, 12, 1, VirbankCityBridge1OverheadTrigger
	coord_event  6, 13, 1, VirbankCityBridge1OverheadTrigger
	coord_event  7, 10, 0, VirbankCityBridge1UnderfootTrigger
	coord_event  7, 11, 0, VirbankCityBridge1UnderfootTrigger
	coord_event  7, 12, 0, VirbankCityBridge1UnderfootTrigger
	coord_event  7, 13, 0, VirbankCityBridge1UnderfootTrigger
	coord_event 12, 10, 0, VirbankCityBridge1UnderfootTrigger
	coord_event 12, 11, 0, VirbankCityBridge1UnderfootTrigger
	coord_event 12, 12, 0, VirbankCityBridge1UnderfootTrigger
	coord_event 12, 13, 0, VirbankCityBridge1UnderfootTrigger
	coord_event 13, 10, 1, VirbankCityBridge1OverheadTrigger
	coord_event 13, 11, 1, VirbankCityBridge1OverheadTrigger
	coord_event 13, 12, 1, VirbankCityBridge1OverheadTrigger
	coord_event 13, 13, 1, VirbankCityBridge1OverheadTrigger
	coord_event 14, 14, 1, VirbankCityBridge2OverheadTrigger
	coord_event 15, 14, 1, VirbankCityBridge2OverheadTrigger
	coord_event 16, 14, 1, VirbankCityBridge2OverheadTrigger
	coord_event 17, 14, 1, VirbankCityBridge2OverheadTrigger
	coord_event 14, 15, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 15, 15, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 16, 15, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 17, 15, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 14, 22, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 15, 22, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 16, 22, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 17, 22, 0, VirbankCityBridge2UnderfootTrigger
	coord_event 14, 23, 1, VirbankCityBridge2OverheadTrigger
	coord_event 15, 23, 1, VirbankCityBridge2OverheadTrigger
	coord_event 16, 23, 1, VirbankCityBridge2OverheadTrigger
	coord_event 17, 23, 1, VirbankCityBridge2OverheadTrigger

	def_bg_events
	bg_event  4, 10, BGEVENT_JUMPTEXT, VirbankCitySignText
	bg_event  6, 26, BGEVENT_JUMPTEXT, VirbankGameCornerSignText
	bg_event 17, 25, BGEVENT_JUMPTEXT, VirbankFerrySignText
	bg_event 35, 25, BGEVENT_JUMPTEXT, VirbankComplexSignText
	bg_event 19, 24, BGEVENT_ITEM + PP_UP, EVENT_VIRBANK_CITY_PP_UP
	
	def_object_events
	object_event 44, 28, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankCityFishingGuruScript, -1
	object_event 19,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityBlockerText, -1
	object_event 37, 26, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCitySailor1Text, -1
	object_event 33, 25, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCitySailor2Text, -1
	object_event 14, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityTeacherText, -1
	object_event 25, 12, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityCooltrainerFText, -1
	object_event 28, 27, SPRITE_ROUGHNECK, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityRoughneckText, -1
	object_event 34, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityYoungsterText, -1
	object_event 15, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankCityPokefanMText, -1
	itemball_event  4, 23, BLACK_SLUDGE, 1, EVENT_VIRBANK_CITY_BLACK_SLUDGE
	itemball_event  4, 17, RARE_CANDY, 1, EVENT_VIRBANK_CITY_RARE_CANDY
	itemball_event 35,  6, LURE_BALL, 3, EVENT_VIRBANK_CITY_LURE_BALL
	tmhmball_event 12,  4, TM_TOXIC, EVENT_VIRBANK_CITY_TM_TOXIC
	
VirbankFlyPoint:
	setflag ENGINE_FLYPOINT_VIRBANK
	endcallback
	
VirbankCityTileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock  8,  8, $81, VIRBANK_CITY
	changebridgeblock 10,  8, $82, VIRBANK_CITY
	changebridgeblock 12,  8, $9a, VIRBANK_CITY
	changebridgeblock  6, 10, $0e, VIRBANK_CITY
	changebridgeblock  8, 10, $83, VIRBANK_CITY
	changebridgeblock 10, 10, $83, VIRBANK_CITY
	changebridgeblock 12, 10, $0f, VIRBANK_CITY
	changebridgeblock  6, 12, $12, VIRBANK_CITY
	changebridgeblock  8, 12, $87, VIRBANK_CITY
	changebridgeblock 10, 12, $87, VIRBANK_CITY
	changebridgeblock 12, 12, $13, VIRBANK_CITY
	changebridgeblock  8, 14, $8b, VIRBANK_CITY
	changebridgeblock 10, 14, $8b, VIRBANK_CITY
	; bridge 2
	changebridgeblock 12, 16, $8c, VIRBANK_CITY
	changebridgeblock 14, 16, $8d, VIRBANK_CITY
	changebridgeblock 16, 16, $8e, VIRBANK_CITY
	changebridgeblock 18, 16, $8f, VIRBANK_CITY
	changebridgeblock 12, 18, $90, VIRBANK_CITY
	changebridgeblock 14, 18, $91, VIRBANK_CITY
	changebridgeblock 16, 18, $92, VIRBANK_CITY
	changebridgeblock 18, 18, $93, VIRBANK_CITY
	changebridgeblock 12, 20, $90, VIRBANK_CITY
	changebridgeblock 14, 20, $91, VIRBANK_CITY
	changebridgeblock 16, 20, $92, VIRBANK_CITY
	changebridgeblock 18, 20, $93, VIRBANK_CITY
	changebridgeblock 14, 22, $96, VIRBANK_CITY
	changebridgeblock 16, 22, $97, VIRBANK_CITY
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock  8,  8, $3e, VIRBANK_CITY
	changebridgeblock 10,  8, $31, VIRBANK_CITY
	changebridgeblock 12,  8, $3f, VIRBANK_CITY
	changebridgeblock  6, 10, $85, VIRBANK_CITY
	changebridgeblock  8, 10, $85, VIRBANK_CITY
	changebridgeblock 10, 10, $85, VIRBANK_CITY
	changebridgeblock 12, 10, $85, VIRBANK_CITY
	changebridgeblock  6, 12, $89, VIRBANK_CITY
	changebridgeblock  8, 12, $89, VIRBANK_CITY
	changebridgeblock 10, 12, $89, VIRBANK_CITY
	changebridgeblock 12, 12, $89, VIRBANK_CITY
	changebridgeblock  8, 14, $27, VIRBANK_CITY
	changebridgeblock 10, 14, $27, VIRBANK_CITY
	; bridge 2
	changebridgeblock 12, 16, $33, VIRBANK_CITY
	changebridgeblock 14, 16, $84, VIRBANK_CITY
	changebridgeblock 16, 16, $88, VIRBANK_CITY
	changebridgeblock 18, 16, $32, VIRBANK_CITY
	changebridgeblock 12, 18, $37, VIRBANK_CITY
	changebridgeblock 14, 18, $84, VIRBANK_CITY
	changebridgeblock 16, 18, $88, VIRBANK_CITY
	changebridgeblock 18, 18, $36, VIRBANK_CITY
	changebridgeblock 12, 20, $37, VIRBANK_CITY
	changebridgeblock 14, 20, $84, VIRBANK_CITY
	changebridgeblock 16, 20, $88, VIRBANK_CITY
	changebridgeblock 18, 20, $36, VIRBANK_CITY
	changebridgeblock 14, 22, $84, VIRBANK_CITY
	changebridgeblock 16, 22, $88, VIRBANK_CITY
	jmp BufferScreen

VirbankCityBridge1OverheadTrigger:
	callthisasm
	changebridgeblock  8,  8, $81, VIRBANK_CITY
	changebridgeblock 10,  8, $82, VIRBANK_CITY
	changebridgeblock 12,  8, $9a, VIRBANK_CITY
	changebridgeblock  6, 10, $0e, VIRBANK_CITY
	changebridgeblock  8, 10, $83, VIRBANK_CITY
	changebridgeblock 10, 10, $83, VIRBANK_CITY
	changebridgeblock 12, 10, $0f, VIRBANK_CITY
	changebridgeblock  6, 12, $12, VIRBANK_CITY
	changebridgeblock  8, 12, $87, VIRBANK_CITY
	changebridgeblock 10, 12, $87, VIRBANK_CITY
	changebridgeblock 12, 12, $13, VIRBANK_CITY
	changebridgeblock  8, 14, $8b, VIRBANK_CITY
	changebridgeblock 10, 14, $8b, VIRBANK_CITY
	jp VirbankCity_FinishOverheadBridge
	
VirbankCityBridge1UnderfootTrigger:
	callthisasm
	changebridgeblock  8,  8, $3e, VIRBANK_CITY
	changebridgeblock 10,  8, $31, VIRBANK_CITY
	changebridgeblock 12,  8, $3f, VIRBANK_CITY
	changebridgeblock  6, 10, $85, VIRBANK_CITY
	changebridgeblock  8, 10, $85, VIRBANK_CITY
	changebridgeblock 10, 10, $85, VIRBANK_CITY
	changebridgeblock 12, 10, $85, VIRBANK_CITY
	changebridgeblock  6, 12, $89, VIRBANK_CITY
	changebridgeblock  8, 12, $89, VIRBANK_CITY
	changebridgeblock 10, 12, $89, VIRBANK_CITY
	changebridgeblock 12, 12, $89, VIRBANK_CITY
	changebridgeblock  8, 14, $27, VIRBANK_CITY
	changebridgeblock 10, 14, $27, VIRBANK_CITY
	jp VirbankCity_FinishUnderfootBridge
	
VirbankCityBridge2OverheadTrigger:
	callthisasm
	changebridgeblock 12, 16, $8c, VIRBANK_CITY
	changebridgeblock 14, 16, $8d, VIRBANK_CITY
	changebridgeblock 16, 16, $8e, VIRBANK_CITY
	changebridgeblock 18, 16, $8f, VIRBANK_CITY
	changebridgeblock 12, 18, $90, VIRBANK_CITY
	changebridgeblock 14, 18, $91, VIRBANK_CITY
	changebridgeblock 16, 18, $92, VIRBANK_CITY
	changebridgeblock 18, 18, $93, VIRBANK_CITY
	changebridgeblock 12, 20, $90, VIRBANK_CITY
	changebridgeblock 14, 20, $91, VIRBANK_CITY
	changebridgeblock 16, 20, $92, VIRBANK_CITY
	changebridgeblock 18, 20, $93, VIRBANK_CITY
	changebridgeblock 14, 22, $96, VIRBANK_CITY
	changebridgeblock 16, 22, $97, VIRBANK_CITY
	; fallthrough
VirbankCity_FinishOverheadBridge:
	xor a
	jr VirbankCity_FinishBridge
	
VirbankCityBridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 12, 16, $33, VIRBANK_CITY
	changebridgeblock 14, 16, $84, VIRBANK_CITY
	changebridgeblock 16, 16, $88, VIRBANK_CITY
	changebridgeblock 18, 16, $32, VIRBANK_CITY
	changebridgeblock 12, 18, $37, VIRBANK_CITY
	changebridgeblock 14, 18, $84, VIRBANK_CITY
	changebridgeblock 16, 18, $88, VIRBANK_CITY
	changebridgeblock 18, 18, $36, VIRBANK_CITY
	changebridgeblock 12, 20, $37, VIRBANK_CITY
	changebridgeblock 14, 20, $84, VIRBANK_CITY
	changebridgeblock 16, 20, $88, VIRBANK_CITY
	changebridgeblock 18, 20, $36, VIRBANK_CITY
	changebridgeblock 14, 22, $84, VIRBANK_CITY
	changebridgeblock 16, 22, $88, VIRBANK_CITY
	; fallthrough
VirbankCity_FinishUnderfootBridge:
	ld a, $1
VirbankCity_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wVirbankCitySceneID], a
	jmp GenericFinishBridge
	
VirbankCityFishingGuruScript:
	faceplayer
	checkevent EVENT_GOT_GOOD_ROD
	iftrue_jumptext .AfterText
	opentext
	writethistext
	text "Hi there! Do you"
	line "like to fish?"
	done
	yesorno
	iffalse_jumpopenedtext .NoText
	writethistext
	text "Oh! Well then take"
	line "this rod!"
	done
	promptbutton
	verbosegivekeyitem GOOD_ROD
	writethistext
	text "Fish in all kinds"
	line "of places!"
	done
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end
	
.NoText:
	text "Oh, that's too"
	line "bad."
	done
	
.AfterText:
	text "Yo, kid. How are"
	line "they biting?"
	done
	
VirbankCityBlockerText:
	text "Sorry kid, #-"
	line "Star Studios is"
	
	para "closed to the"
	line "public."
	
	para "You should go"
	line "check out the new"
	cont "Game Corner."
	done
	
VirbankCitySailor1Text:
	text "Ahoy! This be the"
	line "Ferry to Castelia"
	cont "City."

	para "If ye've got a"
	line "ticket, go show it"
	cont "to the fellow"
	cont "inside!"
	done
	
VirbankCitySailor2Text:
	text "Aww man, I lost my"
	line "Ferry Ticket at"
	cont "the Complex again…"

	para "Boss is gonna be"
	line "so mad!"
	done
	
VirbankCityTeacherText:
	text "I lost at the slot"
	line "machines again…"

	para "The new Game"
	line "Corner is a branch"
	
	para "of the one in"
	line "Castelia City."

	para "I think they have"
	line "different prizes."
	done
	
VirbankCityCooltrainerFText:
	text "Roxie's poison is"
	line "intense! It"
	cont "really stings!"

	para "But you know what?"
	line "Catch a Magnemite"
	
	para "in the Complex and"
	line "you'll be just"
	cont "fine!"
	done
	
VirbankCityRoughneckText:
	text "I tried to get"
	line "into the Gym, but"

	para "I couldn't figure"
	line "out their puzzle!"
	done
	
VirbankCityYoungsterText:
	text "Castelia City is"
	line "across the sea."

	para "I want to ride"
	line "the ferry!"
	done
	
VirbankCityPokefanMText:
	text "Virbank City is"
	line "the city of"
	cont "industry!"

	para "We're proud of our"
	line "bustling burg!"
	done

VirbankCitySignText:
	text "Virbank City"
	
	para "City of falling"
	line "fog and rising"
	cont "stars!"
	done
	
VirbankGameCornerSignText:
	text "Virbank City"
	line "Game Corner!"
	
	para "Come win fabulous"
	line "prizes!"
	done
	
VirbankFerrySignText:
	text "Ferry service to"
	line "Castelia City."
	
	para "Inquire within."
	done
	
VirbankComplexSignText:
	text "South to Virbank"
	line "Complex."
	
	para "Watch your step!"
	done
	