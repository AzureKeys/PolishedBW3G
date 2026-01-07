LentimasOutskirt_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SetStrangeHouse

	def_warp_events
	warp_event 14,  3, REVERSAL_MOUNTAIN_B1F, 6
	warp_event 33, 11, STRANGE_HOUSE_1F, 1

	def_coord_events

	def_bg_events
	bg_event 15,  4, BGEVENT_JUMPTEXT, LentimasOutskirtReversalSignText
	bg_event  6, 16, BGEVENT_JUMPTEXT, LentimasOutskirtLostlornSignText
	bg_event 30, 15, BGEVENT_ITEM + SUPER_POTION, EVENT_LENTIMAS_OUTSKIRT_SUPER_POTION
	
	def_object_events
	object_event 22, 18, SPRITE_CYCLIST_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerCyclistMLentimas, -1
	object_event 13,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 0, TrainerDoctorLentimas, -1
	object_event 31, 18, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, TrainerSchoolKidMLentimas, -1
	object_event 17,  9, SPRITE_CYCLIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 2, TrainerCyclistFLentimas, -1
	object_event 10, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerYoungsterLentimas, -1
	object_event  6, 12, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerMLentimas, -1
	object_event 16, 17, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerFLentimas, -1
	itemball_event 12,  7, GREAT_BALL, 3, EVENT_LENTIMAS_OUTSKIRT_GREAT_BALL
	itemball_event 14, 19, POTION, 3, EVENT_LENTIMAS_OUTSKIRT_POTION
	itemball_event  6,  6, AWAKENING, 1, EVENT_LENTIMAS_OUTSKIRT_AWAKENING
	itemball_event  9, 18, QUICK_BALL, 3, EVENT_LENTIMAS_OUTSKIRT_QUICK_BALL
	itemball_event 35, 17, RED_SHARD, 1, EVENT_LENTIMAS_OUTSKIRT_RED_SHARD

SetStrangeHouse:
	checkmapscene STRANGE_HOUSE_1F
	ifequalfwd 0, .done ; not yet entered Strange House
	ifequalfwd 6, .done ; puzzle already complete
	setmapscene STRANGE_HOUSE_1F, 1 ; initial furniture layout
.done
	endcallback
	
TrainerCyclistMLentimas:
	trainer CYCLISTM, CYCLISTM_LENTIMAS, EVENT_BEAT_CYCLISTM_LENTIMAS, CyclistMLentimasSeenText, CyclistMLentimasBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_CYCLIST_FREDDY
	opentext
	checkflag ENGINE_FREDDY_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_CYCLIST_FREDDY
	iftruefwd .NumberAccepted
	checkevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext CyclistMLentimasAfterText
	promptbutton
	setevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1m
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2m
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_CYCLIST_FREDDY
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_FREDDY
	gettrainername CYCLISTM, CYCLISTM_LENTIMAS, STRING_BUFFER_3
	callstd registerednumberm
	jumpstd numberacceptedm
	
.ChooseRematch:
	callstd rematchm
	winlosstext CyclistMLentimasBeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight5
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight4
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight3
	; checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	; iftrue .LoadFight2
	; checkevent EVENT_BIANCA_CASTELIA_CALL
	; iftrue .LoadFight1
; Fight0
	loadtrainer CYCLISTM, CYCLISTM_LENTIMAS
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jumpstd .Gift
	
.LoadFight1
	loadtrainer CYCLISTM, FREDDY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jumpstd .Gift
	
.LoadFight2
	loadtrainer CYCLISTM, FREDDY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jumpstd .Gift
	
.LoadFight3
	loadtrainer CYCLISTM, FREDDY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jumpstd .Gift
	
.LoadFight4
	loadtrainer CYCLISTM, FREDDY_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jumpstd .Gift
	
.LoadFight5
	loadtrainer CYCLISTM, FREDDY_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftm
	rematchgift REMATCHGIFT_TIER_1
	ifequalfwd FALSE, .PackIsFull
	end
	
.NumberAccepted:
	jumpstd numberacceptedm
	
.PhoneFull:
	jumpstd phonefullm
	
.NumberDeclined:
	jumpstd numberdeclinedm
	
.PackIsFull:
	jumpstd packfullm
	
TrainerDoctorLentimas:
	trainer DOCTOR, DOCTOR_LENTIMAS, EVENT_BEAT_DOCTOR_LENTIMAS, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerSchoolKidMLentimas:
	generictrainer SCHOOL_KIDM, SCHOOL_KIDM_LENTIMAS, EVENT_BEAT_SCHOOL_KIDM_LENTIMAS, .SeenText, .BeatenText

	text "The trainers in"
	line "the gym are tough."
	
	para "It's hard to even"
	line "hit their #mon!"
	done
	
.SeenText:
	text "I've been training"
	line "to take on the"
	
	para "Gym. I won't give"
	line "up easily!"
	done

.BeatenText:
	text "What! My victory"
	line "was taken away"
	cont "from me!"
	done
	
TrainerCyclistFLentimas:
	generictrainer CYCLISTF, CYCLISTF_LENTIMAS, EVENT_BEAT_CYCLISTF_LENTIMAS, .SeenText, .BeatenText

	text "Whee! Mountain"
	line "biking is tough,"
	
	para "but that's why"
	line "it's so fun!"
	done
	
.SeenText:
	text "Shift gears and"
	line "Bob's your uncle!"

	para "You'll be going"
	line "full speed in no"
	cont "time!"
	done

.BeatenText:
	text "No matter how I"
	line "shift my gears, it"
	
	para "looks like I'll"
	line "never match your"
	cont "speed!"
	done
	
TrainerYoungsterLentimas:
	generictrainer YOUNGSTER, YOUNGSTER_LENTIMAS, EVENT_BEAT_YOUNGSTER_LENTIMAS, .SeenText, .BeatenText

	text "Your way of"
	line "battling, it's got"
	cont "style!"
	done
	
.SeenText:
	text "I'm going to over-"
	line "whelm you with my"
	cont "speed!"
	done

.BeatenText:
	text "Roll, roll, roll,"
	line "roll on!"
	done
	
TrainerPkmnRangerMLentimas:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_LENTIMAS, EVENT_BEAT_PKMN_RANGERM_LENTIMAS, .SeenText, .BeatenText

	text "You don't find"
	line "your place in the"
	
	para "world. You've got"
	line "to make it!"
	done
	
.SeenText:
	text "I'm wandering the"
	line "world trying to"
	
	para "find a place where"
	line "I belong…"
	
	para "How about you?"
	done

.BeatenText:
	text "I lost… So this"
	line "isn't where I"
	cont "belong either…"
	done
	
TrainerPkmnRangerFLentimas:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_LENTIMAS, EVENT_BEAT_PKMN_RANGERF_LENTIMAS, .SeenText, .BeatenText

	text "It's okay if"
	line "everything's the"
	
	para "same, it means"
	line "there aren't any"
	cont "problems!"
	done
	
.SeenText:
	text "Every day is the"
	line "same. I get bored"

	para "when things don't"
	line "change, so I don't"
	cont "mind battling you!"
	done

.BeatenText:
	text "It's been quite"
	line "some time since"
	
	para "I've had a #mon"
	line "battle!"
	done
	
CyclistMLentimasSeenText:
	text "Yahooo! If you"
	line "call, I'll come"
	cont "right away!"
	done
	
CyclistMLentimasBeatenText:
	text "I'm on fire, baby!"
	line "On fire!"
	done
	
CyclistMLentimasAfterText:
	text "Riding a bicycle"
	line "is fun, but I want"

	para "to ride away on a"
	line "#mon!"
	done
	
LentimasOutskirtReversalSignText:
	text "Reversal Mountain."
	
	para "Enter at your"
	line "own risk!"
	done
	
LentimasOutskirtLostlornSignText:
	text "South to"
	line "Lostlorn Forest."
	done
	