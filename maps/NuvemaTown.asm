NuvemaTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NuvemaFlyPoint

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 15, 11, BGEVENT_JUMPTEXT, NuvemaTownSignText
	bg_event  5,  7, BGEVENT_JUMPTEXT, NuvemaTownLabSignText
	
	def_object_events
	object_event  9, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NuvemaTownPokefanMText, -1
	object_event 17,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NuvemaTownTeacherText, -1
	
NuvemaFlyPoint:
	setflag ENGINE_FLYPOINT_NUVEMA
	endcallback
	
NuvemaTownPokefanMText:
	text "A couple of years"
	line "ago, my daughter"
	cont "became the #mon"
	cont "Prof!"
	
	para "I couldn't be"
	line "more proud!"
	done

NuvemaTownTeacherText:
	text "Welcome to Nuvema"
	line "Town! We may not"
	
	para "look like much,"
	line "but we're home to"
	
	para "Unova's #mon"
	line "Lab!"
	done
	
NuvemaTownSignText:
	text "Nuvema Town."
	
	para "The start of"
	line "something big!"
	done

NuvemaTownLabSignText:
	text "Nuvema #mon"
	line "Lab."
	
	para "Prof. Bianca Bel"
	line "presiding."
	done
