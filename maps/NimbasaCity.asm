NimbasaCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NimbasaFlyPoint

	def_warp_events
	warp_event 39, 10, ROUTE_16_NIMBASA_GATE, 3
	warp_event 39, 11, ROUTE_16_NIMBASA_GATE, 4
	warp_event  4, 10, ROUTE_5_NIMBASA_GATE, 1
	warp_event  4, 11, ROUTE_5_NIMBASA_GATE, 2
	warp_event 15, 23, NIMBASA_POKECENTER, 1
	warp_event 10, 17, NIMBASA_SOOTHE_BELL_HOUSE, 1
	warp_event 10, 23, NIMBASA_NAME_RATER, 1
	warp_event 31,  7, NIMBASA_BALL_MART, 1
	warp_event 21,  5, NIMBASA_TM_MART, 1
	warp_event  9,  5, NIMBASA_VITAMIN_MART, 1
	warp_event 24, 17, NIMBASA_SUBWAY, 1
	warp_event 25, 17, NIMBASA_SUBWAY, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_JUMPTEXT, NimbasaCityRoute5SignText
	bg_event 38,  8, BGEVENT_JUMPTEXT, NimbasaCityRoute16SignText
	bg_event 28, 29, BGEVENT_JUMPTEXT, NimbasaCityRoute4SignText
	bg_event 26, 21, BGEVENT_JUMPTEXT, NimbasaCitySubwaySignText
	bg_event 32,  8, BGEVENT_JUMPTEXT, NimbasaCityBallMartSignText
	bg_event 12,  8, BGEVENT_JUMPTEXT, NimbasaCityVitaminMartSignText
	bg_event 22,  8, BGEVENT_JUMPTEXT, NimbasaCityTMMartSignText
	
	def_object_events
	object_event 16, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCityBugCatcherScript, -1
	object_event 20, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 3, -1, PAL_NPC_GREEN_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityYoungsterText, -1
	object_event 25, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 4, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityGrampsText, -1
	object_event 31, 25, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_ORANGE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityTeacherText, -1
	object_event 25, 24, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_PINK, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityLassText, -1
	object_event 12, 24, SPRITE_RANGER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityRangerFText, -1
	object_event 16, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 4, 1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCityCooltrainerFText, -1
	object_event 30, 19, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 4, 1, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaCitySchoolboyText, -1
	itemball_event 16, 15, RED_SHARD, 1, EVENT_NIMBASA_CITY_RED_SHARD
	
NimbasaFlyPoint:
	setflag ENGINE_FLYPOINT_NIMBASA
	endcallback
	
NimbasaCityBugCatcherScript:
	faceplayer
	;checkmapscene NIMBASA_PARK_BASEMENT
	;ifequalfwd 2, .GruntsGone
	jumpthistext
	text "A mean man was"
	line "standing outside"
	cont "the Park."

	para "He wouldn't let"
	line "me in. It was"
	cont "scary…"
	done
	
.GruntsGone:
	jumpthistext
	text "Yay! The mean man"
	line "at the park is"
	cont "gone!"
	done
	
NimbasaCityYoungsterText:
	text "E-he-he-he…"

	para "I got in trouble"
	line "for playing in the"
	cont "old Park…"
	done
	
NimbasaCityGrampsText:
	text "Whew! This is one"
	line "big town. I don't"

	para "know where any-"
	line "thing is."
	done
	
NimbasaCityTeacherText:
	text "There used to be"
	line "a Gym in the Park"
	cont "in town."

	para "But ever since the"
	line "Gym Leader, Elesa,"
	cont "left for bigger"
	cont "and better things,"
	
	para "the Park has"
	line "fallen into dis-"
	cont "repair…"
	done
	
NimbasaCityLassText:
	text "I'm taking the"
	line "Subway to visit"

	para "my friend in"
	line "Aspertia City."
	
	para "A Rail Pass sure"
	line "is nice for"
	cont "traveling!"
	done
	
NimbasaCityRangerFText:
	text "The man at that"
	line "house rates your"
	cont "#mon names."

	para "He can even rename"
	line "your #mon."
	done
	
NimbasaCityCooltrainerFText:
	text "The shops here in"
	line "town sell all"

	para "kinds of useful"
	line "things for #-"
	cont "mon trainers!"
	done
	
NimbasaCitySchoolboyText:
	text "There used to be"
	line "a fun Park in"
	
	para "town, but it"
	line "closed down."
	done
	
NimbasaCityRoute5SignText:
	text "Route 5 ahead."
	
	para "Passage to"
	line "Driftveil City."
	done
	
NimbasaCityRoute16SignText:
	text "Route 16 ahead."
	
	para "Passage to"
	line "Lostlorn Forest."
	done
	
NimbasaCityRoute4SignText:
	text "Route 4 ahead."
	
	para "Passage to"
	line "Castelia City."
	
	para "Watch out for"
	line "contruction!"
	done
	
NimbasaCitySubwaySignText:
	text "Nimbasa City"
	line "Subway station."
	done
	
NimbasaCityBallMartSignText:
	text "Nimbasa City"
	line "#Ball Shop"
	
	para "Get equipped to"
	line "catch #mon!"
	done
	
NimbasaCityVitaminMartSignText:
	text "Nimbasa City"
	line "Vitamin Mart."
	
	para "Increase your"
	line "#mon's health."
	done
	
NimbasaCityTMMartSignText:
	text "Nimbasa City"
	line "TM Shop."
	
	para "Power up your"
	line "#mon with new"
	cont "moves!"
	done
