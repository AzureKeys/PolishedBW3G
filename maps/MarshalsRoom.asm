MarshalsRoom_MapScriptHeader:
	def_scene_scripts
	scene_script MarshalsRoomTrigger0
	scene_script MarshalsRoomTrigger1
	scene_script MarshalsRoomTrigger2

	def_callbacks
	callback MAPCALLBACK_TILES, MarshalsRoomTileScript

	def_warp_events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 3
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  4, SPRITE_MARSHAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EliteFourMarshalScript, -1
	
MarshalsRoomTrigger0:
	sdefer MarshalsRoom_EnterScript
MarshalsRoomTrigger1:
MarshalsRoomTrigger2:
	end
	
MarshalsRoom_EnterScript:
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .MovePlayer
	changeblock  8,  4, $37 ; warp panel active
.MovePlayer
	applymovement PLAYER, .Movement
	reanchormap
	playsound SFX_MEGA_PUNCH
	changeblock  4,  6, $7c
	changeblock  6,  6, $7d
	changeblock  8,  6, $7e
	changeblock 10,  6, $7f
	refreshmap
	closetext
	waitsfx
	reanchormap
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $2b
	refreshmap
	closetext
	waitsfx
	pause 30
	setscene 1
	end
	
.Movement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
MarshalsRoomTileScript:
	checkscene
	ifequalfwd 0, .done ; we are entering the room
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .AppearCage
	changeblock  8,  4, $37 ; warp panel active
.AppearCage
	changeblock  4,  6, $7c
	changeblock  6,  6, $7d
	changeblock  8,  6, $7e
	changeblock 10,  6, $7f
	changeblock  6,  8, $2b
.done
	endcallback
	
EliteFourMarshalScript:
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iftrue_jumptextfaceplayer .BeatenText
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer MARSHAL, 1
	startbattle
	reloadmapafterbattle
	opentext
	writethistext
.AfterText:
	text "You are a strong"
	line "challenger. Walk"
	
	para "the path you"
	line "believe in with"
	
	para "the #mon you"
	line "believe in. The"
	
	para "members of the"
	line "Elite Four are"
	
	para "powerful. Do not"
	line "underestimate"
	cont "them!"
	done
	waitbutton
	changeblock  8,  4, $37 ; warp panel active
	refreshmap
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	setscene 2
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .done
	setmapscene PKMN_LEAGUE_MAIN, 2
.done
	end
	
.SeenText:
	text "Greetings,"
	line "challenger. My"
	cont "name is Marshal."
	
	para "I am the No. 1"
	line "pupil of the great"
	cont "Alder."
	
	para "In order to master"
	line "the art of"
	
	para "fighting, I've"
	line "kept training."
	
	para "You're also"
	line "walking a similar"
	
	para "path with your"
	line "#mon. It is my"
	
	para "intention to test"
	line "you- to take you"
	
	para "to the limits of"
	line "your strength."
	cont "Kiai!"
	done
	
.BeatenText:
	text "Whew! Well done!"
	line "As your battles"
	
	para "continue, aim for"
	line "even greater"
	cont "heights!"
	done
