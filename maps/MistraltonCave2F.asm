MistraltonCave2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MistraltonCave2FSetTiles
	callback MAPCALLBACK_STONETABLE, MistraltonCave2FBoulderCallback

	def_warp_events
	warp_event  3, 15, MISTRALTON_CAVE_1F, 5
	warp_event  9, 18, MISTRALTON_CAVE_2F, 1 ; hole
	warp_event 19, 10, MISTRALTON_CAVE_2F, 1 ; hole
	warp_event 11, 12, MISTRALTON_CAVE_2F, 1 ; hole
	warp_event 15,  7, MISTRALTON_CAVE_3F, 1
	
	def_coord_events

	def_bg_events
	bg_event 14, 17, BGEVENT_ITEM + HYPER_POTION, EVENT_MISTRALTON_CAVE_2F_HYPER_POTION
	bg_event 18, 16, BGEVENT_ITEM + MAX_REPEL, EVENT_MISTRALTON_CAVE_2F_MAX_REPEL
	bg_event  3,  7, BGEVENT_ITEM + PROTEIN, EVENT_MISTRALTON_CAVE_2F_PROTEIN
	bg_event  9, 23, BGEVENT_ITEM + MAX_REVIVE, EVENT_MISTRALTON_CAVE_2F_MAX_REVIVE
	
	def_object_events
	strengthboulder_event  7, 17, EVENT_MISTRALTON_CAVE_2F_BOULDER_1
	strengthboulder_event 22,  9, EVENT_MISTRALTON_CAVE_2F_BOULDER_2
	strengthboulder_event 14, 12, EVENT_MISTRALTON_CAVE_2F_BOULDER_3
	object_event  3, 11, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerMMistraltonCave2F, -1
	object_event 23,  7, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerFMistraltonCave2F, -1
	itemball_event  6,  7, PP_UP, 1, EVENT_MISTRALTON_CAVE_2F_PP_UP
	itemball_event 17, 20, DUSK_BALL, 3, EVENT_MISTRALTON_CAVE_2F_DUSK_BALL
	itemball_event 21, 17, REVIVE, 3, EVENT_MISTRALTON_CAVE_2F_REVIVE
	itemball_event  4,  3, KINGS_ROCK, 1, EVENT_MISTRALTON_CAVE_2F_KINGS_ROCK
	
	object_const_def
	const MISTRALTONCAVE2F_BOULDER_1
	const MISTRALTONCAVE2F_BOULDER_2
	const MISTRALTONCAVE2F_BOULDER_3
	
MistraltonCave2FSetTiles:
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_1
	iffalsefwd .next
	changeblock  8, 18, $6f
.next
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_2
	iffalsefwd .next2
	changeblock 18, 10, $6f
.next2
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_3
	iffalsefwd .done
	changeblock 10, 12, $6f
.done
	endcallback
	
MistraltonCave2FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 2, MISTRALTONCAVE2F_BOULDER_1, .Disappear1
	stonetable 3, MISTRALTONCAVE2F_BOULDER_2, .Disappear2
	stonetable 4, MISTRALTONCAVE2F_BOULDER_3, .Disappear3
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear MISTRALTONCAVE2F_BOULDER_1
	changeblock  8, 18, $6f
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear MISTRALTONCAVE2F_BOULDER_2
	changeblock 18, 10, $6f
	sjumpfwd .DoneBoulder
	
.Disappear3:
	scall .FX
	disappear MISTRALTONCAVE2F_BOULDER_3
	changeblock 10, 12, $6f
	; fallthrough
.DoneBoulder:
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	end
	
TrainerAceTrainerMMistraltonCave2F:
	generictrainer ACE_TRAINERM, ACE_TRAINERM_MISTRALTON_CAVE, EVENT_BEAT_ACE_TRAINERM_MISTRALTON_CAVE, .SeenText, .BeatenText

	text "You can do all"
	line "sorts of crazy"
	
	para "stuff as long as"
	line "you've got energy!"
	done
	
.SeenText:
	text "Behold my"
	line "impressive"
	
	para "physique. It's"
	line "fitting of an Ace"
	cont "Trainer!"
	done

.BeatenText:
	text "My #mon didn't"
	line "do my physique"
	cont "justice!"
	done
	
TrainerAceTrainerFMistraltonCave2F:
	generictrainer ACE_TRAINERF, ACE_TRAINERF_MISTRALTON_CAVE, EVENT_BEAT_ACE_TRAINERF_MISTRALTON_CAVE, .SeenText, .BeatenText

	text "There actually"
	line "wasn't any need to"
	
	para "prove how strong"
	line "we are. I already"
	
	para "know how capable"
	line "my #mon and I"
	cont "are!"
	done
	
.SeenText:
	text "Why don't you prove"
	line "to me how much you"
	
	para "and your #mon"
	line "are capable of!"
	done

.BeatenText:
	text "You are capable of"
	line "far more than we"
	cont "are!"
	done
