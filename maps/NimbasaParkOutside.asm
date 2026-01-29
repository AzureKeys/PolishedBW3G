NimbasaParkOutside_MapScriptHeader:
	def_scene_scripts
	scene_script NimbasaParkOutsideTrigger0
	scene_script NimbasaParkOutsideTrigger1
	scene_script NimbasaParkOutsideTrigger2
	scene_script NimbasaParkOutsideTrigger3

	def_callbacks
	callback MAPCALLBACK_OBJECTS, HandleNateRosa

	def_warp_events
	warp_event  4,  8, NIMBASA_CITY, 15
	warp_event  4,  9, NIMBASA_CITY, 16
	warp_event 20,  5, NIMBASA_PARK_COASTER_ROOM, 1
	warp_event 41,  7, NIMBASA_PARK_RUNWAY, 1

	def_coord_events
	coord_event  7,  9, 0, NimbasaParkBlockerScript

	def_bg_events
	bg_event 35,  6, BGEVENT_ITEM + FULL_HEAL, EVENT_NIMBASA_PARK_OUTSIDE_FULL_HEAL
	
	def_object_events
	object_event  8,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaParkOutsideBlockerText, EVENT_NIMBASA_PARK_OUTSIDE_BLOCKER
	object_event  7,  8, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_OUTSIDE_CHEREN
	object_event 29,  8, SPRITE_NATE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideNateRosaScript, EVENT_NIMBASA_PARK_OUTSIDE_NATE
	object_event 29,  8, SPRITE_ROSA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideNateRosaScript, EVENT_NIMBASA_PARK_OUTSIDE_ROSA
	itemball_event 47, 15, X_ACCURACY, 1, EVENT_NIMBASA_PARK_OUTSIDE_X_ACCURACY
	itemball_event 10, 12, ICE_HEAL, 1, EVENT_NIMBASA_PARK_OUTSIDE_ICE_HEAL
	itemball_event 26, 13, QUICK_BALL, 3, EVENT_NIMBASA_PARK_OUTSIDE_QUICK_BALL
	itemball_event 12,  3, AIR_BALLOON, 1, EVENT_NIMBASA_PARK_OUTSIDE_AIR_BALLOON
	
	object_const_def
	const NIMBASAPARKOUTSIDE_BLOCKER
	const NIMBASAPARKOUTSIDE_CHEREN
	const NIMBASAPARKOUTSIDE_NATE
	const NIMBASAPARKOUTSIDE_ROSA
	
NimbasaParkOutsideTrigger1:
	sdefer NimbasaParkOutside_BlockerLeaveScene
	end
	
NimbasaParkOutsideTrigger2:
	sdefer NimbasaParkOutside_GivePassScene
NimbasaParkOutsideTrigger0:
NimbasaParkOutsideTrigger3:
	end
	
NimbasaParkOutside_BlockerLeaveScene:
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .GruntText
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkOutside_BlockerLeaveMovement
	disappear NIMBASAPARKOUTSIDE_BLOCKER
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	turnobject NIMBASAPARKOUTSIDE_CHEREN, LEFT
	showtext .CherenText
	applymovement NIMBASAPARKOUTSIDE_CHEREN, NimbasaParkOutside_BlockerLeaveMovement
	disappear NIMBASAPARKOUTSIDE_CHEREN
	setscene 2
	end
	
.GruntText:
	text "Shoot! I can't"
	line "beat you. I'd"
	
	para "better go warn"
	line "the others!"
	done
	
.CherenText:
	text "Cheren: Just as I"
	line "thought, Team"
	
	para "Plasma's been"
	line "hiding out here."
	
	para "I'll go check out"
	line "the runway on the"
	cont "right side, you"
	
	para "can investigate"
	line "the coaster room,"
	
	para "it's in the big,"
	line "purple building."
	
	para "I'll call you if I"
	line "discover anything."
	
	para "Good luck,"
	line "<PLAYER>."
	done

NimbasaParkOutside_GivePassScene:
	moveobject NIMBASAPARKOUTSIDE_CHEREN, 40, 8
	appear NIMBASAPARKOUTSIDE_CHEREN
	turnobject PLAYER, LEFT
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	opentext
	writethistext
	text "Cheren: Thanks"
	line "for your help,"
	cont "<PLAYER>."
	
	para "Team Plasma are"
	line "definitely up to"
	cont "something big…"
	
	para "I'm going to take"
	line "the Subway back"
	cont "home, to Aspertia"
	cont "City."
	
	para "Here, take this"
	line "and you can take"
	cont "the Subway in"
	cont "Nimbasa City too."
	done
	
	promptbutton
	verbosegivekeyitem RAIL_PASS
	writethistext
	text "I'll let you know"
	line "if I discover any"
	cont "more Team Plasma"
	cont "activity."
	
	para "Thanks again,"
	line "<PLAYER>."
	done
	
	waitbutton
	closetext
	applymovement NIMBASAPARKOUTSIDE_CHEREN, NimbasaParkOutside_CherenMovement
	disappear NIMBASAPARKOUTSIDE_CHEREN
	setscene 2
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
HandleNateRosa:
	checkevent EVENT_NATE_ROSA_READY_FOR_BATTLE
	iffalsefwd .Disappear
	checkevent EVENT_BEAT_NATE_ROSA
	iffalsefwd .Appear
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .Disappear
	checkflag ENGINE_NATE_ROSA
	iftruefwd .Disappear
	; fallthrough
.Appear
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Female
	disappear NIMBASAPARKOUTSIDE_ROSA
	appear NIMBASAPARKOUTSIDE_NATE
	sjumpfwd .Done
.Female
	disappear NIMBASAPARKOUTSIDE_NATE
	appear NIMBASAPARKOUTSIDE_ROSA
	sjumpfwd .Done
.Disappear
	disappear NIMBASAPARKOUTSIDE_NATE
	disappear NIMBASAPARKOUTSIDE_ROSA
.Done
	endcallback
	
NimbasaParkBlockerScript:
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkOutside_BlockerMovement
	turnobject PLAYER, RIGHT
	showtext NimbasaParkOutsideBlockerText
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkOutside_BlockerResetMovement
	applymovement PLAYER, NimbasaParkOutside_PlayerMovement
	end
	
NimbasaParkOutsideNateRosaScript:
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Rosa
; Nate
	checkevent EVENT_GOT_SNIVY
	iftruefwd .NateOshawott
	checkevent EVENT_GOT_TEPIG
	iftruefwd .NateSnivy
; NateTepig
	loadtrainer NATE, NATE_TEPIG
	sjumpfwd .BattleStart
.NateOshawott
	loadtrainer NATE, NATE_OSHAWOTT
	sjumpfwd .BattleStart
.NateSnivy
	loadtrainer NATE, NATE_SNIVY
	sjumpfwd .BattleStart
.Rosa
	checkevent EVENT_GOT_SNIVY
	iftruefwd .RosaOshawott
	checkevent EVENT_GOT_TEPIG
	iftruefwd .RosaSnivy
; RosaTepig
	loadtrainer ROSA, ROSA_TEPIG
	sjumpfwd .BattleStart
.RosaOshawott
	loadtrainer ROSA, ROSA_OSHAWOTT
	sjumpfwd .BattleStart
.RosaSnivy
	loadtrainer ROSA, ROSA_SNIVY
	; fallthrough
.BattleStart:
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NATE_ROSA
	setflag ENGINE_NATE_ROSA
	showtext .AfterText
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NIMBASAPARKOUTSIDE_NATE
	disappear NIMBASAPARKOUTSIDE_ROSA
	pause 15
	special Special_FadeInQuickly
	playmapmusic
	end
	
.SeenText:
	text "..."
	done
	
.BeatenText:
	text "...!"
	done
	
.AfterText:
	text "..."
	done
	
NimbasaParkOutside_BlockerMovement:
	big_step_down
	turn_head_left
	step_end
	
NimbasaParkOutside_BlockerResetMovement:
	step_up
	turn_head_left
	step_end
	
NimbasaParkOutside_PlayerMovement:
	step_left
	step_end
	
NimbasaParkOutside_BlockerLeaveMovement:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
	
NimbasaParkOutside_CherenMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
NimbasaParkOutsideBlockerText:
	text "Hey! Don't you"
	line "know the Park's"
	cont "dangerous?"
	
	para "Go on, get out"
	line "of here!"
	done
