Route14_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4, 20, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route14NurseryAideScript, -1
	object_event 31,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPreschoolerM1R14, -1
	object_event 20,  9, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPreschoolerF1R14, -1
	object_event 18, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPreschoolerM2R14, -1
	object_event 10, 22, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPreschoolerF2R14, -1
	fruittree_event 23, 14, FRUITTREE_ROUTE_14, PERSIM_BERRY, PAL_NPC_PINK
	itemball_event 31,  9, ANTIDOTE, 1, EVENT_ROUTE_14_ANTIDOTE
	itemball_event 14, 16, POTION, 1, EVENT_ROUTE_14_POTION
	itemball_event 15, 25, NET_BALL, 3, EVENT_ROUTE_14_NET_BALL
	itemball_event 11, 20, HEART_SCALE, 1, EVENT_ROUTE_14_HEART_SCALE
	tmhmball_event 17,  9, TM_BULK_UP, EVENT_ROUTE_14_TM_BULK_UP
	
	object_const_def
	const ROUTE14_NURSERY_AIDE
	
Route14NurseryAideScript:
	checkevent EVENT_GOT_ROUTE_14_EGG
	iftrue_jumptextfaceplayer .GotEggText
	checkevent EVENT_BEAT_NURSERY_AIDE_R14
	iftruefwd .OfferEgg
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked ROUTE14_NURSERY_AIDE
	loadtrainer NURSERY_AIDE, NURSERY_AIDE_R14
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSERY_AIDE_R14
.OfferEgg:
	faceplayer
	opentext
	writetext .OfferEggText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	giveegg TOGEPI
	iffalse_jumpopenedtext .NoRoomText
	setevent EVENT_GOT_ROUTE_14_EGG
	jumpopenedtext .GotEggText
	
.SeenText:
	text "Good job making it"
	line "past our little"
	cont "test, trainer!"

	para "If you can beat"
	line "me, you'll receive"
	cont "a fabulous prize!"
	
	para "Go on, let's get"
	line "started!"
	done
	
.BeatenText:
	text "Oh, congrats! You"
	line "did it!"
	done
	
.OfferEggText:
	text "You've beaten me,"
	line "and won our school"
	cont "challenge!"
	
	para "As a prize from"
	line "us, take this rare"
	cont "#mon egg!"
	
	para "Would you like to"
	line "take it with you?"
	done
	
.RefusedText:
	text "Oh, well if you"
	line "change your mind,"
	
	para "you can come back"
	line "to claim your"
	cont "prize."
	done
	
.NoRoomText:
	text "Uh-oh, looks like"
	line "you have no room!"
	
	para "Come back when"
	line "you've made room,"
	
	para "and you can claim"
	line "your prize!"
	done
	
.GotEggText:
	text "If you keep that"
	line "egg with you on"
	
	para "your travels, it"
	line "will hatch into"
	cont "something great!"
	done
	
TrainerPreschoolerM1R14:
	generictrainer PRESCHOOLERM, PRESCHOOLERM_R14_1, EVENT_BEAT_PRESCHOOLERM_R14_1, .SeenText, .BeatenText

	text "I did my best,"
	line "so that's good,"
	cont "I guess."
	done
	
.SeenText:
	text "We're the five"
	line "trainers of the"
	cont "Undella Town"
	cont "school!"

	para "Can you beat all"
	line "of us?"
	done

.BeatenText:
	text "Wha? I lost?"
	done
	
TrainerPreschoolerF1R14:
	generictrainer PRESCHOOLERF, PRESCHOOLERF_R14_1, EVENT_BEAT_PRESCHOOLERF_R14_1, .SeenText, .BeatenText

	text "Teacher says to"
	line "try my hardest."
	
	para "So I'm not mad,"
	line "not even a little!"
	done
	
.SeenText:
	text "I'm number two!"
	line "I won't go easy!"
	done

.BeatenText:
	text "Uh-oh, I lost…"
	done
	
TrainerPreschoolerM2R14:
	generictrainer PRESCHOOLERM, PRESCHOOLERM_R14_2, EVENT_BEAT_PRESCHOOLERM_R14_2, .SeenText, .BeatenText

	text "I'm better at my"
	line "numbers than I am"
	cont "at #mon."
	done
	
.SeenText:
	text "What comes after"
	line "two? It's three!"
	
	para "Everyone knows"
	line "that!"
	done

.BeatenText:
	text "Ow! I got beat!"
	done
	
TrainerPreschoolerF2R14:
	generictrainer PRESCHOOLERF, PRESCHOOLERF_R14_2, EVENT_BEAT_PRESCHOOLERF_R14_2, .SeenText, .BeatenText

	text "I hope Teacher saw"
	line "how I did!"
	done
	
.SeenText:
	text "Are you tired yet?"
	line "If you can beat"
	
	para "me, you get to"
	line "battle Teacher!"
	done

.BeatenText:
	text "I lost too…"
	done
	