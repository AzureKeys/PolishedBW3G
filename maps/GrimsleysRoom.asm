GrimsleysRoom_MapScriptHeader:
	def_scene_scripts
	scene_script GrimsleysRoomTrigger0
	scene_script GrimsleysRoomTrigger1
	scene_script GrimsleysRoomTrigger2

	def_callbacks
	callback MAPCALLBACK_TILES, GrimsleysRoomTileScript

	def_warp_events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 4
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  4, SPRITE_GRIMSLEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EliteFourGrimsleyScript, -1
	
GrimsleysRoomTrigger0:
	sdefer GrimsleysRoom_EnterScript
GrimsleysRoomTrigger1:
GrimsleysRoomTrigger2:
	end
	
GrimsleysRoom_EnterScript:
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .MovePlayer
	changeblock  8,  4, $1f ; warp panel active
.MovePlayer
	pause 10
	reanchormap
	playsound SFX_EMBER
	changeblock  4, 12, $6
	changeblock  8, 12, $7
	refreshmap
	closetext
	applymovement PLAYER, .Movement1
	reanchormap
	playsound SFX_EMBER
	changeblock  4, 10, $6
	changeblock  8, 10, $7
	refreshmap
	closetext
	applymovement PLAYER, .Movement2
	reanchormap
	playsound SFX_EMBER
	changeblock  2,  4, $6
	changeblock 10,  4, $12
	refreshmap
	closetext
	pause 30
	reanchormap
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $9
	refreshmap
	closetext
	waitsfx
	setscene 1
	end
	
.Movement1:
	step_up
	step_up
	step_up
	step_up
	step_end
	
.Movement2:
	step_up
	step_up
	step_up
	step_end
	
GrimsleysRoomTileScript:
	checkscene
	ifequalfwd 0, .done ; we are entering the room
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .AppearFire
	changeblock  8,  4, $1f ; warp panel active
.AppearFire
	changeblock  2,  4, $6
	changeblock  4, 10, $6
	changeblock  4, 12, $6
	changeblock 10,  4, $12
	changeblock  8, 10, $7
	changeblock  8, 12, $7
	changeblock  6,  8, $9
.done
	endcallback
	
EliteFourGrimsleyScript:
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iftrue_jumptextfaceplayer .BeatenText
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer GRIMSLEY, 1
	startbattle
	reloadmapafterbattle
	opentext
	writethistext
.AfterText:
	text "Now, I'm nothing"
	line "more than the one"
	cont "who lost my light…"
	
	para "But this loss will"
	line "make me shine even"
	
	para "brighter the next"
	line "time…"
	
	para "If I think that"
	line "way, it's not too"
	
	para "bad. Sigh… You"
	line "should take that"
	
	para "strength and test"
	line "it against the"
	
	para "rest of the Elite"
	line "Four."
	done
	waitbutton
	changeblock  8,  4, $1f ; warp panel active
	refreshmap
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	setscene 2
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .done
	setmapscene PKMN_LEAGUE_MAIN, 2
.done
	end
	
.SeenText:
	text "What will be"
	line "determined here is"
	cont "which of us can"
	
	para "absorb the oppo-"
	line "nent's light and"
	cont "shine…"
	
	para "But who will"
	line "decide that? It"
	
	para "shall be I,"
	line "Grimsley of the"
	cont "Elite Four, and I"
	
	para "will fulfill my"
	line "duty to be your"
	cont "opponent."
	done
	
.BeatenText:
	text "Whether or not you"
	line "get to fight at"
	
	para "full strength,"
	line "whether or not"
	
	para "luck smiles on"
	line "you- none of that"
	
	para "matters. Only"
	line "results matter."
	
	para "And a loss is a"
	line "loss. See, victory"
	
	para "shines like a"
	line "bright light. And"
	
	para "right now, you and"
	line "your #mon are"
	cont "shining!"
	done
