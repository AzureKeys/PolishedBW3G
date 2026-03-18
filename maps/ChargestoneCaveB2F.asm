ChargestoneCaveB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  3, CHARGESTONE_CAVE_B1F, 4
	
	def_coord_events

	def_bg_events
	bg_event  3, 19, BGEVENT_ITEM + ELIXIR, EVENT_CHARGESTONE_CAVE_B2F_ELIXIR
	
	def_object_events
	object_event  6,  8, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLACK, OBJECTTYPE_GENERICTRAINER, 2, TrainerGuitaristChargestoneCaveB2F, -1
	object_event  8, 21, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHikerChargestoneCaveB2F, -1
	object_event 18, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerMChargestoneCaveB2F, -1
	itemball_event  2, 17, REVIVE, 1, EVENT_CHARGESTONE_CAVE_B2F_REVIVE
	itemball_event 15, 17, RARE_CANDY, 1, EVENT_CHARGESTONE_CAVE_B2F_RARE_CANDY
	tmhmball_event 18,  3, TM_WILD_CHARGE, EVENT_CHARGESTONE_CAVE_B2F_TM_WILD_CHARGE
	
TrainerGuitaristChargestoneCaveB2F:
	generictrainer GUITARIST, GUITARIST_CHARGESTONE_2, EVENT_BEAT_GUITARIST_CHARGESTONE_2, .SeenText, .BeatenText

	text "You know what? At"
	line "first I would"
	
	para "practice real"
	line "quiet so I"
	
	para "wouldn't bother"
	line "the #mon living"
	
	para "here… But then"
	line "guess what! The"
	
	para "#mon come and"
	line "listen to me play!"
	done
	
.SeenText:
	text "Here I go!"
	done

.BeatenText:
	text "Your style is"
	line "electrifying!"
	done
	
TrainerHikerChargestoneCaveB2F:
	generictrainer HIKER_D, HIKER_CHARGESTONE_3, EVENT_BEAT_HIKER_CHARGESTONE_3, .SeenText, .BeatenText

	text "I should have"
	line "brought an Escape"
	cont "Rope!"
	done
	
.SeenText:
	text "It is the way of"
	line "greeting high in"
	
	para "the mountains and"
	line "down in the caves."
	
	para "That's right! We"
	line "each get our #-"
	cont "mon, and begin!"
	done

.BeatenText:
	text "Farewell…"
	line "Farewell, my"
	cont "victory…"
	done
	
TrainerAceTrainerMChargestoneCaveB2F:
	generictrainer ACE_TRAINERM_D, ACE_TRAINERM_CHARGESTONE_2, EVENT_BEAT_ACE_TRAINERM_CHARGESTONE_2, .SeenText, .BeatenText

	text "What I found on"
	line "the PC was just"
	
	para "someone else's"
	line "idea and not an"
	
	para "answer that I had"
	line "come up with"
	cont "myself…"
	done
	
.SeenText:
	text "I researched on"
	line "the PC the best"
	
	para "way to battle, and"
	line "now I'm sure to"
	cont "win!"
	done

.BeatenText:
	text "Seriously?"
	done
