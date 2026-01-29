NimbasaParkBasement_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	
	def_warp_events
	warp_event 13,  2, NIMBASA_PARK_RUNWAY, 3
	warp_event  1,  0, NIMBASA_PARK_BASEMENT, 3
	warp_event  4, 17, NIMBASA_PARK_BASEMENT, 2
	warp_event  5, 17, NIMBASA_PARK_BASEMENT, 2

	def_coord_events
	coord_event  6,  2, 0, NimbasaParkBasementInferScript
	coord_event  6,  3, 0, NimbasaParkBasementInferScript2
	coord_event  4, 16, 1, NimbasaParkBasementPlasmaScript1
	coord_event  5, 16, 1, NimbasaParkBasementPlasmaScript2

	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_INFER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_BASEMENT_INFER
	object_event  3, 15, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_BASEMENT_CHEREN
	object_event  4, 12, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_GRUNTS
	object_event  5, 10, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_GRUNTS
	
	object_const_def
	const NIMBASAPARKBASEMENT_INFER
	const NIMBASAPARKBASEMENT_CHEREN
	const NIMBASAPARKBASEMENT_GIALLO
	const NIMBASAPARKBASEMENT_SHADOW
	
NimbasaParkBasementInferScript2:
	moveobject NIMBASAPARKBASEMENT_INFER,  1,  3
	; fallthrough
NimbasaParkBasementInferScript:
	special Special_FadeOutMusic
	pause 15
	turnobject PLAYER, LEFT
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement NIMBASAPARKBASEMENT_INFER, .InferArriveMovement
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked NIMBASAPARKBASEMENT_INFER
	setevent EVENT_NIMBASA_PARK_BASEMENT_INFER ; set so she will be disappeared if we lose to her
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
;Tepig
	loadtrainer INFER1, INFER3_OSHAWOTT
	sjumpfwd .StartBattle
.Oshawott
	loadtrainer INFER1, INFER3_SNIVY
	sjumpfwd .StartBattle
.Snivy
	loadtrainer INFER1, INFER3_TEPIG
	; fallthrough
.StartBattle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext .AfterText
	playsound SFX_TACKLE
	applymovement PLAYER, .PushedMovement
	turnobject PLAYER, RIGHT
	applymovement NIMBASAPARKBASEMENT_INFER, .InferLeaveMovement
	disappear NIMBASAPARKBASEMENT_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	setscene 1
	end
	
.PushedMovement:
	big_step_up
	turn_head_down
	step_end
	
.InferArriveMovement:
	step_right
	step_right
	step_right
	step_right
	step_end
	
.InferLeaveMovement:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
	
.SeenText:
	text "Infer: You! What"
	line "are you doing"
	cont "here?"
	
	para "Team Plasma? I"
	line "thought I told you"
	
	para "not to mess around"
	line "with Team Plasma."
	
	para "What am I doing"
	line "here? Tch… You've"
	
	para "got some nerve"
	line "asking me that."
	
	para "I'll beat you to"
	line "test how I've"
	cont "improved."
	
	para "Come on!"
	done
	
.BeatenText:
	text "Darn… still not"
	line "good enough."
	done
	
.AfterText:
	text "No… Even after my"
	line "training, I still"
	cont "can't beat you!"
	
	para "Whatever! You'd"
	line "better keep your"
	
	para "nose out of Team"
	line "Plasma's business!"
	done
	
NimbasaParkBasementPlasmaScript1:
	applymovement PLAYER, NimbasaParkBasement_Up1Movement
	sjumpfwd NimbasaParkBasementPlasmaScript
	
NimbasaParkBasementPlasmaScript2:
	applymovement PLAYER, NimbasaParkBasement_ApproachMovement
	; fallthrough
NimbasaParkBasementPlasmaScript:
	turnobject NIMBASAPARKBASEMENT_GIALLO, DOWN
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .IntroText
	applymovement PLAYER, NimbasaParkBasement_Up1Movement
	applymovement NIMBASAPARKBASEMENT_SHADOW, .ShadowInterruptMovement
	showtext .ShadowProtectText
	applymovement NIMBASAPARKBASEMENT_CHEREN, .CherenApproachMovement
	turnobject NIMBASAPARKBASEMENT_CHEREN, RIGHT
	turnobject NIMBASAPARKBASEMENT_SHADOW, LEFT
	showtext .FightShadowText
	applymovement PLAYER, .ApproachGialloMovement
	turnobject NIMBASAPARKBASEMENT_GIALLO, RIGHT
	showtext .StartBattleText
	winlosstext .BeatenText, 0
	setlasttalked NIMBASAPARKBASEMENT_GIALLO
	loadtrainer GIALLO, 1
	startbattle
	dontrestartmapmusic
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .AfterBattleText
	turnobject NIMBASAPARKBASEMENT_SHADOW, UP
	turnobject NIMBASAPARKBASEMENT_GIALLO, DOWN
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NIMBASAPARKBASEMENT_SHADOW
	disappear NIMBASAPARKBASEMENT_GIALLO
	pause 15
	special Special_FadeInQuickly
	playmapmusic
	pause 15
	applymovement NIMBASAPARKBASEMENT_CHEREN, .CherenAfterMovement
	showtext .CherenAfterText
	setscene 2
	setevent EVENT_NIMBASA_PARK_COASTER_ROOM_HIDDEN_GRUNT
	setmapscene NIMBASA_PARK_OUTSIDE, 2
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear NIMBASAPARKBASEMENT_CHEREN
	warp NIMBASA_PARK_OUTSIDE, 41,  8
	end
	
.ShadowInterruptMovement:
	big_step_right
	turn_head_down
	step_end
	
.CherenApproachMovement:
	step_up
	step_up
	step_end
	
.ApproachGialloMovement:
	step_right
	step_up
	step_up
	turn_head_left
	step_end
	
.CherenAfterMovement:
	step_up
	step_right
	step_end
	
.IntroText:
	text "You fools, you've"
	line "been interfering"
	
	para "with Team Plasma's"
	line "plans, but you're"
	cont "too late."
	
	para "The Thunder Ele-"
	line "ment has already"
	
	para "been extracted"
	line "from the"
	cont "generator."
	
	para "Cheren: Whatever"
	line "you're planning,"
	
	para "you won't succeed."
	line "We'll stop you!"
	done
	
.ShadowProtectText:
	text "I will protect"
	line "you, Sage Giallo…"
	done
	
.FightShadowText:
	text "Cheren: <PLAYER>,"
	line "I'll handle him,"
	cont "you take the Sage."
	done
	
.StartBattleText:
	text "Giallo: Foolish"
	line "child! You think"
	
	para "you are a match"
	line "for a Sage of Team"
	cont "Plasma?"
	
	para "Allow me to show"
	line "how outclassed"
	cont "you truly are!"
	done
	
.BeatenText:
	text "No! This cannot"
	line "be!"
	done
	
.AfterBattleText:
	text "Giallo: It matters"
	line "not, we have what"
	cont "we came for."
	
	para "Come, Shadow, take"
	line "us out of here!"
	done
	
.CherenAfterText:
	text "Cheren: Darn, they"
	line "got away…"
	
	para "C'mon, let's go."
	line "I'll take us"
	cont "back outside."
	done
	
NimbasaParkBasement_Up1Movement:
	step_up
	step_end
	
NimbasaParkBasement_ApproachMovement:
	step_left
	step_up
	step_end
