PkmnLeagueEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PkmnLeagueEntrance_PrepareEliteFour

	def_warp_events
	warp_event 18, 17, VICTORY_ROAD_CAVE_3F, 4
	warp_event  7,  9, PKMN_LEAGUE_POKECENTER, 1
	warp_event 13,  5, PKMN_LEAGUE_MAIN, 1
	warp_event 14,  5, PKMN_LEAGUE_MAIN, 2

	def_coord_events
	coord_event 13, 15, 0, PkmnLeagueInferScript1
	coord_event 14, 15, 0, PkmnLeagueInferScript2

	def_bg_events
	
	def_object_events
	object_event 18, 17, SPRITE_INFER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PKMN_LEAGUE_ENTRANCE_INFER
	
	object_const_def
	const PKMNLEAGUEENTRANCE_INFER
	
PkmnLeagueEntrance_PrepareEliteFour:
	setmapscene PKMN_LEAGUE_MAIN, 0 ; walk into elite four area
	setmapscene HALL_OF_FAME, 0
; reset elite four if we haven't reached the Shadows' scene yet
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequalfwd 0, .ClearEliteFour
; if we've reached the Shadows, but not beat the league, that means
; we lost to Genesis/Juniper, so don't reset elite four
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalsefwd .done
.ClearEliteFour
	clearevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	clearevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	clearevent EVENT_BEAT_ELITE_FOUR_ELESA
	clearevent EVENT_BEAT_ELITE_FOUR_COLRESS
.done
	endcallback
	
PkmnLeagueInferScript1:
	scall PkmnLeagueEntrance_SetupInfer
	applymovement PKMNLEAGUEENTRANCE_INFER, .Movement
	sjumpfwd PkmnLeagueInferScript
.Movement:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
PkmnLeagueInferScript2:
	scall PkmnLeagueEntrance_SetupInfer
	applymovement PKMNLEAGUEENTRANCE_INFER, .Movement
	sjumpfwd PkmnLeagueInferScript
.Movement:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
PkmnLeagueEntrance_SetupInfer:
	special Special_FadeOutMusic
	pause 15
	showtext .IntroText
	appear PKMNLEAGUEENTRANCE_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	end
.IntroText:
	text "Hey!"
	done
	
PkmnLeagueInferScript:
	showtext .SeenText
	setevent EVENT_PKMN_LEAGUE_ENTRANCE_INFER ; disappear if we lose to her
	winlosstext .BeatenText, 0
	setlasttalked PKMNLEAGUEENTRANCE_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
;Tepig
	loadtrainer INFER2, INFER7_OSHAWOTT
	sjumpfwd .StartBattle
.Oshawott
	loadtrainer INFER2, INFER7_SNIVY
	sjumpfwd .StartBattle
.Snivy
	loadtrainer INFER2, INFER7_TEPIG
	; fallthrough
.StartBattle
	startbattle
	reloadmapafterbattle
	playmapmusic
	opentext
	writethistext
	text "I had a feeling it"
	line "would end this"
	cont "way…"
	
	para "Looks like I've"
	line "still got a lot to"
	cont "learn."
	
	para "Before I go, I"
	line "want you to have"
	
	para "this. Think of it"
	line "as an apology for"
	
	para "all the hassle I"
	line "put you through."
	done
	promptbutton
	verbosegivetmhm TM_EARTHQUAKE
	writethistext
	text "That TM teaches"
	line "Earthquake. It's"
	
	para "one of the most"
	line "powerful moves out"
	
	para "there. You'll need"
	line "it if you want to"
	
	para "take on the Elite"
	line "Four. Good luck in"
	
	para "there! And you'd"
	line "better not lose!"
	
	para "If you can take"
	line "out the #mon"
	
	para "League, I won't"
	line "feel as bad for"
	cont "losing to you!"
	
	para "See you, <PLAYER>!"
	done
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement PKMNLEAGUEENTRANCE_INFER, .WarpMovement
	disappear PKMNLEAGUEENTRANCE_INFER
	setflag ENGINE_FLYPOINT_PKMN_LEAGUE
	setscene 1
	end

.WarpMovement:
	teleport_from
	step_end
	
.SeenText:
	text "I figured I'd find"
	line "you here. I've"
	
	para "done a lot of"
	line "thinking since the"
	cont "last time we met."
	
	para "All that stuff"
	line "that happened back"
	cont "at the tower…"
	
	para "I'm… I'm sorry"
	line "about all that."
	
	para "I just wanted to"
	line "be a great #mon"
	cont "trainer so bad,"
	
	para "and it made me so"
	line "mad that I just"
	cont "couldn't beat you."
	
	para "But it wasn't just"
	line "you, I was mad at"
	cont "a lot of things…"
	
	para "My grandpa…"
	line "Team Plasma…"
	
	para "All that anger"
	line "made me lose sight"
	
	para "of why I wanted to"
	line "be a #mon"
	cont "trainer in the"
	cont "first place…"
	
	para "Because I love"
	line "#mon! With all"
	cont "my heart!"
	
	para "I'm going to be a"
	line "better trainer"
	
	para "from here on out,"
	line "for my #mon's"
	cont "sake."
	
	para "So I'm not mad at"
	line "you anymore,"
	cont "<PLAYER>."
	
	para "And I want to"
	line "challenge you one"
	cont "last time!"
	
	para "So come on! Give"
	line "it everything"
	cont "you've got!"
	done
	
.BeatenText:
	text "So that's how it"
	line "ends, huh…"
	done
