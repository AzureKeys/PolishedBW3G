AspertiaCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AspertiaFlyPoint

	def_warp_events
	warp_event 10, 31, ASPERTIA_SUBWAY, 3
	warp_event 15, 23, ASPERTIA_POKECENTER, 1
	warp_event  5, 37, ASPERTIA_MOVE_DELETER, 1
	warp_event 23, 15, ASPERTIA_BLACKBELT_HOUSE, 1
	warp_event 19,  9, ROUTE_19_ASPERTIA_GATE, 3
	warp_event 13, 37, ASPERTIA_MOM_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 25, BGEVENT_JUMPTEXT, AspertiaCitySignText
	bg_event  7, 31, BGEVENT_JUMPTEXT, AspertiaSubwaySignText
	
	def_object_events
	object_event  6, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaCityBlockerText, EVENT_ASPERTIA_CITY_BLOCKER
	object_event  5,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AspertiaCityScopeGuyScript, -1
	object_event 12, 40, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaCityLassText, -1
	object_event  6, 28, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaCityLadyText, -1
	object_event 17, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaCityGrampsText, -1
	object_event 22, 23, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaCitySchoolboyText, -1
	tmhmball_event 22, 40, TM_DREAM_EATER, EVENT_ASPERTIA_CITY_TM_DREAM_EATER
		
	object_const_def
	const ASPERTIACITY_BLOCKER
	
AspertiaFlyPoint:
	setflag ENGINE_FLYPOINT_ASPERTIA
	endcallback
	
AspertiaCityScopeGuyScript:
	faceplayer
	checkevent EVENT_GOT_SCOPE_LENS
	iftrue_jumptext .IntroText
	opentext
	writetext .IntroText
	promptbutton
	writethistext
	text "Here, take this"
	line "scope for"
	cont "yourself."
	done
	promptbutton
	verbosegiveitem SCOPE_LENS
	iffalsefwd .NoRoom
	setevent EVENT_GOT_SCOPE_LENS
.NoRoom
	closetext
	end
	
.IntroText
	text "Boy, I sure do"
	line "love the view off"
	cont "this platform."
	done
	
AspertiaCityBlockerText:
	text "Sorry, the Gym"
	line "Leader isn't here"
	cont "right now."
	
	para "The Gym's closed"
	line "until he comes"
	cont "back."
	done
	
AspertiaCityLassText:
	text "There's a man here"
	line "called the Move"
	cont "Deleter."
	
	para "He can make your"
	line "#mon forget any"
	cont "move, even an HM."
	done
	
AspertiaCityLadyText:
	text "I'm so glad they"
	line "built the Subway"
	
	para "station here in"
	line "town. It's made"
	
	para "shopping in"
	line "Nimbasa so much"
	cont "easier!"
	done
	
AspertiaCityGrampsText:
	text "You know, I used"
	line "to be quite the"
	
	para "trainer back in"
	line "my day. You young"
	cont "uns could learn a"
	
	para "thing or two from"
	line "us elders!"
	done
	
AspertiaCitySchoolboyText:
	text "You should always"
	line "be kind to your"
	cont "#mon. Some"
	
	para "#mon can even"
	line "evolve if you're"
	cont "kind to them."
	
	para "At least, that's"
	line "what I've heard."
	done
	
AspertiaCitySignText:
	text "Aspertia City"
	
	para "A city that"
	line "reaches for the"
	cont "sky."
	done
	
AspertiaSubwaySignText:
	text "Aspertia City"
	line "Subway station."
	done
