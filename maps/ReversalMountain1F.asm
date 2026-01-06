ReversalMountain1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 47,  7, REVERSAL_MOUNTAIN_B1F, 2
	warp_event 41, 19, REVERSAL_MOUNTAIN_B1F, 4
	warp_event 17, 23, REVERSAL_MOUNTAIN_B1F, 5
	warp_event  5,  3, REVERSAL_MOUNTAIN_B1F, 3

	def_coord_events

	def_bg_events
	bg_event 22, 20, BGEVENT_ITEM + ELIXIR, EVENT_REVERSAL_MOUNTAIN_1F_ELIXIR
	
	def_object_events
	object_event  4,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ReversalMountain1FGruntScript, EVENT_REVERSAL_MOUNTAIN_1F_GRUNT
	object_event 31, 41, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 2, TrainerSchoolKidFReversal, -1
	object_event 16, 25, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 1, TrainerHiker2Reversal, -1
	object_event  6, 16, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackpackerFReversal, -1
	object_event  6, 27, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMReversal, -1
	object_event 33, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerBlackBeltReversal, -1
	object_event 26, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 3, TrainerLassReversal, -1
	itemball_event 32,  7, X_DEFEND, 1, EVENT_REVERSAL_MOUNTAIN_1F_X_DEFEND
	itemball_event 13, 10, GREAT_BALL, 3, EVENT_REVERSAL_MOUNTAIN_1F_GREAT_BALL
	itemball_event 11, 22, AWAKENING, 1, EVENT_REVERSAL_MOUNTAIN_1F_AWAKENING
	itemball_event 41, 25, DUSK_BALL, 3, EVENT_REVERSAL_MOUNTAIN_1F_DUSK_BALL
	itemball_event 21,  7, BLUE_SHARD, 1, EVENT_REVERSAL_MOUNTAIN_1F_BLUE_SHARD
	
	object_const_def
	const REVERSALMOUNTAIN1F_GRUNT
	
ReversalMountain1FGruntScript:
	showtext .IntroText
	showemote EMOTE_SHOCK, REVERSALMOUNTAIN1F_GRUNT, 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	turnobject REVERSALMOUNTAIN1F_GRUNT, DOWN
	showtext .StartBattleText
	winlosstext .BeatenText, 0
	setlasttalked REVERSALMOUNTAIN1F_GRUNT
	loadtrainer GRUNTM, GRUNTM_REVERSAL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .AfterText
	applymovement REVERSALMOUNTAIN1F_GRUNT, ReversalGruntMovement
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	disappear REVERSALMOUNTAIN1F_GRUNT
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
.IntroText:
	text "…"

	para "I think this is"
	line "the way out…?"
	done
	
.StartBattleText:
	text "Hey! Don't sneak"
	line "up on a guy like"
	cont "that!"

	para "Don't you know"
	line "who I am?"
	
	para "I'll teach you not"
	line "to mess with Team"
	cont "Plasma!"
	done
	
.BeatenText:
	text "No! How could I"
	line "lose?"
	done
	
.AfterText:
	text "Darn it! You've"
	line "made a powerful"
	cont "enemy today!"

	para "Team Plasma is not"
	line "to be messed with!"
	
	para "Once I figure out"
	line "where I am, you're"
	cont "done for!"
	done
	
TrainerSchoolKidFReversal:
	generictrainer SCHOOL_KIDF, SCHOOL_KIDF_REVERSAL, EVENT_BEAT_SCHOOL_KIDF_REVERSAL, .SeenText, .BeatenText

	text "My #mon will"
	line "always be with me,"
	cont "even if we lose!"
	done
	
.SeenText:
	text "Hi there! Look at"
	line "my awesome #-"
	cont "mon!"
	done
	
.BeatenText:
	text "I… I'm not mad!"
	done
	
TrainerHiker2Reversal:
	generictrainer HIKER_D, HIKER_REVERSAL_2, EVENT_BEAT_HIKER_REVERSAL_2, .SeenText, .BeatenText

	text "Me and my #mon"
	line "will be wherever"

	para "there's ore to be"
	line "found!"
	done
	
.SeenText:
	text "My #mon dig"
	line "cause they believe"

	para "they're gonna find"
	line "something, and"
	
	para "they battle cause"
	line "they believe"
	cont "they're gonna win!"
	done
	
.BeatenText:
	text "I may have lost,"
	line "but I still"
	
	para "believe in my"
	line "#mon!"
	done
	
TrainerBackpackerFReversal:
	generictrainer BACKPACKERF, BACKPACKERF_REVERSAL, EVENT_BEAT_BACKPACKERF_REVERSAL, .SeenText, .BeatenText

	text "Echo, oh, oh!"
	line "…"
	
	para "Your voice really"
	line "echoes in a path"
	cont "like this, huh?"
	done
	
.SeenText:
	text "Hello, lo, lo!"
	done
	
.BeatenText:
	text "I, I, I…"
	line "Lost, lost, lost!"
	done
	
TrainerBackpackerMReversal:
	generictrainer BACKPACKERM, BACKPACKERM_REVERSAL, EVENT_BEAT_BACKPACKERM_REVERSAL, .SeenText, .BeatenText

	text "Turning bad luck"
	line "into good luck…"

	para "I wish I knew how"
	line "to do that."
	done
	
.SeenText:
	text "You sure are"
	line "unlucky to have"

	para "run into someone"
	line "as strong as me!"
	done
	
.BeatenText:
	text "I guess it was I"
	line "who was unlucky to"
	cont "run into you!"
	done
	
TrainerBlackBeltReversal:
	generictrainer BLACKBELT_T, BLACKBELT_REVERSAL, EVENT_BEAT_BLACKBELT_REVERSAL, .SeenText, .BeatenText

	text "Look carefully,"
	line "you might find"

	para "items on the"
	line "ground!"
	done
	
.SeenText:
	text "Oh! I haven't seen"
	line "you before! Would"

	para "you mind sparring"
	line "with me?"
	done
	
.BeatenText:
	text "Wow, impressive!"
	
	para "For one so young,"
	line "you're quite good!"
	done
	
TrainerLassReversal:
	generictrainer LASS_D, LASS_REVERSAL, EVENT_BEAT_LASS_REVERSAL, .SeenText, .BeatenText

	text "This is one of my"
	line "favorite places"
	cont "to train!"
	done
	
.SeenText:
	text "Sure, I'll be your"
	line "opponent, right"

	para "alongside my"
	line "trusty Munna!"
	done
	
.BeatenText:
	text "You're strong!"
	done
	
ReversalGruntMovement:
	step_right
	step_up
	step_up
	step_up
	step_up
	step_end
