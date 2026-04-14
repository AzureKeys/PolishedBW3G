Route9_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37, 10, ROUTE_9_OPELUCID_GATE, 3
	warp_event 37, 11, ROUTE_9_OPELUCID_GATE, 4
	warp_event  9,  5, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event 32,  7, BGEVENT_JUMPTEXT, R9SignText
	bg_event 19,  7, BGEVENT_JUMPTEXT, R9MallSignText
	bg_event  6,  9, BGEVENT_JUMPTEXT, R9BridgeSignText
	bg_event 19, 17, BGEVENT_ITEM + MAX_ETHER, EVENT_ROUTE_9_MAX_ETHER
	bg_event 30,  6, BGEVENT_ITEM + HP_UP, EVENT_ROUTE_9_HP_UP
	bg_event 10,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_9
	
	def_object_events
	object_event 34,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBiker1R9, -1
	object_event 25, 11, SPRITE_BIKER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBiker2R9, -1
	object_event  5, 10, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerRoughneck1R9, -1
	object_event 13, 10, SPRITE_ROUGHNECK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerRoughneck2R9, -1
	itemball_event 12, 19, NUGGET, 1, EVENT_ROUTE_9_NUGGET
	itemball_event 11,  6, FULL_RESTORE, 1, EVENT_ROUTE_9_FULL_RESTORE
	itemball_event  8,  8, ELIXIR, 1, EVENT_ROUTE_9_ELIXIR
	itemball_event 14, 12, IRON, 1, EVENT_ROUTE_9_IRON
	
TrainerBiker1R9:
	generictrainer BIKER, BIKER_R9_1, EVENT_BEAT_BIKER_R9_1, .SeenText, .BeatenText

	text "Some cute #mon"
	line "you've got there!"
	
	para "You aren't too"
	line "shabby of a"
	cont "trainer either!"
	done
	
.SeenText:
	text "Hey, hey! I'll"
	line "take care of you!"
	done

.BeatenText:
	text "My baby lost!"
	done
	
TrainerBiker2R9:
	generictrainer BIKER, BIKER_R9_2, EVENT_BEAT_BIKER_R9_2, .SeenText, .BeatenText

	text "Chase the sun"
	line "during the day,"
	
	para "and sleep all"
	line "night… That might"
	
	para "be a good life for"
	line "me."
	done
	
.SeenText:
	text "Do you want to"
	line "pass through here?"
	
	para "Then, you must"
	line "greet me!"
	done

.BeatenText:
	text "You! What great"
	line "strength you have!"
	done
	
TrainerRoughneck1R9:
	generictrainer ROUGHNECK, ROUGHNECK_R9_1, EVENT_BEAT_ROUGHNECK_R9_1, .SeenText, .BeatenText

	text "Us bad dudes are"
	line "getting together"
	
	para "to boast about our"
	line "#mon!"
	done
	
.SeenText:
	text "Hey, hey! What's"
	line "wrong? Are you"
	cont "lost or something?"
	done

.BeatenText:
	text "Beaten down!"
	done
	
TrainerRoughneck2R9:
	generictrainer ROUGHNECK, ROUGHNECK_R9_2, EVENT_BEAT_ROUGHNECK_R9_2, .SeenText, .BeatenText

	text "We hang out here"
	line "every day! Every"
	
	para "day until the end"
	line "of time!"
	done
	
.SeenText:
	text "Join our team!"
	
	para "Actually, I will"
	line "force you to join"
	cont "our team!"
	done

.BeatenText:
	text "Our team doesn't"
	line "need a trainer who"
	
	para "is quite that"
	line "strong!"
	done
	
R9SignText:
	text "Route 9"
	
	para "East to Opelucid"
	line "City."
	done
	
R9MallSignText:
	text "Shopping Mall 9"
	
	para "Wares for serious"
	line "#mon trainers."
	done
	
R9BridgeSignText:
	text "Tubeline Bridge"
	line "ahead."
	
	para "Passage to"
	line "Icirrus City."
	done
	