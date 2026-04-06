CelestialTower_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 36, CELESTIAL_TOWER_1F, 3
	warp_event  5, 37, CELESTIAL_TOWER_1F, 4
	warp_event  2, 41, CELESTIAL_TOWER, 5
	warp_event  2, 42, CELESTIAL_TOWER, 6
	warp_event  5, 20, CELESTIAL_TOWER, 3
	warp_event  5, 21, CELESTIAL_TOWER, 4
	warp_event  2, 25, CELESTIAL_TOWER, 9
	warp_event  2, 26, CELESTIAL_TOWER, 10
	warp_event  5,  4, CELESTIAL_TOWER, 7
	warp_event  5,  5, CELESTIAL_TOWER, 8
	warp_event  2,  9, CELESTIAL_TOWER_ROOF, 1
	warp_event  2, 10, CELESTIAL_TOWER_ROOF, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4, 43, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerHexManiac1CelestialTower, -1
	object_event  3,  7, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerHexManiac2CelestialTower, -1
	object_event  4, 25, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerMaidCelestialTower, -1
	object_event  8, 21, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicMCelestialTower, -1
	object_event  9,  5, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerPsychicFCelestialTower, -1
	object_event  8, 37, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerSocialite1CelestialTower, -1
	object_event  4, 23, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerSocialite2CelestialTower, -1
	object_event  9, 23, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGentleman1CelestialTower, -1
	object_event  8,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGentleman2CelestialTower, -1
	object_event  4, 41, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerLassCelestialTower, -1
	itemball_event  9, 26, HYPER_POTION, 3, EVENT_CELESTIAL_TOWER_HYPER_POTION
	itemball_event  9,  7, REVIVE, 3, EVENT_CELESTIAL_TOWER_REVIVE
	itemball_event  1, 36, PP_UP, 1, EVENT_CELESTIAL_TOWER_PP_UP
	itemball_event  9, 43, SMOKE_BALL, 1, EVENT_CELESTIAL_TOWER_SMOKE_BALL
	
TrainerHexManiac1CelestialTower:
	generictrainer HEX_MANIAC, HEX_MANIAC_CELESTIAL_TOWER_1, EVENT_BEAT_HEX_MANIAC_CELESTIAL_TOWER_1, .SeenText, .BeatenText

	text "I should focus"
	line "more on increasing"
	cont "my own power…"
	done
	
.SeenText:
	text "I'll borrow this"
	line "tower's power to…"
	
	para "power up my own…"
	line "powers!"
	done

.BeatenText:
	text "I couldn't expect"
	line "that to make my"
	
	para "#mon more"
	line "powerful too…"
	done
	
TrainerHexManiac2CelestialTower:
	generictrainer HEX_MANIAC, HEX_MANIAC_CELESTIAL_TOWER_2, EVENT_BEAT_HEX_MANIAC_CELESTIAL_TOWER_2, .SeenText, .BeatenText

	text "People, #mon…"
	line "Even if the world"
	
	para "is gone, that is"
	line "not the end."
	done
	
.SeenText:
	text "I'm here to under-"
	line "stand the end of"
	
	para "the world, but I"
	line "don't quite get"
	
	para "it. If I have a"
	line "battle, will I be"
	cont "enlightened…?"
	done

.BeatenText:
	text "The end…"
	line "Is that it?"
	done
	
TrainerMaidCelestialTower:
	generictrainer MAID, MAID_CELESTIAL_TOWER, EVENT_BEAT_MAID_CELESTIAL_TOWER, .SeenText, .BeatenText

	text "So many voices"
	line "fill this tower,"
	
	para "eternally"
	line "silenced…"
	
	para "If only someone"
	line "would just listen…"
	done
	
.SeenText:
	text "…I still want to"
	line "fight! The wander-"
	
	para "ing spirits are"
	line "commanding me!"
	done

.BeatenText:
	text "Hah… Hah… The"
	line "spirit just left"
	cont "me."
	done
	
TrainerPsychicMCelestialTower:
	generictrainer PSYCHICM_T, PSYCHICM_CELESTIAL_TOWER, EVENT_BEAT_PSYCHICM_CELESTIAL_TOWER, .SeenText, .BeatenText

	text "When I come to"
	line "Celestial Tower,"
	
	para "strangely, I feel"
	line "the urge to fight."
	done
	
.SeenText:
	text "Let's show the"
	line "resting spirits"
	
	para "the dazzling"
	line "splendor of life!"
	done

.BeatenText:
	text "Hm… Was that a"
	line "spirit just now?"
	done
	
TrainerPsychicFCelestialTower:
	generictrainer PSYCHICF_T, PSYCHICF_CELESTIAL_TOWER, EVENT_BEAT_PSYCHICF_CELESTIAL_TOWER, .SeenText, .BeatenText

	text "The thoughts and"
	line "wishes of the"
	
	para "#mon that rest"
	line "here also provide"
	cont "energy!"
	done
	
.SeenText:
	text "Indescribable"
	line "energy is flowing"
	cont "to me!"
	done

.BeatenText:
	text "The energy is"
	line "escaping… Aww…"
	done
	
TrainerSocialite1CelestialTower:
	generictrainer SOCIALITE, SOCIALITE_CELESTIAL_TOWER_1, EVENT_BEAT_SOCIALITE_CELESTIAL_TOWER_1, .SeenText, .BeatenText

	text "Is it a good thing"
	line "to forget your"
	
	para "#mon after they"
	line "are gone? Or is it"
	
	para "better when you"
	line "cannot forget?"
	done
	
.SeenText:
	text "Oh my, what a"
	line "young trainer. If"
	
	para "it's all right,"
	line "why don't we"
	cont "battle?"
	done

.BeatenText:
	text "There at the end,"
	line "I nearly called"
	
	para "out my late #-"
	line "mon's name."
	done
	
TrainerSocialite2CelestialTower:
	generictrainer SOCIALITE, SOCIALITE_CELESTIAL_TOWER_2, EVENT_BEAT_SOCIALITE_CELESTIAL_TOWER_2, .SeenText, .BeatenText

	text "…That's not true."
	line "As long as I rem-"
	
	para "ember, it will be"
	line "with me forever."
	done
	
.SeenText:
	text "Oh, you want to"
	line "have a battle with"
	
	para "me? All right! I"
	line "have strong #-"
	cont "mon."
	done

.BeatenText:
	text "My strongest #-"
	line "mon is no longer"
	cont "with me…"
	done
	
TrainerGentleman1CelestialTower:
	generictrainer GENTLEMAN, GENTLEMAN_CELESTIAL_TOWER_1, EVENT_BEAT_GENTLEMAN_CELESTIAL_TOWER_1, .SeenText, .BeatenText

	text "Perhaps I meet"
	line "people here"
	
	para "because of guid-"
	line "ance from my"
	cont "#mon."
	done
	
.SeenText:
	text "When #mon"
	line "trainers meet,"
	
	para "what we do is, of"
	line "course, engage in"
	cont "a #mon battle!"
	done

.BeatenText:
	text "Oh no…"
	line "I'm pathetic…"
	done
	
TrainerGentleman2CelestialTower:
	generictrainer GENTLEMAN, GENTLEMAN_CELESTIAL_TOWER_2, EVENT_BEAT_GENTLEMAN_CELESTIAL_TOWER_2, .SeenText, .BeatenText

	text "I have enjoyed"
	line "every day I spend"
	
	para "with my #mon."
	line "If only my #mon"
	
	para "feel the same, I"
	line "can die happy!"
	done
	
.SeenText:
	text "Let us have our"
	line "#mon battle"
	
	para "with gentlemanly"
	line "reserve!"
	done

.BeatenText:
	text "Ho ho ho! Quite"
	line "the affront!"
	done
	
TrainerLassCelestialTower:
	generictrainer LASS, LASS_CELESTIAL_TOWER, EVENT_BEAT_LASS_CELESTIAL_TOWER, .SeenText, .BeatenText

	text "I'm going to catch"
	line "ghost type #mon"
	
	para "because I want to"
	line "meet Shauntal"
	cont "someday!"
	done
	
.SeenText:
	text "Instead of a ghost"
	line "type #mon, I've"
	
	para "found myself a"
	line "spectacular"
	cont "trainer!"
	done

.BeatenText:
	text "You were spectac-"
	line "ular, and more"
	
	para "than that, so"
	line "strong!"
	done
