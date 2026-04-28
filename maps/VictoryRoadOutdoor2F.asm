VictoryRoadOutdoor2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VictoryRoadOutdoor2FTileScript
	callback MAPCALLBACK_STONETABLE, VictoryRoadOutdoor2FBoulderCallback

	def_warp_events
	warp_event  9, 34, VICTORY_ROAD_CAVE_2F, 9
	warp_event 37, 34, VICTORY_ROAD_CAVE_2F, 10
	warp_event 17, 14, VICTORY_ROAD_CAVE_2F, 11
	warp_event 18,  8, VICTORY_ROAD_OUTDOOR_2F, 5 ; hole
	warp_event 16,  8, VICTORY_ROAD_OUTDOOR_2F, 5 ; spawn after fall in hole
	warp_event 29, 12, VICTORY_ROAD_CAVE_3F, 1
	warp_event 17, 20, VICTORY_ROAD_CAVE_3F, 2
	warp_event 19,  1, VICTORY_ROAD_CAVE_3F, 3
	warp_event 23, 20, VICTORY_ROAD_CASTLE, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	strengthboulder_event 20,  8, EVENT_VICTORY_ROAD_OUTDOOR_2F_BOULDER
	object_event 18,  3, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranMVictoryRoadOutdoor2F, -1
	object_event 20,  6, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranFVictoryRoadOutdoor2F, -1
	object_event  6, 31, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMVictoryRoadOutdoor2F, -1
	object_event 35, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerFVictoryRoadOutdoor2F, -1
	object_event 29, 35, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerScientistMVictoryRoadOutdoor2F, -1
	object_event 22, 15, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerScientistFVictoryRoadOutdoor2F, -1
	object_event 35, 26, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerBlackBeltVictoryRoadOutdoor2F, -1
	object_event  5, 18, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBattleGirlVictoryRoadOutdoor2F, -1
	itemball_event 13, 17, PP_MAX, 1, EVENT_VICTORY_ROAD_OUTDOOR_2F_PP_MAX
	itemball_event 16, 21, MAX_REVIVE, 1, EVENT_VICTORY_ROAD_OUTDOOR_2F_MAX_REVIVE
	itemball_event 28, 19, MAX_ELIXIR, 1, EVENT_VICTORY_ROAD_OUTDOOR_2F_MAX_ELIXIR
	
	object_const_def
	const VICTORYROADOUTDOOR2F_BOULDER
	
VictoryRoadOutdoor2FTileScript:
	checkevent EVENT_VICTORY_ROAD_OUTDOOR_2F_BOULDER
	iffalsefwd .done
	changeblock 18,  8, $6f
.done
	endcallback
	
VictoryRoadOutdoor2FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 4, VICTORYROADOUTDOOR2F_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	disappear VICTORYROADOUTDOOR2F_BOULDER
	changeblock 18,  8, $6f
	refreshmap
	waitbutton
	closetext
	end
	
TrainerVeteranMVictoryRoadOutdoor2F:
	generictrainer VETERANM, VETERANM_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANM_VICTORY_ROAD_EXT_2, .SeenText, .BeatenText

	text "Your #mon was"
	line "in a really good"
	
	para "mood the moment"
	line "that you won!"
	done
	
.SeenText:
	text "The people who"
	line "pass by here have"
	
	para "such different"
	line "moods! It's fun to"
	
	para "watch, and even"
	line "more fun to fight"
	cont "against them!"
	done

.BeatenText:
	text "Mwa haha!"
	line "It's fun!"
	done
	
TrainerVeteranFVictoryRoadOutdoor2F:
	generictrainer VETERANF, VETERANF_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANF_VICTORY_ROAD_EXT_2, .SeenText, .BeatenText

	text "Not wanting to"
	line "admit my own"
	
	para "limits, I am cont-"
	line "inuing to battle…"
	
	para "That's right! At"
	line "least I'm"
	cont "persistent!"
	done
	
.SeenText:
	text "Are you sure? I'm"
	line "strong, you know."
	
	para "You still want to"
	line "take me on?"
	done

.BeatenText:
	text "Yes, I'm sure…"
	done
	
TrainerAceTrainerMVictoryRoadOutdoor2F:
	generictrainer ACE_TRAINERM, ACE_TRAINERM_VICTORY_ROAD_EXT_1, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_EXT_1, .SeenText, .BeatenText

	text "Riding on a #-"
	line "mon and thinking"
	
	para "about things is so"
	line "nice that you'll"
	
	para "find you come up"
	line "with all kinds of"
	cont "good ideas."
	done
	
.SeenText:
	text "When I win, and"
	line "even when the"
	
	para "impossible happens"
	line "and I lose, I"
	
	para "analyze every one"
	line "of my battles to"
	cont "grow stronger."
	done

.BeatenText:
	text "I want to ride"
	line "away on my #-"
	
	para "mon so I can"
	line "ponder why I lost…"
	done
	
TrainerAceTrainerFVictoryRoadOutdoor2F:
	generictrainer ACE_TRAINERF_D, ACE_TRAINERF_VICTORY_ROAD_EXT_2, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_EXT_2, .SeenText, .BeatenText

	text "Overcoming one's"
	line "fears is an"
	
	para "important part of"
	line "being an Ace"
	cont "Trainer!"
	
	para "But still, I hate"
	line "being up so high…"
	done
	
.SeenText:
	text "To battle in a"
	line "high-up place…"
	
	para "This is a perfect"
	line "situation for an"
	
	para "Ace Trainer such"
	line "as I!"
	done

.BeatenText:
	text "To tell the truth…"
	line "I'm actually"
	cont "afraid of heights…"
	done
	
TrainerScientistMVictoryRoadOutdoor2F:
	generictrainer SCIENTISTM, SCIENTISTM_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTM_VICTORY_ROAD_EXT, .SeenText, .BeatenText

	text "#mon are like a"
	line "science to me."
	
	para "I must study them"
	line "at the height of"
	
	para "their growth if I"
	line "am to understand!"
	done
	
.SeenText:
	text "Hm… What could be"
	line "the key to #mon"
	
	para "battles and #-"
	line "mon growth?"
	
	para "This, I will study"
	line "in battle with"
	cont "you!"
	done

.BeatenText:
	text "This was very"
	line "helpful…"
	done
	
TrainerScientistFVictoryRoadOutdoor2F:
	generictrainer SCIENTISTF, SCIENTISTF_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTF_VICTORY_ROAD_EXT, .SeenText, .BeatenText

	text "Battling #mon"
	line "really helps blow"
	cont "off steam!"
	
	para "I'm much less"
	line "stressed now!"
	done
	
.SeenText:
	text "When I'm stuck"
	line "inside the lab"
	
	para "every day, I get"
	line "so stressed out!"
	done

.BeatenText:
	text "Aaaaah! So"
	line "frustrating!"
	done
	
TrainerBlackBeltVictoryRoadOutdoor2F:
	generictrainer BLACKBELT_T, BLACKBELT_VICTORY_ROAD_EXT, EVENT_BEAT_BLACKBELT_VICTORY_ROAD_EXT, .SeenText, .BeatenText

	text "I'll use the"
	line "bitterness of this"
	
	para "defeat to reach"
	line "even greater"
	cont "heights!"
	done
	
.SeenText:
	text "Let's fight!"
	done

.BeatenText:
	text "You took a win"
	line "from me! It's so"
	cont "frustrating!"
	done
	
TrainerBattleGirlVictoryRoadOutdoor2F:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_VICTORY_ROAD_EXT, EVENT_BEAT_BATTLE_GIRL_VICTORY_ROAD_EXT, .SeenText, .BeatenText

	text "If you can't over-"
	line "come a hurdle, you"
	
	para "can always just go"
	line "around it. Head up"
	
	para "here, and you'll"
	line "find the greatest"
	
	para "hurdle for #mon"
	line "trainers: the"
	cont "#mon League!"
	done
	
.SeenText:
	text "Life is all about"
	line "overcoming"
	
	para "hurdles! Could you"
	line "be a hurdle for"
	cont "me?"
	done

.BeatenText:
	text "I couldn't overcome"
	line "the hurdle you"
	cont "presented to me…"
	done
