AspertiaGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 21, ASPERTIA_CITY, 7
	warp_event  5, 21, ASPERTIA_CITY, 7

	def_coord_events
	coord_event  4, 17, 0, AspertiaGymYoungsterScript1
	coord_event  5, 17, 0, AspertiaGymYoungsterScript2
	coord_event  4, 11, 0, AspertiaGymLassScript1
	coord_event  5, 11, 0, AspertiaGymLassScript2

	def_bg_events
	bg_event  3, 19, BGEVENT_READ, AspertiaGymStatue
	bg_event  6, 19, BGEVENT_READ, AspertiaGymStatue

	def_object_events
	object_event  5, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaGymYoungsterAfterText, -1
	object_event  5,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaGymLassAfterText, -1
	object_event  5,  1, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, AspertiaGymCherenScript, -1
	object_event  5, 19, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaGymGuyScript, -1

	object_const_def
	const ASPERTIAGYM_YOUNGSTER
	const ASPERTIAGYM_LASS
	
AspertiaGymCherenScript:
	checkevent EVENT_BEAT_CHEREN
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer CHEREN, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHEREN
	opentext
	givebadge BASICBADGE, 0
	writethistext
	text "Congratulations,"
	line "<PLAYER>."

	para "I give you this"
	line "in honor of the"

	para "strength you and"
	line "your #mon"
	cont "showed."

	para "With the Basic"
	line "Badge, you'll be"

	para "able to command"
	line "all #mon up to"
	cont "level 60."

	para "You will also be"
	line "able to use the"
	cont "move Strength"
	cont "outside of battle."
	
	para "And, I want you"
	line "to take this!"
	done
	promptbutton
	verbosegivetmhm TM_FACADE
	setevent EVENT_GOT_TM42_FACADE
	writethistext
	text "TM42 can teach"
	line "your #mon the"
	cont "move Facade."

	para "It doubles in"
	line "power if your"
	
	para "#mon has a"
	line "status condition."

	para "In this way, it"
	line "can turn a"
	cont "handicap into an"
	cont "advantage."
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "Years ago, I too"
	line "set out on a"

	para "#mon journey"
	line "with my friends,"
	cont "#dex in hand."

	para "Keep collecting"
	line "badges and getting"
	cont "stronger!"
	done
	
.SeenText:
	text "<PLAYER>! Welcome"
	line "to Aspertia City"
	cont "#mon Gym."
	
	para "I'm grateful for"
	line "your help before,"

	para "but this is"
	line "different."

	para "Here, I accept"
	line "your challenge as"

	para "the Aspertia City"
	line "Gym Leader."
	
	para "Let's both do our"
	line "best and have a"

	para "battle we can be"
	line "proud of."
	done
	
.BeatenText:
	text "This! This is what"
	line "a real #mon"
	cont "battle is!"
	done

AspertiaGymGuyScript:
	checkevent EVENT_BEAT_CHEREN
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "Yo, challenger!"

	para "Cheren is the"
	line "leader of this"
	cont "Gym. He teaches"

	para "students how to"
	line "train #mon."

	para "He's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see…"
	line "Cheren's #mon"

	para "are all Normal"
	line "type. Their only"
	
	para "weakness is the"
	line "Fighting type."
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
	
AspertiaGymStatue:
	gettrainername CHEREN, 1, STRING_BUFFER_4
	checkflag ENGINE_BASICBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2
	
AspertiaGymYoungsterScript1:
	checkevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	iftruefwd .done
	applymovement PLAYER, AspertiaGym_PlayerApproachMovement1
	sjumpfwd AspertiaGymYoungsterScript
.done
	end
	
AspertiaGymYoungsterScript2:
	checkevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	iftruefwd .done
	applymovement PLAYER, AspertiaGym_PlayerApproachMovement2
	sjumpfwd AspertiaGymYoungsterScript
.done
	end
	
AspertiaGymYoungsterScript:
	showtext .SeenText
	applymovement PLAYER, AspertiaGym_PlayerReadyMovement
	turnobject ASPERTIAGYM_YOUNGSTER, LEFT
	winlosstext .BeatenText, 0
	loadtrainer YOUNGSTER, YOUNGSTER_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	end
	
.SeenText:
	text "Cheren saw"
	line "potential in me"
	
	para "and made me a"
	line "trainer in this"
	cont "Gym!"
	done
	
.BeatenText:
	text "You're strong. Or"
	line "should I say your"
	
	para "#mon are"
	line "strong?"
	done
	
AspertiaGymYoungsterAfterText:
	text "The reason he saw"
	line "potential in me"

	para "was that there was"
	line "no one else?"
	
	para "No way! Even if"
	line "that's true, I"
	
	para "just have to get"
	line "stronger!"
	done
	
AspertiaGymLassScript1:
	checkevent EVENT_BEAT_LASS_ASPERTIA_GYM
	iftruefwd .done
	applymovement PLAYER, AspertiaGym_PlayerApproachMovement1
	sjumpfwd AspertiaGymLassScript
.done
	end
	
AspertiaGymLassScript2:
	checkevent EVENT_BEAT_LASS_ASPERTIA_GYM
	iftruefwd .done
	applymovement PLAYER, AspertiaGym_PlayerApproachMovement2
	sjumpfwd AspertiaGymLassScript
.done
	end
	
AspertiaGymLassScript:
	showtext .SeenText
	applymovement PLAYER, AspertiaGym_PlayerReadyMovement
	turnobject ASPERTIAGYM_LASS, LEFT
	winlosstext .BeatenText, 0
	loadtrainer LASS_D, LASS_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_ASPERTIA_GYM
	end
	
.SeenText:
	text "Now I'll show you"
	line "all of the things"

	para "I learned from"
	line "Cheren!"
	done
	
.BeatenText:
	text "For knowledge to"
	line "become your own,"
	
	para "you need to test"
	line "it out yourself."
	done
	
AspertiaGymLassAfterText:
	text "I have to learn"
	line "even more about"
	cont "my #mon!"
	done
	
AspertiaGym_PlayerApproachMovement1:
	step_up
	step_right
	turn_head_up
	step_end
	
AspertiaGym_PlayerApproachMovement2:
	step_up
	step_end
	
AspertiaGym_PlayerReadyMovement:
	step_left
	step_up
	turn_head_right
	step_end
	