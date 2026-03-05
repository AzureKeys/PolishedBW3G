P2Lab_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, P2LabSetTiles

	def_warp_events
	warp_event  5, 36, P2_LAB_ENTRANCE, 3

	def_coord_events
	coord_event  6,  2, 0, P2LabGormScript1
	coord_event  6,  3, 0, P2LabGormScript2

	def_bg_events
	bg_event  2, 40, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 22, 26, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 14, 16, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 22, 10, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 16,  8, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 16, 38, BGEVENT_UP, P2LabDiaryScript1
	bg_event 10, 24, BGEVENT_UP, P2LabDiaryScript2
	bg_event 26, 14, BGEVENT_UP, P2LabDiaryScript3
	bg_event 26, 10, BGEVENT_UP, P2LabDiaryScript4
	bg_event 17, 35, BGEVENT_ITEM + IRON, EVENT_P2_LAB_IRON
	bg_event 27, 26, BGEVENT_ITEM + ELIXIR, EVENT_P2_LAB_ELIXIR
	bg_event 13,  1, BGEVENT_ITEM + CARBOS, EVENT_P2_LAB_CARBOS
	
	def_object_events
	object_event  3,  4, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_JUNIPER
	object_event  1,  2, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_GRUNTS
	object_event  2,  4, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_GRUNTS
	object_event 16, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntM1P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 14, 26, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntM2P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 27, 31, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerGruntF1P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 25, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerGruntF2P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 16,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMP2Lab, EVENT_P2_LAB_GRUNTS
	itemball_event 23, 30, LEVEL_BALL, 3, EVENT_P2_LAB_LEVEL_BALL
	itemball_event 22, 13, HYPER_POTION, 3, EVENT_P2_LAB_HYPER_POTION
	itemball_event  3, 28, PROTEIN, 1, EVENT_P2_LAB_PROTEIN
	itemball_event 21,  1, FULL_HEAL, 3, EVENT_P2_LAB_FULL_HEAL
	itemball_event 18, 41, ESCAPE_ROPE, 3, EVENT_P2_LAB_ESCAPE_ROPE
	itemball_event 27, 22, LEVEL_BALL, 1, EVENT_P2_LAB_X_ACCURACY
	tmhmball_event  5, 32, TM_SWORDS_DANCE, EVENT_P2_LAB_TM_SWORDS_DANCE
	
	object_const_def
	const P2LAB_JUNIPER
	const P2LAB_GORM
	const P2LAB_SHADOW
	
P2LabSetTiles:
	checkevent EVENT_P2_LAB_DOORS
	iffalsefwd .done
	changeblock  2, 36, $55
	changeblock 18, 26, $55
	changeblock 20,  2, $55
	changeblock  8,  2, $9e
	changeblock 20, 18, $a2
	changeblock  6, 26, $a2
	changeblock 12, 36, $07
	changeblock  2, 32, $9e
.done
	endcallback
	
P2LabDoorToggleScript:
	opentext
	writethistext
	text "There's a switch."
	line "Press it?"
	done
	promptbutton
	yesorno
	iffalsefwd .done
	playsound SFX_ENTER_DOOR
	checkevent EVENT_P2_LAB_DOORS
	iftruefwd .ResetDoors
	changeblock  2, 36, $55
	changeblock 18, 26, $55
	changeblock 20,  2, $55
	changeblock  8,  2, $9e
	changeblock 20, 18, $a2
	changeblock  6, 26, $a2
	changeblock 12, 36, $07
	changeblock  2, 32, $9e
	refreshmap
	setevent EVENT_P2_LAB_DOORS
	sjumpfwd .done
.ResetDoors
	changeblock  2, 36, $9e
	changeblock 18, 26, $07
	changeblock 20,  2, $9e
	changeblock  8,  2, $55
	changeblock 20, 18, $58
	changeblock  6, 26, $58
	changeblock 12, 36, $55
	changeblock  2, 32, $55
	refreshmap
	clearevent EVENT_P2_LAB_DOORS
.done
	closetext
	end
	
P2LabGormScript1:
	applymovement PLAYER, .Movement
	sjumpfwd P2LabGormScript
.Movement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_left
	step_end
	
P2LabGormScript2:
	applymovement PLAYER, P2Lab_PlayerMovement2
	; fallthrough
P2LabGormScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .IntroText
	applymovement P2LAB_GORM, .GormApproachMovement
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked P2LAB_GORM
	loadtrainer GORM, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	applymovement P2LAB_SHADOW, .ShadowMovement
	showtext .AfterText
	applymovement P2LAB_GORM, .GormRetreatMovement
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	disappear P2LAB_GORM
	disappear P2LAB_SHADOW
	pause 15
	waitsfx
	special Special_FadeInQuickly
	playmapmusic
	pause 15
	turnobject P2LAB_JUNIPER, DOWN
	turnobject PLAYER, UP
	showtext .JuniperAfterText
	setscene 1
	setmapscene P2_LAB_ENTRANCE, 2
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_P2_LAB_JUNIPER
	warp P2_LAB_ENTRANCE,  4,  7
	end
	
.GormApproachMovement:
	step_down
	step_down
	step_down
	step_right
	step_end
	
.GormRetreatMovement:
	step_left
	step_up
	step_up
	step_end
	
.ShadowMovement:
	big_step_left
	big_step_up
	big_step_up
	step_end
	
.IntroText:
	text "Juniper: <PLAYER>!"
	line "It's just as I"

	para "thought, Team"
	line "Plasma is trying"
	
	para "to get something"
	line "out of that"
	cont "chamber!"
	
	para "Shadow: Sage Gorm,"
	line "has the prototype"

	para "been safely"
	line "removed?"
	
	para "Gorm: … … …"
	
	para "Shadow: Then why"
	line "don't we take care"
	cont "of these"
	cont "intruders?"
	done
	
.SeenText:
	text "Gorm: … … …"
	done
	
.BeatenText:
	text "… … … ?"
	done
	
.AfterText:
	text "Shadow: Quickly,"
	line "my Sage! We must"
	cont "go!"
	done
	
.JuniperAfterText:
	text "Juniper: That"
	line "thing they took…"

	para "It must be some"
	line "kind of experi-"
	cont "mental weapon…"
	
	para "Come on, <PLAYER>,"
	line "let's get out of"
	cont "here."
	done

P2Lab_PlayerMovement2:
	step_left
	step_left
	step_down
	step_down
	step_left
	step_end
	
TrainerGruntM1P2Lab:
	generictrainer GRUNTM, GRUNTM_P2_1, EVENT_BEAT_GRUNTM_P2_1, .SeenText, .BeatenText

	text "Now that I think"
	line "of it, I don't"
	
	para "think I was told"
	line "what exactly we're"
	cont "looking for here…"
	done
	
.SeenText:
	text "This time, we'll"
	line "take over the"
	cont "Unova region!"
	done

.BeatenText:
	text "Even if I lose, I"
	line "will not give up"
	
	para "on justice for"
	line "Team Plasma!"
	done
	
TrainerGruntM2P2Lab:
	generictrainer GRUNTM, GRUNTM_P2_2, EVENT_BEAT_GRUNTM_P2_2, .SeenText, .BeatenText

	text "The fact that I"
	line "let you get by"

	para "here means I'll"
	line "probably lose my"
	cont "#mon, huh?"
	done
	
.SeenText:
	text "I'm the fighting"
	line "sweeper! I'll"

	para "clean up garbage"
	line "like you!"
	done

.BeatenText:
	text "Oops…"
	done
	
TrainerGruntF1P2Lab:
	generictrainer GRUNTF, GRUNTF_P2_1, EVENT_BEAT_GRUNTF_P2_1, .SeenText, .BeatenText

	text "#mon are like"
	line "our puppets! They"

	para "are bound by their"
	line "#balls and"
	
	para "controlled by our"
	line "orders!"
	done
	
.SeenText:
	text "I'm going to go"
	line "ahead and say it:"

	para "Plasmaaaa!!"
	done

.BeatenText:
	text "Do-over! C'mon,"
	line "let me have a"
	cont "do-over!"
	done
	
TrainerGruntF2P2Lab:
	generictrainer GRUNTF, GRUNTF_P2_2, EVENT_BEAT_GRUNTF_P2_2, .SeenText, .BeatenText

	text "What did we even"
	line "want from this"

	para "Place? I guess the"
	line "Sages must have a"
	cont "plan…"
	done
	
.SeenText:
	text "Our king is gone…"
	line "But we are still"
	cont "here!"
	done

.BeatenText:
	text "Ugh… Losing is"
	line "the worst…"
	done
	
TrainerScientistMP2Lab:
	generictrainer PLASMA_SCIENTISTM, SCIENTISTM_P2, EVENT_BEAT_SCIENTISTM_P2, .SeenText, .BeatenText

	text "No one could"
	line "possibly under-"
	cont "stand the power"
	
	para "Of the Genesis"
	line "Project…"
	done
	
.SeenText:
	text "You! You've come"
	line "to steal my work!"
	
	para "I'll never let my"
	line "project be taken!"
	done

.BeatenText:
	text "No! It's not"
	line "possible!"
	done
	
P2LabDiaryScript1:
	jumpthistext
	text "There's a document"
	line "on the PC…"
	
	para "Genesis Project-"
	
	para "Today, …e"
	line "spec…en arr…ed."
	
	para "… …st be"
	line "…ions of years"
	cont "ol… …"
	
	para "I …n't wait …"
	line "be…n the proj… …"
	done
	
P2LabDiaryScript2:
	jumpthistext
	text "There's a document"
	line "on the PC…"
	
	para "Genesis Project-"
	
	para "The …ect …"
	line "mov… …lower tha…"
	cont "…pected…"
	
	para "… …have had"
	line "…ficulty … …ith"
	cont "…tegrati… the…"
	
	para "…bernetic parts"
	line "… …hout serio…"
	cont "…gradation."
	
	para "St… …e must"
	line "pr… on."
	done
	
P2LabDiaryScript3:
	jumpthistext
	text "There's a document"
	line "on the PC…"
	
	para "Genesis Project-"
	
	para "… …reakthrough!"
	line "… project was"
	
	para "… …ught fully"
	line "onl… …oday."
	
	para "Despi… …oss of"
	line "contr… …he proof"
	cont "of conc… …as"
	cont "…idated!"
	
	para "…will not be"
	line "…ng now…"
	done
	
P2LabDiaryScript4:
	jumpthistext
	text "There's a document"
	line "on the PC…"
	
	para "Genesis Project-"
	
	para "…rd fro… …pper"
	line "manag… …ject has"
	cont "…n cancel… …"
	
	para "…se fools do… …"
	line "… …will no… …"
	
	para "I wi… …rry out"
	line "… …nesis Pr… to"
	cont "… …letion. I m… …"
	
	para "… … … …"
	done
