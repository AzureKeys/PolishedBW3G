VirbankComplexB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VirbankComplexB1F_CheckDoor

	def_warp_events
	warp_event  7,  0, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event  7,  4, VIRBANK_COMPLEX_B2F, 2

	def_coord_events
	coord_event  9,  8, 0, VirbankComplexBroniusScript1
	coord_event  9,  9, 0, VirbankComplexBroniusScript2

	def_bg_events
	bg_event  2,  5, BGEVENT_UP, VirbankComplexB1FDoorScript
	bg_event  3,  5, BGEVENT_UP, VirbankComplexB1FDoorScript
	
	def_object_events
	object_event 10,  8, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_VIRBANK_COMPLEX_B1F_CHEREN
	object_event 13, 10, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 11,  8, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 14, 10, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 14,  2, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerScientistFVirbankComplexB1F, EVENT_VIRBANK_COMPLEX_GRUNTS
	itemball_event 15,  5, ROCKY_HELMET, 1, EVENT_VIRBANK_COMPLEX_B1F_ROCKY_HELMET
	itemball_event  2,  8, HYPER_POTION, 3, EVENT_VIRBANK_COMPLEX_B1F_HYPER_POTION
	
	object_const_def
	const VIRBANKCOMPLEXB1F_CHEREN
	const VIRBANKCOMPLEXB1F_BRONIUS
	const VIRBANKCOMPLEXB1F_SHADOW_1
	const VIRBANKCOMPLEXB1F_SHADOW_2
	const VIRBANKCOMPLEXB1F_SCIENTIST_F
	
VirbankComplexB1F_CheckDoor:
	; Reset switches in B2F to prevent getting stuck
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_LEFT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_TOP_RIGHT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_LEFT
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH_BOTTOM_RIGHT
	checkevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	iffalsefwd .done
	changeblock  2,  4, $07 ; floor
.done
	endcallback
	
VirbankComplexB1FDoorScript:
	checkevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	iftruefwd .done
	opentext
	writethistext
	text "The door opened!"
	done
	waitbutton
	changeblock  2,  4, $07 ; floor
	playsound SFX_ENTER_DOOR
	refreshmap
	waitsfx
	closetext
	setevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
.done
	end
	
VirbankComplexBroniusScript1:
	applymovement PLAYER, .DownMovement
	sjumpfwd VirbankComplexBroniusScript2
	
.DownMovement:
	step_down
	step_end
	
VirbankComplexBroniusScript2:
	applymovement PLAYER, .RightMovement
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	opentext
	writethistext
	text "Cheren: <PLAYER>!"
	line "I've found another"
	cont "Plasma leader!"
	
	para "He's trying to"
	line "take something"
	cont "from the boiler!"
	
	para "Quick! Stop him!"
		
	para "???: Darn! I'm so"
	line "close! The Fire"
	cont "Element is nearly"
	cont "ours!"
	done
	waitbutton
	turnobject VIRBANKCOMPLEXB1F_BRONIUS, RIGHT
	writethistext
	text "???: Shadow!"
	line "Finish extracting"
	
	para "the Element, I'll"
	line "deal with this"
	cont "pest."
	
	para "Shadow: As you"
	line "command, Sage"
	cont "Bronius."
	done
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_BRONIUS, .BroniusMovement
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked VIRBANKCOMPLEXB1F_BRONIUS
	loadtrainer BRONIUS, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	opentext
	writethistext
	text "Shadow: My Sage,"
	line "the extraction is"
	cont "complete."
	done
	waitbutton
	turnobject VIRBANKCOMPLEXB1F_BRONIUS, RIGHT
	writethistext
	text "Bronius: Good"
	line "work, now let's"
	cont "get out of here!"
	done
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_SHADOW_2, .ShadowMovement
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear VIRBANKCOMPLEXB1F_BRONIUS
	disappear VIRBANKCOMPLEXB1F_SHADOW_1
	disappear VIRBANKCOMPLEXB1F_SHADOW_2
	disappear VIRBANKCOMPLEXB1F_SCIENTIST_F
	pause 15
	special Special_FadeInQuickly
	playmusic MUSIC_CHEREN_THEME
	pause 15
	turnobject VIRBANKCOMPLEXB1F_CHEREN, DOWN
	turnobject PLAYER, UP
	opentext
	writethistext
	text "Cheren: … … …"
	
	para "I can't believe"
	line "it. They got away"
	cont "again…"
	
	para "Thanks for your"
	line "help anyway,"
	cont "<PLAYER>."
	
	para "Here, I'd like you"
	line "to have this as"
	cont "thanks."
	done
	promptbutton
	verbosegivetmhm HM_FLY
	writethistext
	text "Cheren: That HM"
	line "contains Fly."
	
	para "It's a very useful"
	line "technique, you can"
	
	para "use it to return"
	line "to any city or"
	
	para "town you've prev-"
	line "iously visited."
	
	para "You'll need the"
	line "Gym badge from"
	
	para "here in Virbank"
	line "City in order to"
	cont "use it though."
	
	para "I'm heading back"
	line "home to Aspertia"
	
	para "City. I'm the Gym"
	line "Leader there, by"
	cont "the way."
	
	para "You should stop by"
	line "and challenge me"
	cont "sometime."
	
	para "See you, <PLAYER>."
	done
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_CHEREN, .CherenMovement
	disappear VIRBANKCOMPLEXB1F_CHEREN
	checkevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	iftruefwd .DoorOpened
	changeblock  2,  4, $07 ; floor
	playsound SFX_ENTER_DOOR
	setevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	waitsfx
.DoorOpened
	setevent EVENT_ASPERTIA_CITY_BLOCKER ; open Cheren's Gym
	specialphonecall SPECIALCALL_BIANCA_VIRBANK
	setscene 1
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
.RightMovement:
	step_right
	step_end
	
.BroniusMovement:
	step_left
	step_left
	step_up
	turn_head_left
	step_end
	
.ShadowMovement:
	big_step_left
	big_step_left
	big_step_left
	turn_head_up
	step_end
	
.CherenMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
.SeenText:
	text "Bronius: Let's see"
	line "if you have what"
	
	para "it takes to stand"
	line "up to the might of"
	cont "Team Plasma!"
	done

.BeatenText:
	text "No! This is"
	line "impossible!"
	done
	
TrainerScientistFVirbankComplexB1F:
	generictrainer PLASMA_SCIENTISTF, SCIENTISTF_VIRBANK_COMPLEX_1, EVENT_BEAT_SCIENTISTF_VIRBANK_COMPLEX_1, .SeenText, .BeatenText

	text "Hm… I must study"
	line "this development"
	cont "further…"
	done
	
.SeenText:
	text "Team Plasma is"
	line "studying things"

	para "you couldn't"
	line "possibly under-"
	
	para "stand. For that"
	line "purpose, please"
	
	para "hand over your"
	line "#mon."
	done

.BeatenText:
	text "What? You can"
	line "actually draw out"
	
	para "the power of your"
	line "#mon?"
	done
	