VictoryRoadCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VictoryRoadCave1FTileScript
	callback MAPCALLBACK_STONETABLE, VictoryRoadCave1FBoulderCallback

	def_warp_events
	warp_event 31, 36, VICTORY_ROAD_ENTRANCE_NORTH, 2
	warp_event 32, 36, VICTORY_ROAD_ENTRANCE_NORTH, 3
	warp_event 33, 36, VICTORY_ROAD_ENTRANCE_NORTH, 4
	warp_event 34, 36, VICTORY_ROAD_ENTRANCE_NORTH, 5
	warp_event 11, 22, VICTORY_ROAD_CAVE_1F, 6 ; hole
	warp_event 15, 22, VICTORY_ROAD_CAVE_1F, 6 ; spawn after fall in hole
	warp_event 32, 10, VICTORY_ROAD_CAVE_1F, 8 ; hole
	warp_event 30,  7, VICTORY_ROAD_CAVE_1F, 8 ; spawn after fall in hole
	warp_event  5,  8, VICTORY_ROAD_GROVE, 1
	warp_event  6,  8, VICTORY_ROAD_GROVE, 2
	warp_event 15,  1, VICTORY_ROAD_OUTDOOR_1F, 3
	warp_event 21,  2, VICTORY_ROAD_OUTDOOR_1F, 4
	warp_event 22,  2, VICTORY_ROAD_OUTDOOR_1F, 5

	def_coord_events
	coord_event 15, 22, 1, VictoryRoadCave1FBridgeOverheadTrigger
	coord_event 16, 22, 0, VictoryRoadCave1FBridgeUnderfootTrigger
	coord_event 16, 23, 0, VictoryRoadCave1FBridgeUnderfootTrigger
	coord_event 19, 22, 0, VictoryRoadCave1FBridgeUnderfootTrigger
	coord_event 19, 23, 0, VictoryRoadCave1FBridgeUnderfootTrigger
	coord_event 20, 22, 1, VictoryRoadCave1FBridgeOverheadTrigger
	coord_event 20, 23, 1, VictoryRoadCave1FBridgeOverheadTrigger
	coord_event 14,  5, 1, VictoryRoadCave1FBridgeOverheadTrigger
	coord_event 32, 31, 1, VictoryRoadCave1FBridgeOverheadTrigger
	coord_event 33, 31, 1, VictoryRoadCave1FBridgeOverheadTrigger

	def_bg_events
	bg_event 10, 35, BGEVENT_ITEM + MAX_ELIXIR, EVENT_VICTORY_ROAD_CAVE_1F_MAX_ELIXIR
	
	def_object_events
	strengthboulder_event 13, 23, EVENT_VICTORY_ROAD_CAVE_1F_BOULDER_1
	strengthboulder_event 32,  8, EVENT_VICTORY_ROAD_CAVE_1F_BOULDER_2
	object_event 24, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerMVictoryRoadCave1F, -1
	object_event 24, 21, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerFVictoryRoadCave1F, -1
	object_event 15, 30, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranMVictoryRoadCave1F, -1
	object_event 15, 33, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranFVictoryRoadCave1F, -1
	object_event  5, 14, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicMVictoryRoadCave1F, -1
	object_event 24,  6, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerPsychicFVictoryRoadCave1F, -1
	object_event 31, 24, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerHexManiacVictoryRoadCave1F, -1
	itemball_event 13, 35, CALCIUM, 1, EVENT_VICTORY_ROAD_CAVE_1F_CALCIUM
	itemball_event 28, 33, FULL_RESTORE, 3, EVENT_VICTORY_ROAD_CAVE_1F_FULL_RESTORE
	itemball_event  6, 24, ESCAPE_ROPE, 5, EVENT_VICTORY_ROAD_CAVE_1F_ESCAPE_ROPE
	itemball_event 20, 13, RARE_CANDY, 1, EVENT_VICTORY_ROAD_CAVE_1F_RARE_CANDY
	itemball_event 22, 16, LIFE_ORB, 1, EVENT_VICTORY_ROAD_CAVE_1F_LIFE_ORB
	
	object_const_def
	const VICTORYROADCAVE1F_BOULDER_1
	const VICTORYROADCAVE1F_BOULDER_2
	
VictoryRoadCave1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 5, VICTORYROADCAVE1F_BOULDER_1, .Disappear1
	stonetable 7, VICTORYROADCAVE1F_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear VICTORYROADCAVE1F_BOULDER_1
	changeblock 10, 22, $7b
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear VICTORYROADCAVE1F_BOULDER_2
	changeblock 32, 10, $6f
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
	
VictoryRoadCave1FTileScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_1F_BOULDER_1
	iffalsefwd .check2
	changeblock 10, 22, $7b
.check2
	checkevent EVENT_VICTORY_ROAD_CAVE_1F_BOULDER_2
	iffalsefwd .HandleBridges
	changeblock 32, 10, $6f
.HandleBridges
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock 16, 20, $7e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 22, $82, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 24, $86, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 20, $7f, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 22, $83, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 24, $87, VICTORY_ROAD_CAVE_1F
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock 16, 20, $36, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 22, $3e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 24, $42, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 20, $3b, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 22, $3e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 24, $43, VICTORY_ROAD_CAVE_1F
	jmp BufferScreen

VictoryRoadCave1FBridgeOverheadTrigger:
	callthisasm
	changebridgeblock 16, 20, $7e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 22, $82, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 24, $86, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 20, $7f, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 22, $83, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 24, $87, VICTORY_ROAD_CAVE_1F
	xor a
	jr VictoryRoadCave1F_FinishBridge
	
VictoryRoadCave1FBridgeUnderfootTrigger:
	callthisasm
	changebridgeblock 16, 20, $36, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 22, $3e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 16, 24, $42, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 20, $3b, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 22, $3e, VICTORY_ROAD_CAVE_1F
	changebridgeblock 18, 24, $43, VICTORY_ROAD_CAVE_1F
	ld a, $1
	
VictoryRoadCave1F_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wVictoryRoadCave1FSceneID], a
	jmp GenericFinishBridge
	
TrainerAceTrainerMVictoryRoadCave1F:
	generictrainer ACE_TRAINERM, ACE_TRAINERM_VICTORY_ROAD_INT_1, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_INT_1, .SeenText, .BeatenText

	text "Pride doesn't mean"
	line "acting arrogantly!"
	
	para "I'm really proud"
	line "of what I've"
	
	para "achieved in my"
	line "life!"
	done
	
.SeenText:
	text "An Ace Trainer"
	line "like me has pride,"
	cont "so I won't lose!"
	done

.BeatenText:
	text "I couldn't protect"
	line "my pride! I'm"
	cont "mortified!"
	done
	
TrainerAceTrainerFVictoryRoadCave1F:
	generictrainer ACE_TRAINERF_D, ACE_TRAINERF_VICTORY_ROAD_INT_2, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_INT_2, .SeenText, .BeatenText

	text "When you feel un-"
	line "easy or afraid,"
	
	para "just hug your"
	line "#mon real"
	cont "tight!"
	done
	
.SeenText:
	text "Challenging the"
	line "#mon League?"
	
	para "It's no wonder you"
	line "might feel a bit"
	
	para "nervous, but you"
	line "just have to"
	
	para "believe in your"
	line "#mon and do it!"
	done

.BeatenText:
	text "Am I really going"
	line "to be alright with"
	
	para "only this trifling"
	line "power?"
	done
	
TrainerVeteranMVictoryRoadCave1F:
	generictrainer VETERANM, VETERANM_VICTORY_ROAD_INT_1, EVENT_BEAT_VETERANM_VICTORY_ROAD_INT_1, .SeenText, .BeatenText

	text "The fact that you"
	line "made it out here…"
	
	para "That's it! It must"
	line "have been thanks"
	
	para "to a #mon using"
	line "a hidden move!"
	done
	
.SeenText:
	text "You bothered to"
	line "come all the way"
	
	para "here? Good! I will"
	line "reward your hard"
	
	para "work by battling"
	line "with all of my"
	cont "strength!"
	done

.BeatenText:
	text "A battle with a"
	line "good trainer fills"
	
	para "my heart with"
	line "warmth!"
	done
	
TrainerVeteranFVictoryRoadCave1F:
	generictrainer VETERANF, VETERANF_VICTORY_ROAD_INT_1, EVENT_BEAT_VETERANF_VICTORY_ROAD_INT_1, .SeenText, .BeatenText

	text "My #mon lets me"
	line "ride on its back"
	
	para "as it uses Surf or"
	line "Waterfall. I"
	
	para "really feel its"
	line "love at those"
	cont "times!"
	done
	
.SeenText:
	text "Hey, since you"
	line "worked so hard to"
	
	para "get here, how"
	line "about I be your"
	cont "opponent?"
	done

.BeatenText:
	text "Thanks a bunch. It"
	line "was a lot of fun!"
	done
	
TrainerPsychicMVictoryRoadCave1F:
	generictrainer PSYCHICM_T, PSYCHICM_VICTORY_ROAD_INT, EVENT_BEAT_PSYCHICM_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "All people know"
	line "what they can do"
	cont "alone, but…"
	
	para "There are things"
	line "you can only do"
	cont "with #mon."
	done
	
.SeenText:
	text "You… Who's brought"
	line "you this far?"
	done

.BeatenText:
	text "It's your reliable"
	line "#mon who've"
	
	para "brought you this"
	line "far, isn't it?"
	done
	
TrainerPsychicFVictoryRoadCave1F:
	generictrainer PSYCHICF_T, PSYCHICF_VICTORY_ROAD_INT, EVENT_BEAT_PSYCHICF_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "I heard that the"
	line "former Elite Four"
	
	para "member, Caitlin,"
	line "is an amazing"
	cont "Psychic."
	
	para "I wonder why she"
	line "stepped down. I'd"
	
	para "sure love to have"
	line "faced her…"
	done
	
.SeenText:
	text "I'll use my psychic"
	line "powers to release"
	
	para "my #mon from"
	line "its #ball!"
	done

.BeatenText:
	text "Well, that didn't"
	line "go the way I"
	cont "wanted it to!"
	done
	
TrainerHexManiacVictoryRoadCave1F:
	generictrainer HEX_MANIAC, HEX_MANIAC_VICTORY_ROAD_INT, EVENT_BEAT_HEX_MANIAC_VICTORY_ROAD_INT, .SeenText, .BeatenText

	text "Could it be that"
	line "you and your #-"
	
	para "mon are the ones"
	line "emitting that"
	cont "strong aura?!"
	done
	
.SeenText:
	text "You are no ordin-"
	line "ary opponent…"
	
	para "That is what my"
	line "Ghost type #mon"
	
	para "is whispering to"
	line "me."
	done

.BeatenText:
	text "My premonition was"
	line "spot on!"
	done
