PkmnLeagueMain_MapScriptHeader:
	def_scene_scripts
	scene_script PkmnLeagueMainTrigger0
	scene_script PkmnLeagueMainTrigger1
	scene_script PkmnLeagueMainTrigger2

	def_callbacks
	callback MAPCALLBACK_TILES, PkmnLeagueMainTileScript

	def_warp_events
	warp_event 13, 19, PKMN_LEAGUE_ENTRANCE, 3
	warp_event 14, 19, PKMN_LEAGUE_ENTRANCE, 4
	warp_event 21,  9, MARSHALS_ROOM, 1
	warp_event 10,  5, GRIMSLEYS_ROOM, 1
	warp_event 17,  5, ELESAS_ROOM, 1
	warp_event  6,  9, COLRESSS_ROOM, 1
	warp_event 13, 13, PKMN_LEAGUE_MAIN, 7

	def_coord_events

	def_bg_events
	bg_event 13, 11, BGEVENT_UP, PkmnLeagueStatueScript
	bg_event 14, 11, BGEVENT_UP, PkmnLeagueStatueScript
	
	def_object_events
	
PkmnLeagueMainTrigger0:
	sdefer PkmnLeagueMain_EnterScript
PkmnLeagueMainTrigger1:
PkmnLeagueMainTrigger2:
	end
	
PkmnLeagueMain_EnterScript:
	applymovement PLAYER, .Movement
	reanchormap
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
	refreshmap
	closetext
	waitsfx
; if we've reached the Shadows, but not beat the league, that means
; we lost to Genesis/Juniper, so set statue to warp
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequalfwd 0, .Nothing ; Not reached Shadows' scene
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftruefwd .Nothing
	setscene 2 ; Statue warps to Champions Room Entrance
	end
	
.Nothing
	setscene 1
	end
	
.Movement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
PkmnLeagueMainTileScript:
; Set all elite four rooms to play entry animation on re-entry
	setmapscene MARSHALS_ROOM, 0
	setmapscene GRIMSLEYS_ROOM, 0
	setmapscene ELESAS_ROOM, 0
	setmapscene COLRESSS_ROOM, 0
; Show entry fence if we already entered
	checkscene
	ifequalfwd 0, .CheckMarshal
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
; Show lit floor tiles for E4 members we've beaten
.CheckMarshal
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .CheckElesa
	changeblock 16, 12, $c9
.CheckElesa
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .CheckGrimsley
	changeblock 16,  8, $c9
.CheckGrimsley
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .CheckColress
	changeblock 10,  8, $c8
.CheckColress
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .CheckFinished
	changeblock 10, 12, $c8
.CheckFinished
; Lit tile for statue warp
	checkscene
	ifequalfwd 2, .Finished
; if we've reached the Shadows, but not beat the league, that means
; we lost to Genesis/Juniper, so light statue warp tile anyway
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequalfwd 0, .done
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftruefwd .done
.Finished
	changeblock 12, 12, $ee
.done
	endcallback
	
PkmnLeagueStatueScript:
	checkscene
	ifnotequal 2, .ShowText
	special Special_FadeOutMusic
	pause 15
	special Special_FadeBlackQuickly
	playsound SFX_ELEVATOR
	pause 60
	warp CHAMPIONS_ROOM_ENTRANCE,  7, 16
	end
	
.ShowText:
	jumpthistext
	text "Four great"
	line "warriors form this"
	cont "#mon League."
	
	para "To the SouthWest"
	line "is one who has"
	
	para "great knowledge of"
	line "the Steel type."
	
	para "To the SouthEast"
	line "is one who"
	
	para "channels the power"
	line "of the Fighting"
	cont "type."
	
	para "To the NorthWest"
	line "is one who has"
	
	para "mastered the Dark"
	line "type."
	
	para "To the NorthEast"
	line "is one who shines"
	
	para "with the Electric"
	line "type."
	
	para "If you can defeat"
	line "these warriors"
	
	para "with your courage"
	line "and wisdom, you"
	
	para "shall be led to"
	line "the summit, where"
	
	para "the strongest"
	line "Champion awaits."
	done
