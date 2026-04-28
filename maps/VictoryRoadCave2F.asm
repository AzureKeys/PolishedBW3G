VictoryRoadCave2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VictoryRoadCave2FTileScript
	callback MAPCALLBACK_STONETABLE, VictoryRoadCave2FBoulderCallback

	def_warp_events
	warp_event  3, 47, VICTORY_ROAD_OUTDOOR_1F, 6
	warp_event 23, 49, VICTORY_ROAD_OUTDOOR_1F, 7
	warp_event 43, 47, VICTORY_ROAD_OUTDOOR_1F, 8
	warp_event 23, 27, VICTORY_ROAD_CAVE_2F, 5
	warp_event 15, 21, VICTORY_ROAD_CAVE_2F, 4
	warp_event 22, 33, VICTORY_ROAD_CAVE_2F, 8 ; hole
	warp_event 25, 30, VICTORY_ROAD_CAVE_2F, 8 ; hole
	warp_event 24, 33, VICTORY_ROAD_CAVE_2F, 8 ; spawn after fall in hole
	warp_event  9, 29, VICTORY_ROAD_OUTDOOR_2F, 1
	warp_event 41, 29, VICTORY_ROAD_OUTDOOR_2F, 2
	warp_event 21,  3, VICTORY_ROAD_OUTDOOR_2F, 3

	def_coord_events

	def_bg_events
	bg_event  9, 47, BGEVENT_ITEM + MAX_REVIVE, EVENT_VICTORY_ROAD_CAVE_2F_MAX_REVIVE
	bg_event 32, 42, BGEVENT_ITEM + PROTEIN, EVENT_VICTORY_ROAD_CAVE_2F_PROTEIN
	
	def_object_events
	strengthboulder_event 22, 35, EVENT_VICTORY_ROAD_CAVE_2F_BOULDER_1
	strengthboulder_event 24, 30, EVENT_VICTORY_ROAD_CAVE_2F_BOULDER_2
	object_event 15, 45, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMVictoryRoadCave2F, -1
	object_event 15, 42, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerFVictoryRoadCave2F, -1
	object_event 36, 28, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerPkmnRangerMVictoryRoadCave2F, -1
	object_event 13, 28, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerPkmnRangerFVictoryRoadCave2F, -1
	object_event  4, 45, SPRITE_VETERAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranMVictoryRoadCave2F, -1
	object_event 13, 13, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMVictoryRoadCave2F, -1
	itemball_event 43, 44, ULTRA_BALL, 3, EVENT_VICTORY_ROAD_CAVE_2F_ULTRA_BALL
	itemball_event  5, 13, MAX_REPEL, 3, EVENT_VICTORY_ROAD_CAVE_2F_MAX_REPEL
	itemball_event 26, 20, METAL_COAT, 1, EVENT_VICTORY_ROAD_CAVE_2F_METAL_COAT
	
	object_const_def
	const VICTORYROADCAVE2F_BOULDER_1
	const VICTORYROADCAVE2F_BOULDER_2
	
VictoryRoadCave2FTileScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_2F_BOULDER_1
	iffalsefwd .check2
	changeblock 22, 32, $ab
.check2
	checkevent EVENT_VICTORY_ROAD_CAVE_2F_BOULDER_2
	iffalsefwd .done
	changeblock 24, 30, $6f
.done
	endcallback
	
VictoryRoadCave2FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 6, VICTORYROADCAVE2F_BOULDER_1, .Disappear1
	stonetable 7, VICTORYROADCAVE2F_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear VICTORYROADCAVE2F_BOULDER_1
	changeblock 22, 32, $ab
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear VICTORYROADCAVE2F_BOULDER_2
	changeblock 24, 30, $6f
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
	
TrainerAceTrainerMVictoryRoadCave2F:
	generictrainer ACE_TRAINERM_D, ACE_TRAINERM_VICTORY_ROAD_INT_2, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_INT_2, .SeenText, .BeatenText

	text "It's not enough for"
	line "me just to be"
	
	para "together with"
	line "#mon! I want to"
	cont "win!"
	
	para "But I do know that"
	line "some people feel"
	
	para "at ease just by"
	line "being with their"
	cont "#mon…"
	done
	
.SeenText:
	text "It's not enough for"
	line "me just to be"
	
	para "together with"
	line "#mon! I want to"
	cont "win!"
	done

.BeatenText:
	text "How… How could you"
	line "defeat me this"
	cont "utterly?"
	done
	
TrainerAceTrainerFVictoryRoadCave2F:
	generictrainer ACE_TRAINERF, ACE_TRAINERF_VICTORY_ROAD_INT_1, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_INT_1, .SeenText, .BeatenText

	text "My #mon was"
	line "once stolen by"
	cont "Team Plasma."
	
	para "I'm just so grate-"
	line "ful that we can be"
	cont "together now."
	done
	
.SeenText:
	text "Our unity won't be"
	line "bested by anyone!"
	done

.BeatenText:
	text "We couldn't win…"
	line "but that's alright."
	done
	
TrainerPkmnRangerMVictoryRoadCave2F:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_VICTORY_ROAD_INT, EVENT_BEAT_PKMN_RANGERM_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "That Badge you"
	line "have there… No it"
	
	para "is your skill and"
	line "the #mon with"
	
	para "you that are so"
	line "brilliant!"
	done
	
.SeenText:
	text "Behold the blind-"
	line "ing brilliance of"
	cont "my many Badges!"
	done

.BeatenText:
	text "Your skill is too"
	line "brilliant to"
	cont "behold!"
	done
	
TrainerPkmnRangerFVictoryRoadCave2F:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_VICTORY_ROAD_INT, EVENT_BEAT_PKMN_RANGERF_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "I wonder where"
	line "that trainer is"
	cont "now…"
	done
	
.SeenText:
	text "Something about"
	line "you reminds me of"
	
	para "that trainer from"
	line "years ago…"
	done

.BeatenText:
	text "Yes! That mix of"
	line "kindness and power"
	
	para "is just like that"
	line "trainer!"
	done
	
TrainerVeteranMVictoryRoadCave2F:
	generictrainer VETERANM, VETERANM_VICTORY_ROAD_INT_2, EVENT_BEAT_VETERANM_VICTORY_ROAD_INT_2, .SeenText, .BeatenText

	text "Fighting together"
	line "with a young kid"
	
	para "like you makes me"
	line "feel young again"
	cont "myself."
	done
	
.SeenText:
	text "The endless cycle"
	line "of wins and"
	
	para "losses… Will it"
	line "always continue?"
	done

.BeatenText:
	text "Every win and loss"
	line "is a precious"
	cont "memory."
	done
	
TrainerBackpackerMVictoryRoadCave2F:
	generictrainer BACKPACKERM, BACKPACKERM_VICTORY_ROAD_INT, EVENT_BEAT_BACKPACKERM_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "A fighting style"
	line "overflowing with"
	
	para "power or a strat-"
	line "egy that excels"
	cont "technically…"
	
	para "It depends on the"
	line "#mon, see!"
	done
	
.SeenText:
	text "I'm gonna numb you"
	line "and your #mon!"
	done

.BeatenText:
	text "Unbelievable! I"
	line "was the one struck"
	cont "numb…"
	done
