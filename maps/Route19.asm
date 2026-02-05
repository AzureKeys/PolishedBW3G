Route19_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 21, ROUTE_19_ASPERTIA_GATE, 1
	warp_event  6, 21, ROUTE_19_ASPERTIA_GATE, 2
	warp_event 13, 13, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_19
	bg_event 14, 13, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_19
	
	def_object_events
	object_event 42, 16, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_FLOCCESY_TOWN_JUNIPER
	object_event  9, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederFR19, -1
	object_event 33, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederMR19, -1
	object_event 18, 18, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerMaidR19, -1
	object_event 21, 13, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerLadyR19, -1
	object_event 20, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, TrainerDepotAgent1R19, -1
	object_event 30, 12, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, TrainerDepotAgent2R19, -1
	object_event 26, 17, SPRITE_BAKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerBakerR19, -1
	fruittree_event 23, 11, FRUITTREE_ROUTE_19, CHESTO_BERRY, PAL_NPC_PURPLE
	itemball_event 12, 14, X_SP_DEF, 1, EVENT_ROUTE_19_X_SP_DEF
	itemball_event 23, 21, X_SP_ATK, 1, EVENT_ROUTE_19_X_SP_ATK
	itemball_event 32, 11, PP_UP, 1, EVENT_ROUTE_19_PP_UP
	itemball_event 28,  4, NUGGET, 1, EVENT_ROUTE_19_NUGGET
	itemball_event 40, 16, RARE_CANDY, 1, EVENT_ROUTE_19_RARE_CANDY
	itemball_event 13,  6, LURE_BALL, 3, EVENT_ROUTE_19_LURE_BALL
	
	object_const_def
	const ROUTE19_JUNIPER
	const ROUTE19_PKMN_BREEDERM
	const ROUTE19_PKMN_BREEDERF
	
TrainerMaidR19:
	trainer MAID, MAID_R19, EVENT_BEAT_MAID_R19, MaidR19SeenText, MaidR19BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_MAID_SOPHIE
	opentext
	checkflag ENGINE_SOPHIE_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_MAID_SOPHIE
	iftruefwd .NumberAccepted
	checkevent EVENT_SOPHIE_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext MaidR19AfterText
	promptbutton
	setevent EVENT_SOPHIE_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_MAID_SOPHIE
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_SOPHIE
	gettrainername MAID, MAID_R19, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext MaidR19BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight4
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight3
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight2
	; checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	; iftrue .LoadFight1
; Fight0
	loadtrainer MAID, MAID_R19
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1:
	loadtrainer MAID, SOPHIE_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2:
	loadtrainer MAID, SOPHIE_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3:
	loadtrainer MAID, SOPHIE_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight4:
	loadtrainer MAID, SOPHIE_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftf
	rematchgift REMATCHGIFT_TIER_2
	ifequalfwd FALSE, .PackIsFull
	end
	
.NumberAccepted:
	jumpstd numberacceptedf
	
.PhoneFull:
	jumpstd phonefullf
	
.NumberDeclined:
	jumpstd numberdeclinedf
	
.PackIsFull:
	jumpstd packfullf
	
TrainerPkmnBreederMR19:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R19, EVENT_BEAT_PKMN_BREEDERM_R19, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked ROUTE19_PKMN_BREEDERM
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R19
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "I'm always"
	line "patrolling this"
	cont "area!"
	done
	
.BeatenText:
	text "I couldn't take"
	line "advantage of the"
	cont "terrain!"
	done
	
.AfterText:
	text "Something changes"
	line "here every day, so"

	para "it's always fun"
	line "to patrol!"
	
	para "Come and see me if"
	line "you want another"
	cont "battle!"
	done
	
TrainerPkmnBreederFR19:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R19, EVENT_BEAT_PKMN_BREEDERF_R19, .SeenText, .BeatenText, 0, .Script

.Script:
	checkjustbattled
	iftruefwd .AfterBattle
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked ROUTE19_PKMN_BREEDERF
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R19
	startbattle
	reloadmapafterbattle
.AfterBattle
	showtext .AfterText
	end

.SeenText:
	text "We are totally in"
	line "sync! I will teach"
	
	para "you all about"
	line "#mon Breeders!"
	done
	
.BeatenText:
	text "In fact, we"
	line "learned all about"
	cont "you!"
	done
	
.AfterText:
	text "Listen carefully…"
	line "You may hear the"
	
	para "sound of breathing"
	line "#mon."
	
	para "If you want to"
	line "have another"
	
	para "battle, come talk"
	line "to me again!"
	done
	
TrainerLadyR19:
	generictrainer LADY, LADY_R19, EVENT_BEAT_LADY_R19, .SeenText, .BeatenText

	text "Your #mon were"
	line "truly beautiful"
	cont "too!"
	done
	
.SeenText:
	text "Are you beautiful"
	line "as a trainer?"
	cont "Surprise me!"
	done

.BeatenText:
	text "…Strong and"
	line "beautiful! You"
	cont "captivated me!"
	done
	
TrainerDepotAgent1R19:
	generictrainer DEPOT_AGENT, DEPOT_AGENT_R19_1, EVENT_BEAT_DEPOT_AGENT_R19_1, .SeenText, .BeatenText

	text "Have you taken the"
	line "subway in Nimbasa"
	cont "City?"
	done
	
.SeenText:
	text "This is the battle"
	line "train! All aboard!"
	done

.BeatenText:
	text "You're the non-"
	line "stop express line!"
	done
	
TrainerDepotAgent2R19:
	generictrainer DEPOT_AGENT, DEPOT_AGENT_R19_2, EVENT_BEAT_DEPOT_AGENT_R19_2, .SeenText, .BeatenText

	text "I'm going to be"
	line "working at the"

	para "subway starting"
	line "from today, but…"
	
	para "I don't actually"
	line "know where it is!"
	done
	
.SeenText:
	text "I want you to tell"
	line "me something!"
	done

.BeatenText:
	text "You showed me your"
	line "full strength!"
	done
	
TrainerBakerR19:
	generictrainer BAKER, BAKER_R19, EVENT_BEAT_BAKER_R19, .SeenText, .BeatenText

	text "I'm just never"
	line "satisfied with my"
	
	para "bread, even though"
	line "I bake it very"
	cont "well."
	
	para "I always want to"
	line "make the next loaf"
	
	para "even more"
	line "delicious!"
	done
	
.SeenText:
	text "I'm not satisfied"
	line "with my baking."
	
	para "Are you satisfied"
	line "with your #mon"
	cont "training?"
	done

.BeatenText:
	text "Are you pleased"
	line "with your victory?"
	
	para "Or are you"
	line "unsatisfied?"
	done
	
MaidR19SeenText:
	text "You! Are you a fan"
	line "of that person?"

	para "But that person is"
	line "mine!"
	done
	
MaidR19BeatenText:
	text "Oh no, oh why?"
	line "I'm sorry…"
	done
	
MaidR19AfterText:
	text "Heehee… That"
	line "person I'm talking"

	para "about is the Gym"
	line "Leader, Cheren!"
	
	para "Though come to"
	line "think of it,"
	
	para "you're pretty cool"
	line "too!"
	done
