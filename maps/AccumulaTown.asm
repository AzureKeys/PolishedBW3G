AccumulaTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AccumulaFlyPoint

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 24, 14, BGEVENT_JUMPTEXT, AccumulaTownSignText
	bg_event 10,  9, BGEVENT_ITEM + MAX_REPEL, EVENT_ACCUMULA_TOWN_MAX_REPEL
	
	def_object_events
	object_event 19, 19, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaTownRyokuScript, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 18, 21, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownBlocker1Text, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 19, 21, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownBlocker2Text, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 20, 21, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownBlocker3Text, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 21, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownBlocker4Text, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 19,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownPokefanMText, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event  9, 18, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownCooltrainerFText, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event 14, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownTeacherText, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event 22, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaTownYoungsterText, EVENT_ACCUMULA_TOWN_PEOPLE
	keyitemball_event 19, 19, DATA_DISK, EVENT_ACCUMULA_TOWN_DATA_DISK
		
	object_const_def
	const ACCUMULATOWN_RYOKU
	const ACCUMULATOWN_BLOCKER_1
	const ACCUMULATOWN_BLOCKER_2
	const ACCUMULATOWN_BLOCKER_3
	const ACCUMULATOWN_BLOCKER_4
	const ACCUMULATOWN_POKEFAN_M
	const ACCUMULATOWN_COOLTRAINER_F
	const ACCUMULATOWN_TEACHER
	const ACCUMULATOWN_YOUNGSTER
	const ACCUMULATOWN_DATA_DISK
	
AccumulaFlyPoint:
	setflag ENGINE_FLYPOINT_ACCUMULA
	endcallback
	
AccumulaTownRyokuScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	opentext
	writethistext
	text "???: Oh dear…"
	
	para "Please, you must"
	line "allow me through."
	done
	promptbutton
	writetext AccumulaTownBlocker1Text
	promptbutton
	writethistext
	text "???: I really don't"
	line "have time for"
	cont "this…"
	done
	promptbutton
	writetext AccumulaTownBlocker2Text
	waitbutton
	closetext
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked ACCUMULATOWN_RYOKU
	loadtrainer RYOKU, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .AfterText
	readvar VAR_FACING
	ifnotequal DOWN, .skip_moving_player
	applymovement PLAYER, .PlayerMovement
.skip_moving_player
	applymovement ACCUMULATOWN_RYOKU, .RyokuMovement
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear ACCUMULATOWN_RYOKU
	disappear ACCUMULATOWN_BLOCKER_1
	disappear ACCUMULATOWN_BLOCKER_2
	disappear ACCUMULATOWN_BLOCKER_3
	disappear ACCUMULATOWN_BLOCKER_4
	appear ACCUMULATOWN_POKEFAN_M
	appear ACCUMULATOWN_COOLTRAINER_F
	appear ACCUMULATOWN_TEACHER
	appear ACCUMULATOWN_YOUNGSTER
	appear ACCUMULATOWN_DATA_DISK
	pause 15
	special Special_FadeInQuickly
	playmapmusic
	end
	
.PlayerMovement:
	big_step_left
	turn_head_right
	step_end
	
.RyokuMovement:
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
	
.SeenText:
	text "???: I've been"
	line "found out…"
	
	para "I have no choice"
	line "then…"
	
	para "I must battle my"
	line "way out!"
	done
	
.BeatenText:
	text "Oh dear…"
	done
	
.AfterText:
	text "Ryoku: I-I must"
	line "retreat! Here,"
	cont "take it!"
	done
	
AccumulaTownBlocker1Text:
	text "Man: Hey, you're"
	line "from that Team"
	cont "Plasma, aren't you?"
	
	para "You're probably up"
	line "to no good!"
	done
	
AccumulaTownBlocker2Text:
	text "We won't just let"
	line "Team Plasma come"
	cont "into our town like"
	cont "that!"
	done

AccumulaTownBlocker3Text:
	text "Woman: Hey, there"
	line "was a robbery in"
	
	para "Nacrene City just"
	line "recently, I bet"
	
	para "he had something"
	line "to do with it!"
	
	para "Man: That's why"
	line "he's in such a"
	
	para "hurry! He's trying"
	line "to get away!"
	
	para "Woman: Someone had"
	line "better stop him!"
	done

AccumulaTownBlocker4Text:
	text "Hey! What does"
	line "that Team Plasma"
	cont "guy think he's"
	cont "doing?"
	done

AccumulaTownPokefanMText:
	text "Back when Team"
	line "Plasma was first"
	
	para "formed, they"
	line "tried to recruit"
	
	para "people from our"
	line "town."
	
	para "A lot of us got"
	line "swept up in what"
	cont "they were saying."

	para "It was kind of"
	line "scary, now that I"
	cont "think about it."
	done

AccumulaTownCooltrainerFText:
	text "Have you visited"
	line "the Gym in"
	cont "Striaton City yet?"
	
	para "I heard their Gym"
	line "Leader was taking"
	
	para "a break, but he"
	line "decided to come"
	cont "back!"
	done

AccumulaTownYoungsterText:
	text "Team Plasma are no"
	line "good, thanks for"

	para "getting rid of"
	line "that guy!"
	done

AccumulaTownTeacherText:
	text "Oh, what's this?"
	
	para "You and your #-"
	line "mon somehow res-"
	cont "emble each other!"
	done
	
AccumulaTownSignText:
	text "Accumula Town."
	
	para "The fast-growing"
	line "town!"
	done
