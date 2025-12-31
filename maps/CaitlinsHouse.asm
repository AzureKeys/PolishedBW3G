CaitlinsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script CaitlinsHouseTrigger0
	scene_script CaitlinsHouseTrigger1

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MoveCaitlinAndCynthia

	def_warp_events
	warp_event  4, 15, UNDELLA_TOWN, 4
	warp_event  5, 15, UNDELLA_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_CAITLIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CaitlinsHouseCaitlinScript, -1
	object_event  5, 11, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CaitlinsHouseCynthiaScript, -1
	
	object_const_def
	const CAITLINSHOUSE_CAITLIN
	const CAITLINSHOUSE_CYNTHIA
	
CaitlinsHouseTrigger0:
	sdefer CaitlinsHouse_TriggerBattle
CaitlinsHouseTrigger1:
	end
	
MoveCaitlinAndCynthia:
	checkevent EVENT_BEAT_CYNTHIA
	iftrue .done
	moveobject CAITLINSHOUSE_CAITLIN,  1, 10
	moveobject CAITLINSHOUSE_CYNTHIA,  3,  9
.done
	endcallback
	
CaitlinsHouse_TriggerBattle:
	showtext .CaitlinIntroText
	applymovement CAITLINSHOUSE_CAITLIN, CaitlinsHouse_CaitlinApproachMovement
	showtext .CaitlinApproachText
	applymovement PLAYER, CaitlinsHouse_StepUpMovement
	winlosstext CaitlinsHouseCaitlinBeatenText, 0
	setlasttalked CAITLINSHOUSE_CAITLIN
	loadtrainer CAITLIN, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext CaitlinsHouseCaitlinAfterText
	promptbutton
	special Special_FadeOutMusic
	writethistext
	text "What's this?"
	done
	waitbutton
	closetext
	playmusic MUSIC_CYNTHIA_ENCOUNTER
	applymovement CAITLINSHOUSE_CYNTHIA, CaitlinsHouse_StepDownMovement
	showtext .CynthiaApproachText
	applymovement CAITLINSHOUSE_CYNTHIA, CaitlinsHouse_CynthiaApproachMovement
	turnobject PLAYER, RIGHT
	special HealParty
	winlosstext CaitlinsHouseCynthiaBeatenText, 0
	setlasttalked CAITLINSHOUSE_CYNTHIA
	loadtrainer CYNTHIA, 1
	startbattle
	reloadmapafterbattle
	showtext CaitlinsHouseCynthiaAfterText
	setevent EVENT_BEAT_CYNTHIA
	setflag ENGINE_CAITLIN
	setflag ENGINE_CYNTHIA
	setscene 1
	end
	
.CaitlinIntroText:
	text "Huh? Who's there?"
	done

.CaitlinApproachText:
	text "How impudent you"
	line "are to disturb my"
	cont "sleep."
	
	para "Hmf… You…"
	
	para "You are the one"
	line "who became"
	
	para "Champion not too"
	line "long ago. How"
	cont "intriguing…"
	
	para "I'd like to test"
	line "your power. Try"
	
	para "not to bore me"
	line "with a yawn"
	cont "inducing battle."
	done
	
.CynthiaApproachText:
	text "What's your name,"
	line "trainer?"
	
	para "<PLAYER>?"
	
	para "Well, you must be"
	line "a talented trainer"
	
	para "if you were able"
	line "to beat Caitlin."
	
	para "She used to be a"
	line "member of the"
	
	para "Elite Four, you"
	line "know!"
	
	para "You've got me"
	line "intrigued,"
	cont "<PLAYER>."
	
	para "I would like our"
	line "#mon to have a"
	
	para "match. Are you"
	line "ready?"
	done
	
CaitlinsHouseCaitlinScript:
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, .NoBattle
	checkflag ENGINE_CAITLIN
	iftruefwd .NoBattle
	showtext .IntroText
	winlosstext CaitlinsHouseCaitlinBeatenText, 0
	setlasttalked CAITLINSHOUSE_CAITLIN
	loadtrainer CAITLIN, 1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_CAITLIN
.NoBattle
	showtext CaitlinsHouseCaitlinAfterText
	end
	
.IntroText:
	text "Hmf… It's you"
	line "again. Still, you"
	
	para "possess that"
	line "combination of"
	
	para "kindness and"
	line "strength. You seem"
	
	para "stronger than"
	line "before… Do be sure"
	
	para "not to bore me"
	line "with a snooze-"
	cont "inducing battle."
	
	para "Is that clear?"
	done
	
CaitlinsHouseCynthiaScript:
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, .NoBattle
	checkflag ENGINE_CYNTHIA
	iftruefwd .NoBattle
	showtext .IntroText
	winlosstext CaitlinsHouseCynthiaBeatenText, 0
	setlasttalked CAITLINSHOUSE_CYNTHIA
	loadtrainer CYNTHIA, 1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_CYNTHIA
.NoBattle
	showtext CaitlinsHouseCynthiaAfterText
	end
	
.IntroText:
	text "How terrific to"
	line "see you again!"
	
	para "I've got to tell"
	line "you… My #mon"
	
	para "are excited to"
	line "battle yours."
	
	para "Would you care to"
	line "be my opponent?"
	done
	
CaitlinsHouse_CaitlinApproachMovement:
	step_right
	step_down
	step_down
	step_down
	step_right
	step_right
	turn_head_down
	step_end
	
CaitlinsHouse_CynthiaApproachMovement:
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_left
	step_end
	
CaitlinsHouse_StepUpMovement:
	step_up
	step_end
	
CaitlinsHouse_StepDownMovement:
	step_down
	step_end
	
CaitlinsHouseCaitlinBeatenText:
	text "Hm… How"
	line "interesting."
	done
	
CaitlinsHouseCynthiaBeatenText:
	text "My heart is"
	line "pounding. You are"
	
	para "truly a great"
	line "trainer!"
	done
	
CaitlinsHouseCaitlinAfterText:
	text "As a trainer, you"
	line "are both excellent"
	cont "and elegant."
	
	para "Your #mon have"
	line "class. I am very"
	
	para "pleased to have"
	line "battled you."
	done
	
CaitlinsHouseCynthiaAfterText:
	text "That was beyond my"
	line "expectation! What"
	
	para "an exceptional"
	line "battle!"
	
	para "You're a great"
	line "trainer, and it"
	
	para "would make me"
	line "happy to see you"
	cont "again sometime."
	done
	