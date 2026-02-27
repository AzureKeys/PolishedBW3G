Route3_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route3EggCallback

	def_warp_events
	warp_event  4, 34, ROUTE_3_NACRENE_GATE, 3
	warp_event  4, 35, ROUTE_3_NACRENE_GATE, 4
	warp_event 37,  5, ROUTE_3_DAY_CARE, 1
	warp_event  5,  5, WELLSPRING_CAVE_1F, 1
	warp_event 35, 23, HIDDEN_TREE_GROTTO, 1
	
	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_JUMPTEXT, R3WellspringSignText
	bg_event 36,  6, BGEVENT_JUMPTEXT, R3DayCareSignText
	bg_event  6, 12, BGEVENT_ITEM + HP_UP, EVENT_ROUTE_3_HP_UP
	bg_event 35, 23, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_3
	
	def_object_events
	object_event 38,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, Route3DayCareManScript, EVENT_ROUTE_3_DAY_CARE_MAN
	object_event 10, 34, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerFR3, -1
	object_event 30, 27, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerMR3, -1
	object_event 25,  9, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerSocialiteR3, -1
	object_event 27, 18, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerArtistR3, -1
	object_event 13,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerGentlemanR3, -1
	object_event 18, 32, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerFisher1R3, -1
	object_event 21, 36, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 0, TrainerFisher2R3, -1
	itemball_event 36, 27, DIVE_BALL, 3, EVENT_ROUTE_3_DIVE_BALL
	itemball_event 20, 37, SUPER_REPEL, 3, EVENT_ROUTE_3_SUPER_REPEL
	itemball_event 10, 14, RARE_CANDY, 1, EVENT_ROUTE_3_RARE_CANDY
	itemball_event  7, 24, MAX_ETHER, 1, EVENT_ROUTE_3_MAX_ETHER
	
	object_const_def
	const ROUTE3_DAY_CARE_MAN
	
Route3EggCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftruefwd .AppearDayCareMan
	clearevent EVENT_INSIDE_DAY_CARE_MAN
	setevent EVENT_ROUTE_3_DAY_CARE_MAN
	endcallback
	
.AppearDayCareMan
	clearevent EVENT_ROUTE_3_DAY_CARE_MAN
	setevent EVENT_INSIDE_DAY_CARE_MAN
	endcallback

Route3DayCareManScript:
	faceplayer
	opentext
	special Special_DayCareManOutside
	waitbutton
	closetext
	ifequalfwd $1, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	readvar VAR_FACING
	ifequalfwd RIGHT, .right_movement
	applymovement ROUTE3_DAY_CARE_MAN, .DayCareManUpMovement
	sjumpfwd .after_movement
.right_movement
	applymovement ROUTE3_DAY_CARE_MAN, .DayCareManRightMovement
.after_movement
	playsound SFX_ENTER_DOOR
	disappear ROUTE3_DAY_CARE_MAN
	waitsfx
.end_fail
	end
.DayCareManUpMovement:
	slow_step_left
	slow_step_up
	slow_step_up
	step_end
.DayCareManRightMovement:
	slow_step_up
	slow_step_left
	slow_step_up
	step_end
	
TrainerPkmnRangerFR3:
	trainer PKMN_RANGERF, PKMN_RANGERF_R3, EVENT_BEAT_PKMN_RANGERF_R3, PkmnRangerFR3SeenText, PkmnRangerFR3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PKMN_RANGER_ARIANA
	opentext
	checkflag ENGINE_ARIANA_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_PKMN_RANGER_ARIANA
	iftruefwd .NumberAccepted
	checkevent EVENT_ARIANA_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext PkmnRangerFR3AfterText
	promptbutton
	setevent EVENT_ARIANA_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_PKMN_RANGER_ARIANA
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_ARIANA
	gettrainername PKMN_RANGERF, PKMN_RANGERF_R3, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext PkmnRangerFR3BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight3
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight2
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight1
; Fight0
	loadtrainer PKMN_RANGERF, PKMN_RANGERF_R3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer PKMN_RANGERF, ARIANA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer PKMN_RANGERF, ARIANA_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3
	loadtrainer PKMN_RANGERF, ARIANA_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
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
	
TrainerPkmnRangerMR3:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_R3, EVENT_BEAT_PKMN_RANGERM_R3, .SeenText, .BeatenText

	text "You need to be"
	line "able to predict"
	
	para "your opponent's"
	line "moves. It's a true"
	cont "test of skill!"
	done
	
.SeenText:
	text "Forming a team of"
	line "#mon that can"
	
	para "work well together"
	line "is key in battle!"
	cont "Let's begin!"
	done

.BeatenText:
	text "Oh no! The way I"
	line "positioned my"
	
	para "#mon was"
	line "terrible!"
	done
	
TrainerSocialiteR3:
	generictrainer SOCIALITE, SOCIALITE_R3, EVENT_BEAT_SOCIALITE_R3, .SeenText, .BeatenText

	text "Those lives that"
	line "come into our"
	cont "world as #mon…"
	
	para "For me, being"
	line "unsure if they"
	
	para "really wanted to"
	line "live with humans,"
	
	para "I parted ways with"
	line "my #mon."
	
	para "But as it turns"
	line "out, the time we"
	
	para "spent together"
	line "seems to be the"
	cont "best of all."
	done
	
.SeenText:
	text "Two years ago, I"
	line "parted ways with"
	cont "my #mon…"

	para "Yet in my heart,"
	line "I've never stopped"
	
	para "being a #mon"
	line "trainer!"
	done

.BeatenText:
	text "This is the type"
	line "of defeat that"
	
	para "only a #mon"
	line "trainer can"
	cont "experience."
	done
	
TrainerArtistR3:
	generictrainer ARTIST, ARTIST_R3, EVENT_BEAT_ARTIST_R3, .SeenText, .BeatenText

	text "I'll draw how I"
	line "want to draw! I'll"

	para "live how I want to"
	line "live! That's the"
	cont "best way!"
	done
	
.SeenText:
	text "A high level"
	line "battling technique"
	
	para "is art in its own"
	line "way!"
	done

.BeatenText:
	text "Your strength can't"
	line "be put into words!"
	done
	
TrainerGentlemanR3:
	generictrainer GENTLEMAN, GENTLEMAN_R3, EVENT_BEAT_GENTLEMAN_R3, .SeenText, .BeatenText

	text "I am reminded of"
	line "my childhood and"
	
	para "chasing innocently"
	line "after bug #mon…"
	
	para "It was that day"
	line "that I started on"
	
	para "the path to"
	line "trainerhood."
	done
	
.SeenText:
	text "I came here"
	line "because this place"

	para "feels quite"
	line "nostalgic to me…"
	
	para "But I'd rather"
	line "battle than stroll"
	cont "down memory lane!"
	done

.BeatenText:
	text "I see… So that's"
	line "it. I used to also"
	
	para "be that focused"
	line "long ago."
	done
	
TrainerFisher1R3:
	generictrainer FISHER, FISHER_R3_1, EVENT_BEAT_FISHER_R3_1, .SeenText, .BeatenText

	text "I want to go deep"
	line "sea fishing on the"
	cont "Royal Unova!"
	done
	
.SeenText:
	text "I am a wonderful"
	line "fisherman who"
	cont "loves everything!"
	done

.BeatenText:
	text "I even love a"
	line "disappointing"
	cont "result!"
	done
	
TrainerFisher2R3:
	generictrainer FISHER_D, FISHER_R3_2, EVENT_BEAT_FISHER_R3_2, .SeenText, .BeatenText

	text "My own #mon are"
	line "the best ones for"

	para "me! I won't"
	line "compare them with"
	cont "anyone else's!"
	done
	
.SeenText:
	text "Hey! What kinds of"
	line "great #mon have"
	cont "you caught?"
	done

.BeatenText:
	text "Ho ho! These are"
	line "some impressive"
	cont "#mon!"
	done
	
PkmnRangerFR3SeenText:
	text "Melding into the"
	line "wild landscape…"

	para "That's what a #-"
	line "mon Ranger does!"
	done
	
PkmnRangerFR3BeatenText:
	text "I am such a weak-"
	line "ling! I will dis-"
	cont "appear back into"
	cont "the wilderness!"
	done
	
PkmnRangerFR3AfterText:
	text "If you blend into"
	line "the wilderness too"

	para "well, you won't be"
	line "noticed by #-"
	cont "mon, let alone by"
	cont "people."
	done

R3WellspringSignText:
	text "Wellspring Cave."
	
	para "Beware of wild"
	line "#mon!"
	done

R3DayCareSignText:
	text "Day Care."
	
	para "Let your #mon"
	line "play with us!"
	done
