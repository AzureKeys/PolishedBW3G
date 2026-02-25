StriatonGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, StriatonGymDoorCallback
	callback MAPCALLBACK_OBJECTS, StriatonGymTrainerCallback

	def_warp_events
	warp_event  6, 17, STRIATON_CITY, 5
	warp_event  7, 17, STRIATON_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  5, 15, BGEVENT_READ, StriatonGymStatue
	bg_event  8, 15, BGEVENT_READ, StriatonGymStatue
	bg_event 13, 17, BGEVENT_READ, StriatonGymCanSwitch
	bg_event  5, 13, BGEVENT_READ, TrainerWaiter1StriatonGym
	bg_event  9, 10, BGEVENT_UP, TrainerWaiter2StriatonGym
	bg_event  0,  3, BGEVENT_UP, TrainerWaitress1StriatonGymLeft
	bg_event  1,  3, BGEVENT_UP, TrainerWaitress1StriatonGymRight
	bg_event 10, 15, BGEVENT_UP, TrainerWaitress2StriatonGymLeft
	bg_event 11, 15, BGEVENT_UP, TrainerWaitress2StriatonGymRight
	bg_event  3,  6, BGEVENT_UP, StriatonGymTableSwitch
	bg_event  7,  6, BGEVENT_JUMPTEXT, StriatonGymTableEmptyText
	bg_event  3, 10, BGEVENT_JUMPTEXT, StriatonGymTableEmptyText

	def_object_events
	object_event  5, 12, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonGymWaiter1AfterText, EVENT_STRIATON_GYM_WAITER_1
	object_event  8, 10, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonGymWaiter2AfterText, EVENT_STRIATON_GYM_WAITER_2
	object_event  2,  3, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonGymWaitress1AfterText, EVENT_STRIATON_GYM_WAITRESS_1
	object_event  9, 15, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonGymWaitress2AfterText, EVENT_STRIATON_GYM_WAITRESS_2
	object_event  6,  1, SPRITE_CILAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, StriatonGymCilanScript, -1
	object_event  7, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonGymGuyScript, -1
	object_event 11,  4, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerWaitress3StriatonGym, -1
	object_event 12,  6, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StriatonGymBartender1Script, -1
	object_event  2, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptext, StriatonGymBartender2Text, -1
	
	object_const_def
	const STRIATONGYM_WAITER_1
	const STRIATONGYM_WAITER_2
	const STRIATONGYM_WAITRESS_1
	const STRIATONGYM_WAITRESS_2
	
StriatonGymDoorCallback:
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalsefwd .done
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalsefwd .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalsefwd .done
	changeblock  6,  2, $6a
.done
	endcallback
	
StriatonGymTrainerCallback:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	iftruefwd .next
	disappear STRIATONGYM_WAITER_1
.next
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	iftruefwd .next2
	disappear STRIATONGYM_WAITER_2
.next2
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftruefwd .next3
	disappear STRIATONGYM_WAITRESS_1
.next3
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftruefwd .done
	disappear STRIATONGYM_WAITRESS_2
.done
	endcallback
	
StriatonGymCilanScript:
	checkevent EVENT_BEAT_CILAN
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer CILAN, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CILAN
	appear STRIATONGYM_WAITER_1
	appear STRIATONGYM_WAITER_2
	appear STRIATONGYM_WAITRESS_1
	appear STRIATONGYM_WAITRESS_2
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	opentext
	givebadge GARNISHBADGE, 0
	writethistext
	text "What a surprise."
	line "You are very"
	cont "strong…"

	para "With the Garnish"
	line "Badge, #mon up"
	cont "to Lv70 will obey"
	cont "your commands."

	para "You will also be"
	line "able to use the"
	cont "effects of Surf"
	cont "outside of battle."
	
	para "And, I want you"
	line "to have this."
	done
	promptbutton
	verbosegivetmhm TM_ENERGY_BALL
	setevent EVENT_GOT_TM53_ENERGY_BALL
	writethistext
	text "TM53 contains"
	line "Energy Ball."

	para "It's a strong"
	line "grass-type move,"
	
	para "and has a chance"
	line "to lower your"
	cont "opponent's Sp.Def."
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "Even if you fail,"
	line "keep on trying."

	para "With the right"
	line "resolve, even I"
	cont "could become a"
	cont "Gym Leader again."

	para "I know you'll go"
	line "far too!"
	done
	
.SeenText:
	text "Welcome to the"
	line "Striaton City"
	cont "#mon Gym."
	
	para "My grass #mon"
	line "and I have taken"

	para "the resolve to"
	line "run this Gym."

	para "So, no hard"
	line "feelings, we'll"

	para "battle whatever"
	line "comes our way."
	done
	
.BeatenText:
	text "Er… Is it over"
	line "now?"
	done

StriatonGymGuyScript:
	checkevent EVENT_BEAT_CILAN
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "Yo, challenger!"

	para "Cilan is the"
	line "leader of this"
	cont "Gym. Find the"

	para "hidden switches"
	line "to open his door."

	para "He's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see…"
	line "Cilan's #mon"

	para "are all grass"
	line "type. They have"
	
	para "many weaknesses,"
	line "but also many"
	cont "strengths."
	
	para "Fire and flying"
	line "would be your best"
	cont "bets!"
	done
	
.WinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#mon is bright!"
	done
	
StriatonGymStatue:
	gettrainername CILAN, 1, STRING_BUFFER_4
	checkflag ENGINE_GARNISHBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2
	
StriatonGymBartender1Script:
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iftrue_jumptext .PressedSwitchText
	opentext
	writetext StriatonGymBartenderQuestionText
	promptbutton
	yesorno
	iffalsefwd .done
	setevent EVENT_STRIATON_GYM_SWITCH_1
	writethistext
	text "Well you're right!"
	line "Press the switch!"
	done
	playsound SFX_TALLY
	waitsfx
	waitbutton
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalsefwd .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalsefwd .done
	changeblock  6,  2, $6a
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
.done
	closetext
	end
.PressedSwitchText:
	text "Go find the other"
	line "switches!"
	done
	
StriatonGymCanSwitch:
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iftrue_jumptext StriatonGymSwitchPressedText
	setevent EVENT_STRIATON_GYM_SWITCH_2
	opentext
	writetext StriatonGymPressSwitchText
	playsound SFX_TALLY
	waitsfx
	waitbutton
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalsefwd .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalsefwd .done
	changeblock  6,  2, $6a
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
.done
	closetext
	end
	
StriatonGymTableSwitch:
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iftrue_jumptext StriatonGymSwitchPressedText
	setevent EVENT_STRIATON_GYM_SWITCH_3
	opentext
	writetext StriatonGymPressSwitchText
	playsound SFX_TALLY
	waitsfx
	waitbutton
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalsefwd .done
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalsefwd .done
	changeblock  6,  2, $6a
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
.done
	closetext
	end
	
TrainerWaitress3StriatonGym:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	iftrue_jumptext .AfterText
	opentext
	writetext StriatonGymBartenderQuestionText
	promptbutton
	yesorno
	iffalsefwd .done
	playmusic MUSIC_LASS_ENCOUNTER
	writethistext
	text "Nope, sorry! I'm"
	line "a trainer!"
	done
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	end
	
.done
	closetext
	end
	
.BeatenText:
	text "Oh no! My #mon!"
	done
	
.AfterText:
	text "Try looking for"
	line "the switches in"
	cont "other places."
	done
	
StriatonGymBartenderQuestionText:
	text "Welcome to the"
	line "Striaton City Gym."
	
	para "Oh? Did you think"
	line "I have one of the"
	cont "secret switches?"
	done
	
StriatonGymBartender2Text:
	text "Welcome to the"
	line "Striaton City Gym."
	
	para "If you want to"
	line "reach the Leader,"
	
	para "you'll need to"
	line "find the three"
	
	para "secret switches"
	line "in the gym."
	
	para "Try checking under"
	line "the tables."
	done
	
TrainerWaiter1StriatonGym:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	iftrue_jumptext .EmptyCanText
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	readvar VAR_FACING
	ifequalfwd DOWN, .down
	appear STRIATONGYM_WAITER_1
	ifequalfwd LEFT, .left
	applymovement STRIATONGYM_WAITER_1, .RightMovement
	turnobject PLAYER, UP
	sjumpfwd .battle
.left
	applymovement STRIATONGYM_WAITER_1, .LeftMovement
	turnobject PLAYER, UP
	sjumpfwd .battle
.down
	moveobject STRIATONGYM_WAITER_1,  4, 13
	appear STRIATONGYM_WAITER_1
	applymovement STRIATONGYM_WAITER_1, .DownMovement
	turnobject PLAYER, LEFT
	; fallthrough
.battle
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer WAITER, WAITER_STRIATON_GYM_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	end
	
.RightMovement:
	step_left
	turn_head_down
	step_end
	
.LeftMovement:
	step_right
	turn_head_down
	step_end
	
.DownMovement:
	step_up
	turn_head_right
	step_end
	
.EmptyCanText:
	text "The can is empty."
	done
	
.SeenText:
	text "Aha! You thought"
	line "there was a switch"
	
	para "in here, but it"
	line "was me!"
	done
	
.BeatenText:
	text "Wasted!"
	done
	
StriatonGymWaiter1AfterText:
	text "It was kind of"
	line "smelly in that"
	cont "can…"
	done
	
TrainerWaiter2StriatonGym:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	iftrue_jumptext StriatonGymTableEmptyText
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	appear STRIATONGYM_WAITER_2
	applymovement STRIATONGYM_WAITER_2, .Movement
	turnobject PLAYER, LEFT
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer WAITER, WAITER_STRIATON_GYM_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	end
	
.Movement:
	step_down
	turn_head_right
	step_end
	
.SeenText:
	text "Aha! I'm a Waiter"
	line "who's also a #-"
	cont "mon trainer!"
	done
	
.BeatenText:
	text "Wonderful battle!"
	line "The experience is"
	cont "my tip!"
	done
	
StriatonGymWaiter2AfterText:
	text "Our specialty is"
	line "the best #mon"
	cont "battles."
	done
	
TrainerWaitress1StriatonGymLeft:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftrue_jumptext StriatonGymTableEmptyText
	playmusic MUSIC_LASS_ENCOUNTER
	appear STRIATONGYM_WAITRESS_1
	applymovement STRIATONGYM_WAITRESS_1, .Movement
	sjumpfwd TrainerWaitress1StriatonGym
	
.Movement:
	step_down
	step_left
	step_end
	
TrainerWaitress1StriatonGymRight:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftrue_jumptext StriatonGymTableEmptyText
	playmusic MUSIC_LASS_ENCOUNTER
	appear STRIATONGYM_WAITRESS_1
	applymovement STRIATONGYM_WAITRESS_1, .Movement
	sjumpfwd TrainerWaitress1StriatonGym
	
.Movement:
	step_down
	turn_head_left
	step_end
	
TrainerWaitress1StriatonGym:
	turnobject PLAYER, RIGHT
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	end
	
.SeenText:
	text "Welcome! Would you"
	line "like a water with"
	cont "your battle?"
	done
	
.BeatenText:
	text "Ah, bravo!"
	done
	
StriatonGymWaitress1AfterText:
	text "I had a feeling"
	line "you would check"
	cont "under there."
	done
	
TrainerWaitress2StriatonGymLeft:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftrue_jumptext StriatonGymTableEmptyText
	playmusic MUSIC_LASS_ENCOUNTER
	appear STRIATONGYM_WAITRESS_2
	applymovement STRIATONGYM_WAITRESS_2, .Movement
	sjumpfwd TrainerWaitress2StriatonGym
	
.Movement:
	step_down
	turn_head_right
	step_end
	
TrainerWaitress2StriatonGymRight:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftrue_jumptext StriatonGymTableEmptyText
	playmusic MUSIC_LASS_ENCOUNTER
	appear STRIATONGYM_WAITRESS_2
	applymovement STRIATONGYM_WAITRESS_2, .Movement
	sjumpfwd TrainerWaitress2StriatonGym
	
.Movement:
	step_down
	step_right
	step_end
	
TrainerWaitress2StriatonGym:
	turnobject PLAYER, LEFT
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_2
	startbattle
	reloadmapafterbattle
	opentext
	writethistext
	text "Okay, you can have"
	line "this, like I"
	cont "promised."
	done
	promptbutton
	verbosegiveitem LEMONADE
	closetext
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	end
	
.SeenText:
	text "Battling makes us"
	line "thirsty, right?"
	
	para "If you can win"
	line "against me, I'll"
	cont "give you a drink!"
	done
	
.BeatenText:
	text "The battle made me"
	line "even thirstier!"
	done
	
StriatonGymWaitress2AfterText:
	text "At a place like"
	line "this, it's good to"
	cont "stay hydrated!"
	done
	
StriatonGymTableEmptyText:
	text "There's nothing"
	line "underneath."
	done
	
StriatonGymPressSwitchText:
	text "A secret switch!"
	line "Let's press it!"
	done
	
StriatonGymSwitchPressedText:
	text "The switch is"
	line "already pressed."
	done
	