ColresssRoom_MapScriptHeader:
	def_scene_scripts
	scene_script ColresssRoomTrigger0
	scene_script ColresssRoomTrigger1
	scene_script ColresssRoomTrigger2

	def_callbacks
	callback MAPCALLBACK_TILES, ColresssRoomTileScript

	def_warp_events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 6
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  4, SPRITE_COLRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EliteFourColressScript, -1
	
ColresssRoomTrigger0:
	sdefer ColresssRoom_EnterScript
ColresssRoomTrigger1:
ColresssRoomTrigger2:
	end
	
ColresssRoom_EnterScript:
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .MovePlayer
	changeblock  8,  4, $9b ; warp panel active
.MovePlayer
	applymovement PLAYER, .Movement
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $a2
	reanchormap
	waitsfx
	pause 30
	setscene 1
	end
	
.Movement:
	set_sliding
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	remove_sliding
	step_up
	step_end
	
ColresssRoomTileScript:
	checkscene
	ifequalfwd 0, .done ; we are entering the room
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalsefwd .AppearGate
	changeblock  8,  4, $9b ; warp panel active
.AppearGate
	changeblock  6,  8, $a2
.done
	endcallback
	
EliteFourColressScript:
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iftrue_jumptextfaceplayer .BeatenText
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer COLRESS, 1
	startbattle
	reloadmapafterbattle
	opentext
	writethistext
.AfterText:
	text "In #mon battles"
	line "where you can't"
	
	para "afford to make a"
	line "mistake, the true"
	
	para "nature of the"
	line "trainer's person-"
	cont "ality becomes"
	cont "clear."
	
	para "If trainers"
	line "believe in their"
	
	para "#mon to the"
	line "fullest extent,"
	
	para "as you do, their"
	line "#mon partners"
	
	para "will also give"
	line "everything they"
	
	para "have. I'm closer"
	line "now to the answer"
	cont "I'm looking for."
	
	para "I am glad you won."
	line "Now, use that"
	
	para "power against the"
	line "rest of the Elite"
	cont "Four!"
	done
	waitbutton
	changeblock  8,  4, $9b ; warp panel active
	refreshmap
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_COLRESS
	setscene 2
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalsefwd .done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalsefwd .done
	setmapscene PKMN_LEAGUE_MAIN, 2
.done
	end
	
.SeenText:
	text "Greetings. I am"
	line "a scientist. My"
	cont "name is Colress."
	
	para "As a member of the"
	line "Elite Four, I am"
	
	para "able to carry out"
	line "my research on the"
	
	para "most powerful"
	line "trainers across"
	cont "the region."
	
	para "The theme of my"
	line "research is bring-"
	cont "ing out the power"
	cont "of #mon."
	
	para "Is it possible to"
	line "bring out their"
	
	para "maximum power"
	line "through the bond"
	
	para "they share with"
	line "their trainers?"
	
	para "Or is there some"
	line "other different"
	
	para "method? I'd like"
	line "to test my theory"
	cont "by battling you."
	
	para "Do you find this"
	line "acceptable?"
	done
	
.BeatenText:
	text "Just as I"
	line "expected! Your"
	
	para "#mon must be"
	line "happy to be by"
	cont "your side!"
	
	para "You bring out the"
	line "best in their"
	cont "power!"
	done
