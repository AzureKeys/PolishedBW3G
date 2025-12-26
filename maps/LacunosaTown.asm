LacunosaTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LacunosaFlyPoint

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 18, 16, BGEVENT_JUMPTEXT, LacunosaTownSignText
	bg_event 16,  3, BGEVENT_ITEM + ETHER, EVENT_LACUNOSA_TOWN_ETHER
	
	def_object_events
	object_event  9,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LacunosaTownLass1Script, -1
	object_event  6, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaTownLass2Text, -1
	object_event 10, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaTownYoungster1Text, -1
	object_event  5,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaTownYoungster2Text, -1
	object_event 15, 17, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaTownPokefanFText, -1
	object_event 16, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaTownTeacherText, -1
	
LacunosaFlyPoint:
	setflag ENGINE_FLYPOINT_LACUNOSA
	checkflag ENGINE_POKEDEX
	iffalsefwd .done
	checkevent EVENT_GOT_BIANCAS_NUMBER
	iftruefwd .done
	specialphonecall SPECIALCALL_BIANCA_INTRO
	addcellnum PHONE_BIANCA
.done
	endcallback
	
LacunosaTownLass1Script:
	checkflag ENGINE_POKEDEX
	iffalse_jumptextfaceplayer LacunosaTownLass1Text
	jumpthistextfaceplayer
	text "Nice, the Mart"
	line "restocked #-"
	cont "Balls!"
	
	para "I'd better stock"
	line "up to go catch"
	cont "some #mon!"
	done
	
LacunosaTownLass1Text:
	text "Darn, the Mart's"
	line "out of #Balls!"
	
	para "I wanted to catch"
	line "some #mon out"
	cont "on Route 12…"
	done
	
LacunosaTownLass2Text:
	text "Try talking to"
	line "people that you"
	cont "meet."
	
	para "They may give you"
	line "something useful!"
	done
	
LacunosaTownYoungster1Text:
	text "You can find items"
	line "hidden on the"
	cont "ground sometimes."
	
	para "Check out any"
	line "places that seem"
	cont "suspicious."
	done
	
LacunosaTownYoungster2Text:
	text "The #mon on"
	line "Route 12 are"
	
	para "different from the"
	line "ones on Route 13."
	done
	
LacunosaTownPokefanFText:
	text "Oh, you must be"
	line "from out of town."
	
	para "Welcome to"
	line "Lacunosa Town."
	done
	
LacunosaTownTeacherText:
	text "The girls in the"
	line "house at the end"
	
	para "of the path sure"
	line "do love Berries!"
	done
	
LacunosaTownSignText:
	text "Lacunosa Town"
	
	para "A town as"
	line "methodical as"
	cont "clockwork."
	done
