ChampionsRoom_MapScriptHeader:
	def_scene_scripts
	scene_script ChampionsRoomTrigger0 ; Genesis battle
	scene_script ChampionsRoomTrigger1 ; initial Juniper battle
	scene_script ChampionsRoomTrigger2 ; normal champion battle
	scene_script ChampionsRoomTrigger3 ; post-credits scene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, ChampionsRoom_DisappearPlayer

	def_warp_events
	warp_event  7, 19, CHAMPIONS_ROOM_ENTRANCE, 1
	warp_event  7,  4, HALL_OF_FAME, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7, 10, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_JUNIPER
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 10, SPRITE_GENESIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GENESIS, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_GENESIS
	pokemon_event  7, 12, GENESECT, SPRITEMOVEDATA_STILL, -1, PAL_MON_GRAY, 0, EVENT_CHAMPIONS_ROOM_GENESECT_1
	pokemon_event  7, 12, GENESECT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_PURPLE, 0, EVENT_CHAMPIONS_ROOM_GENESECT_2
	
	object_const_def
	const CHAMPIONSROOM_JUNIPER
	const CHAMPIONSROOM_SHADOW_1
	const CHAMPIONSROOM_SHADOW_2
	const CHAMPIONSROOM_SHADOW_3
	const CHAMPIONSROOM_GENESIS
	const CHAMPIONSROOM_GENESECT_1
	const CHAMPIONSROOM_GENESECT_2
	
ChampionsRoomTrigger0:
	sdefer ChampionsRoom_StartGenesisEncounter
ChampionsRoomTrigger1:
	sdefer ChampionsRoom_StartJuniperEncounter
ChampionsRoomTrigger2:
	sdefer ChampionsRoom_StartChampionBattle
ChampionsRoomTrigger3:
	sdefer ChampionsRoom_PostCreditsScene
	
ChampionsRoom_DisappearPlayer:
; Disappear player during post-credits scene
	checkscene
	ifnotequal 3, .done
	disappear PLAYER
.done
	endcallback
	
ChampionsRoom_StartGenesisEncounter:
	pause 15
	applymovement PLAYER, ChampionsRoom_PlayerApproachMovement
	pause 60
	cry GENESIS_MON
	waitsfx
	turnobject CHAMPIONSROOM_GENESIS, DOWN
	pause 30
	applymovement CHAMPIONSROOM_GENESIS, .GenesisApproachMovement
	cry GENESIS_MON
	waitsfx
	winlosstext .BeatenText, 0
	loadtrainer GENESIS, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	cry GENESIS_MON
	writetext .RoarText
	waitbutton
	closetext
	cry GENESIS_MON
	waitsfx
	loadvar VAR_BATTLETYPE, BATTLETYPE_GENESIS
	loadwildmon GENESIS_MON, 70
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_GENESIS_PROJECT
	cry GENESIS_MON
	opentext
	writetext .RoarText
	promptbutton
	waitsfx
	setval GENESIS_MON
	special PlaySlowCry
	writetext .RoarText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SHUT_DOWN_PC
	waitsfx
	pause 60
	moveobject CHAMPIONSROOM_JUNIPER,  7, 18
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_JUNIPER
	waitsfx
	playmusic MUSIC_CHEREN_THEME
	turnobject PLAYER, DOWN
	pause 15
	applymovement CHAMPIONSROOM_JUNIPER, .JuniperApproachMovement
	showtext .JustBeatGenesisText
	playsound SFX_ENTER_DOOR
	waitsfx
	applymovement PLAYER, .PlayerAfterGenesisMovement
	applymovement CHAMPIONSROOM_JUNIPER, .JuniperAfterGenesisMovement
	appear CHAMPIONSROOM_SHADOW_1
	applymovement CHAMPIONSROOM_SHADOW_1, .Shadow1ApproachMovement
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_SHADOW_2
	waitsfx
	applymovement CHAMPIONSROOM_SHADOW_2, .Shadow2ApproachMovement
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_SHADOW_3
	waitsfx
	applymovement CHAMPIONSROOM_SHADOW_3, .Shadow3ApproachMovement
	showtext .ShadowsDefeatedText
	playsound SFX_BOOT_PC
	special FadeOutPalettes
	appear CHAMPIONSROOM_GENESECT_1
	turnobject PLAYER, DOWN
	pause 5
	disappear CHAMPIONSROOM_GENESIS
	waitsfx
	pause 15
	special FadeInPalettes
	showtext .ShadowsLeaveText
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_1, ChampionsRoom_TeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_1
	waitsfx
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_2, ChampionsRoom_TeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_2
	waitsfx
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_3, ChampionsRoom_TeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_3
	waitsfx
	turnobject PLAYER, RIGHT
	turnobject CHAMPIONSROOM_JUNIPER, LEFT
	showtext .HealText
	applymovement CHAMPIONSROOM_JUNIPER, .StepLeftMovement
	playsound SFX_FULL_HEAL
	special HealParty
	showtext .JuniperBattleIntroText
	setscene 1 ; Set to Initial Juniper scene in case we lose
	sjump StartChampionBattleScript
	
.GenesisApproachMovement:
	slow_step_down
	slow_step_down
	step_end
	
.JuniperApproachMovement:
	step_up
	step_up
	step_up
	step_up
	step_end
	
.PlayerAfterGenesisMovement:
	step_left
	step_up
	step_up
	turn_head_down
	step_end
	
.JuniperAfterGenesisMovement:
	step_right
	step_up
	step_up
	step_up
	turn_head_down
	step_end
	
.Shadow1ApproachMovement:
	step_up
	step_up
	step_up
	step_left
	turn_head_up
	step_end
	
.Shadow2ApproachMovement:
	step_up
	step_up
	step_up
	step_right
	turn_head_up
	step_end
	
.Shadow3ApproachMovement:
	step_up
	step_up
	step_up
	step_end
	
.StepLeftMovement:
	step_left
	step_end
	
.BeatenText:
	text "..."
	done

.RoarText:
	text "Graaahhh!"
	done

.JustBeatGenesisText:
	text "Juniper: <PLAYER>,"
	line "you've done it!"
	done

.ShadowsDefeatedText:
	text "Shadow: N-no!"
	line "This can't be!"
	
	para "Shadow: Our king"
	line "has been…"
	
	para "Juniper: Your"
	line "monster has been"
	
	para "stopped, thanks"
	line "to <PLAYER>."
	
	para "Shadow: …"
	
	para "It wasn't supposed"
	line "to be this way…"
	
	para "Lord Ghetsis was"
	line "supposed to lead"
	
	para "us… Be our king"
	line "again…"
	
	para "He was supposed to"
	line "claim his rightful"
	
	para "throne and usher"
	line "in a new era for"
	cont "Team Plasma…"
	
	para "So why…?"
	
	para "Why did it turn"
	line "out this way?!"
	
	para "Juniper: That"
	line "thing is not your"
	
	para "king. It's a #-"
	line "mon that you've"
	
	para "turned into a"
	line "mindless tool of"
	cont "destruction."
	
	para "Shadow: …"
	
	para "Perhaps…"
	
	para "Perhaps you are"
	line "right…"
	
	para "Perhaps it is the"
	line "case that we"
	cont "cannot…"
	
	para "Bring him back…"
	
	para "… … … …"
	
	para "Come, brothers."
	line "Let us…"
	cont "take him back…"
	done

.ShadowsLeaveText:
	text "Shadow: We will"
	line "leave the Mind"
	
	para "Link here with"
	line "you. We…"
	
	para "We have no need"
	line "for it anymore…"
	
	para "He…"
	
	para "He really isn't"
	line "coming back…"
	
	para "Team Plasma truly"
	line "is finished now."
	
	para "Without our king"
	line "by our side,"

	para "there is no point"
	line "in going on…"
	
	para "Let us make our"
	line "final departure"
	cont "now, brothers."
	done

.HealText:
	text "Juniper: Wow,"
	line "<PLAYER>! You"
	cont "were excellent!"
	
	para "You've not only"
	line "defeated the Elite"
	
	para "Four, you've also"
	line "stopped that thing"
	
	para "from wreaking"
	line "havok across"
	cont "Unova!"
	
	para "I knew from the"
	line "look in your eyes"
	
	para "when we first met"
	line "in Floccesy Town"
	
	para "that you were"
	line "going to be a"
	cont "great trainer."
	
	para "And now, there is"
	line "just one challenge"
	cont "left for you."
	
	para "But first, allow"
	line "me to heal your"
	cont "#mon."
	done
	
.JuniperBattleIntroText:
	text "Now then, <PLAYER>."
	
	para "As Champion of the"
	line "Unova region, I"
	
	para "Aurea Juniper,"
	line "accept your"
	cont "challenge!"
	done
	
ChampionsRoom_StartJuniperEncounter:
	appear CHAMPIONSROOM_JUNIPER
	pause 15
	applymovement PLAYER, .PlayerMovement
	applymovement CHAMPIONSROOM_JUNIPER, .JuniperMovement
	showtext ChampionsRoom_JuniperBattleIntroText
	sjumpfwd StartChampionBattleScript
	
.PlayerMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_left
	step_up
	step_up
	turn_head_right
	step_end
	
.JuniperMovement:
	step_down
	turn_head_left
	step_end
	
ChampionsRoom_StartChampionBattle:
	disappear CHAMPIONSROOM_GENESECT_1
	disappear CHAMPIONSROOM_GENESECT_2
	appear CHAMPIONSROOM_JUNIPER
	pause 15
	applymovement PLAYER, ChampionsRoom_PlayerApproachMovement
	showtext ChampionsRoom_JuniperBattleIntroText
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoom_StepDownMovement
	applymovement PLAYER, ChampionsRoom_StepUpMovement
	; fallthrough
	
StartChampionBattleScript:
	winlosstext .BeatenText, 0
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
	checkevent EVENT_GOT_TEPIG
	iftruefwd .Tepig
;Oshawott
	loadtrainer CHAMPION, JUNIPER_TEPIG
	sjumpfwd .StartBattle
.Snivy
	loadtrainer CHAMPION, JUNIPER_OSHAWOTT
	sjumpfwd .StartBattle
.Tepig
	loadtrainer CHAMPION, JUNIPER_SNIVY
	; fallthrough
.StartBattle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setscene 2 ; Set to regular Champion battle on next entry
	showtext .AfterText
	follow CHAMPIONSROOM_JUNIPER, PLAYER
	applymovement CHAMPIONSROOM_JUNIPER, .JuniperLeaveMovement
	stopfollow
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoom_TeleportOutMovement
	disappear CHAMPIONSROOM_JUNIPER
	waitsfx
	applymovement PLAYER, ChampionsRoom_StepUpMovement
	setmapscene HALL_OF_FAME, 0
	warpcheck
	end
	
.JuniperLeaveMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
.BeatenText:
	text "After this battle,"
	line "a fresh wind has"
	
	para "blown through my"
	line "heart…"
	
	para "Today, you and"
	line "your partners are"
	cont "Champions!"
	done
	
.AfterText:
	text "Well done,"
	line "<PLAYER>!"
	
	para "You certainly are"
	line "an unmatched"
	cont "talent!"
	
	para "Please, come with"
	line "me."
	done
	
ChampionsRoom_PostCreditsScene:
	pause 60
	playsound SFX_BOOT_PC
	appear CHAMPIONSROOM_GENESECT_2
	turnobject CHAMPIONSROOM_GENESECT_2, DOWN
	pause 5
	disappear CHAMPIONSROOM_GENESECT_1
	waitsfx
	pause 60
	cry GENESECT
	waitsfx
	pause 60
	playsound SFX_WARP_TO
	applymovement CHAMPIONSROOM_GENESECT_2, .LeaveMovement
	disappear CHAMPIONSROOM_GENESECT_2
	waitsfx
	pause 60
	special FadeOutPalettes
	pause 30
	returnfromcredits
	end
	
.LeaveMovement:
	fix_facing
	set_sliding
	step_up
	step_up
	step_up
	step_up
	remove_fixed_facing
	remove_sliding
	step_end
	
ChampionsRoom_PlayerApproachMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
ChampionsRoom_StepDownMovement:
	step_down
	step_end
	
ChampionsRoom_StepUpMovement:
	step_down
	step_end
	
ChampionsRoom_TeleportOutMovement:
	teleport_from
	step_end
	
ChampionsRoom_JuniperBattleIntroText:
	text "You've done well"
	line "to make it back"
	cont "here, <PLAYER>."
	
	para "Now as Champion of"
	line "the Unova region,"
	
	para "I, Aurea Juniper,"
	line "accept your"
	cont "challenge!"
	done
