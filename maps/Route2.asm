Route2_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route2BoulderHoles
	callback MAPCALLBACK_STONETABLE, Route2BoulderCallback

	def_warp_events
	warp_event  7, 34, ROUTE_2, 1 ; hole
	warp_event 11, 30, ROUTE_2_ACCUMULA_GATE, 1
	warp_event 11, 31, ROUTE_2_ACCUMULA_GATE, 2
	warp_event  5, 19, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event 27,  7, BGEVENT_JUMPTEXT, R2SignText
	bg_event 33,  2, BGEVENT_ITEM + MAX_REVIVE, EVENT_ROUTE_2_MAX_REVIVE
	bg_event  5, 19, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_2
	bg_event  6, 19, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_2
	
	def_object_events
	strengthboulder_event  7, 32, EVENT_ROUTE_2_BOULDER
	object_event 21,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_TRAINER, 2, TrainerLassR2, -1
	object_event 26,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerYoungsterR2, -1
	object_event 19, 17, SPRITE_SOCIALITE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerSocialiteR2, -1
	object_event 38,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerGentlemanR2, -1
	object_event  7, 28, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMR2, -1
	object_event 25, 15, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerFR2, -1
	object_event 10, 21, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPolicemanR2, -1
	object_event 14, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR2, -1
	object_event 15, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 1, TrainerTwinsR2, -1
	fruittree_event 16, 17, FRUITTREE_ROUTE_2, RAWST_BERRY, PAL_NPC_TEAL
	itemball_event  4, 34, RARE_CANDY, 1, EVENT_ROUTE_2_RARE_CANDY
	itemball_event  3, 24, FULL_HEAL, 3, EVENT_ROUTE_2_FULL_HEAL
	itemball_event 27, 18, REPEAT_BALL, 3, EVENT_ROUTE_2_REPEAT_BALL
	itemball_event  3,  8, CALCIUM, 1, EVENT_ROUTE_2_CALCIUM
	itemball_event 38, 11, CARBOS, 1, EVENT_ROUTE_2_CARBOS
	tmhmball_event  8, 15, TM_DOUBLE_TEAM, EVENT_ROUTE_2_TM_DOUBLE_TEAM
	
	object_const_def
	const ROUTE2_BOULDER
	
Route2BoulderHoles:
	checkevent EVENT_ROUTE_2_BOULDER
	iffalsefwd .done
	changeblock  6, 34, $6f
.done
	endcallback
	
Route2BoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 1, ROUTE2_BOULDER, .Disappear
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
	disappear ROUTE2_BOULDER
	changeblock  6, 34, $6f
	refreshmap
	waitbutton
	closetext
	end
	
TrainerLassR2:
	trainer LASS_D, LASS_R2, EVENT_BEAT_LASS_R2, LassR2SeenText, LassR2BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_LASS_CARLA
	opentext
	checkflag ENGINE_CARLA_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_LASS_CARLA
	iftruefwd .NumberAccepted
	checkevent EVENT_CARLA_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext LassR2AfterText
	promptbutton
	setevent EVENT_CARLA_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LASS_CARLA
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_CARLA
	gettrainername LASS_D, LASS_R2, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext LassR2BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight3
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight2
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight1
; Fight0
	loadtrainer LASS_D, LASS_R2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer LASS_D, CARLA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer LASS_D, CARLA_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3
	loadtrainer LASS_D, CARLA_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
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
	
TrainerYoungsterR2:
	generictrainer YOUNGSTER_D, YOUNGSTER_R2, EVENT_BEAT_YOUNGSTER_R2, .SeenText, .BeatenText

	text "I like playing in"
	line "the rain! Who got"
	
	para "to decide that"
	line "bright, airy"
	cont "places are best?"
	done
	
.SeenText:
	text "My #mon are"
	line "gonna steam you"
	cont "out!"
	done

.BeatenText:
	text "We haven't lost in"
	line "terms of coolness!"
	
	para "I'll just keep"
	line "thinking that…"
	done
	
TrainerSocialiteR2:
	generictrainer SOCIALITE, SOCIALITE_R2, EVENT_BEAT_SOCIALITE_R2, .SeenText, .BeatenText

	text "When I was young,"
	line "I traveled all"
	
	para "around, together"
	line "with my #mon."
	
	para "Oh, I was such a"
	line "tomboy! Ah ha ha!"
	done
	
.SeenText:
	text "Hello there, young"
	line "trainer. Please,"
	
	para "battle with me for"
	line "a spell."
	done

.BeatenText:
	text "My, oh my. Looks"
	line "like I lost!"
	done
	
TrainerGentlemanR2:
	generictrainer GENTLEMAN, GENTLEMAN_R2, EVENT_BEAT_GENTLEMAN_R2, .SeenText, .BeatenText

	text "Lose… and then"
	line "accept all of the"

	para "sorrow and frust-"
	line "ration that comes"
	cont "with the loss."
	
	para "That's what it"
	line "means to be a"
	
	para "trainer- what it"
	line "means to live with"
	cont "#mon."
	done
	
.SeenText:
	text "I've asked myself"
	line "if it really is"
	
	para "natural for #-"
	line "mon to live with"
	cont "people."
	
	para "I still haven't"
	line "come up with an"
	cont "answer."
	done

.BeatenText:
	text "All sorts of feel-"
	line "ings are stirred"
	cont "up by battling."
	done
	
TrainerBackpackerMR2:
	generictrainer BACKPACKERM, BACKPACKERM_R2, EVENT_BEAT_BACKPACKERM_R2, .SeenText, .BeatenText

	text "I totally loved"
	line "the Wawalk show,"
	
	para "but they took it"
	line "off the air."
	done
	
.SeenText:
	text "It's 'The Waving"
	line "Weaving Walk'-"
	
	para "Wawalk for short!"
	
	para "I wonder what kind"
	line "of #mon we'll"
	cont "meet today?"
	done

.BeatenText:
	text "Your #mon have"
	line "strong abilities,"
	cont "don't they?"
	done
	
TrainerBackpackerFR2:
	generictrainer BACKPACKERF, BACKPACKERF_R2, EVENT_BEAT_BACKPACKERF_R2, .SeenText, .BeatenText

	text "If we can't win"
	line "with these, maybe"
	
	para "I should find my"
	line "#mon some more"
	cont "friends!"
	done
	
.SeenText:
	text "Let's see who has"
	line "the most admirable"
	cont "#mon!"
	done

.BeatenText:
	text "Even though we"
	line "lost, my #mon"
	
	para "are still pretty"
	line "admirable."
	done
	
TrainerPolicemanR2:
	generictrainer POLICEMAN, POLICEMAN_R2, EVENT_BEAT_POLICEMAN_R2, .SeenText, .BeatenText

	text "Go all out while"
	line "you're still"
	cont "young!"
	done
	
.SeenText:
	text "Hey, you! Stop"
	line "right there!"
	done

.BeatenText:
	text "There's no one"
	line "stopping you!"
	
	para "You're what could"
	line "be called"
	cont "unstoppable!"
	done
	
TrainerTwinsR2:
	generictrainer TWINS, TWINS_R2, EVENT_BEAT_TWINS_R2, .SeenText, .BeatenText

	text "I don't know when"
	line "I'm supposed to"
	
	para "use Potions and"
	line "stuff…"
	done
	
.SeenText:
	text "Two #mon!"
	
	para "Strong and strong"
	line "come together to"
	
	para "become…"
	line "very strong!"
	done

.BeatenText:
	text "Uh oh… My #mon"
	line "isn't looking so"
	cont "well…"
	done
	
LassR2SeenText:
	text "Hi, hi! Trainer!"
	line "I will let you see"
	
	para "what kind of #-"
	line "mon I have!"
	done
	
LassR2BeatenText:
	text "Oooh, quit bugging"
	line "me!"
	done
	
LassR2AfterText:
	text "I'll bring out all"
	line "the great sides of"
	
	para "my #mon for"
	line "everyone to see…"
	done
	
R2SignText:
	text "Route 2."
	
	para "South to Accumula"
	line "Town."
	done
	