ElesasRoom_MapScriptHeader:
	def_scene_scripts
	scene_script ElesasRoomTrigger0
	scene_script ElesasRoomTrigger1
	scene_script ElesasRoomTrigger2

	def_callbacks
	callback MAPCALLBACK_TILES, ElesasRoomTileScript

	def_warp_events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 5
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  4, SPRITE_ELESA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, EliteFourElesaScript, -1
	
ElesasRoomTrigger0:
	sdefer ElesasRoom_EnterScript
ElesasRoomTrigger1:
ElesasRoomTrigger2:
	end
	
ElesasRoom_EnterScript:
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .MovePlayer
	changeblock  8,  4, $8b ; warp panel active
.MovePlayer
	applymovement PLAYER, .Movement1
	playsound SFX_MENU
	changeblock  4, 12, $7b
	changeblock  8, 12, $90
	reanchormap
	applymovement PLAYER, .Movement2
	playsound SFX_MENU
	changeblock  4, 10, $7b
	changeblock  8, 10, $90
	reanchormap
	applymovement PLAYER, .Movement3
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $2b
	reanchormap
	waitsfx
	playsound SFX_MENU
	changeblock  2,  2, $7b
	changeblock  2,  4, $7b
	changeblock  2,  6, $7b
	changeblock 10,  2, $87
	changeblock 10,  4, $83
	changeblock 10,  6, $8f
	reanchormap
	setscene 1
	waitsfx
	end
	
.Movement1:
	step_up
	step_end
	
.Movement2:
	step_up
	step_up
	step_end
	
.Movement3:
	step_up
	step_up
	step_up
	step_up
	step_end
	
ElesasRoomTileScript:
	checkscene
	ifequalfwd 0, .done ; we are entering the room
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .AppearLights
	changeblock  8,  4, $8b ; warp panel active
.AppearLights
	changeblock  2,  2, $7b
	changeblock  2,  4, $7b
	changeblock  2,  6, $7b
	changeblock 10,  2, $87
	changeblock 10,  4, $83
	changeblock 10,  6, $8f
	changeblock  4, 10, $7b
	changeblock  8, 10, $90
	changeblock  4, 12, $7b
	changeblock  8, 12, $90
	changeblock  6,  8, $2b
.done
	endcallback
	
EliteFourElesaScript:
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iftrue_jumptextfaceplayer .BeatenText
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer ELESA, 1
	startbattle
	reloadmapafterbattle
	opentext
	writethistext
.AfterText:
	text "A model always has"
	line "to make other"
	
	para "people's dreams a"
	line "reality without"
	
	para "losing sight of"
	line "herself. It's"
	
	para "similar for #-"
	line "mon trainers. They"
	
	para "have to give"
	line "everything they"
	
	para "have to make their"
	line "#mon feel like"
	
	para "they can win, no"
	line "matter the"
	cont "situation."
	
	para "Remember that as"
	line "you aim for even"
	cont "greater heights!"
	done
	waitbutton
	changeblock  8,  4, $8b ; warp panel active
	refreshmap
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_ELESA
	setscene 2
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .done
	setmapscene PKMN_LEAGUE_MAIN, 2
.done
	end
	
.SeenText:
	text "Welcome to the"
	line "main stage! I am"
	
	para "Elesa! World-"
	line "renowed model and"
	cont "#mon master!"
	
	para "From this grand"
	line "stage in the sky,"
	
	para "every performance"
	line "of battle from my"
	
	para "#mon are broad-"
	line "cast across the"
	cont "world!"
	
	para "Now, my beloved"
	line "#mon and your"
	
	para "#mon shall"
	line "compete! We're"
	
	para "going to see whose"
	line "star shines"
	cont "brightest!"
	done
	
.BeatenText:
	text "You've shocked me"
	line "through and"

	para "through! You've"
	line "melted my heart!"
	
	para "You're an even"
	line "more wonderful"
	
	para "trainer than I"
	line "expected. Your"
	
	para "sweet fighting"
	line "style swept me off"
	cont "my feet!"
	done
