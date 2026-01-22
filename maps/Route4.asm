Route4_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 36,  3, ROUTE_4_NIMBASA_GATE, 3
	warp_event  5,  5, ROUTE_4_DESERT_GATE, 3
	warp_event 35, 55, ROUTE_4_CASTELIA_GATE, 1
	warp_event 36, 55, ROUTE_4_CASTELIA_GATE, 2
	warp_event 43, 29, ROUTE_4_HOUSE, 1
	
	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, R4DesertSignText
	bg_event 38, 50, BGEVENT_JUMPTEXT, R4CasteliaSignText
	bg_event 32, 52, BGEVENT_ITEM + ULTRA_BALL, EVENT_ROUTE_4_ULTRA_BALL
	bg_event 14, 26, BGEVENT_ITEM + PEARL, EVENT_ROUTE_4_PEARL
	bg_event 25, 28, BGEVENT_ITEM + BURN_HEAL, EVENT_ROUTE_4_BURN_HEAL
	bg_event 12, 34, BGEVENT_ITEM + ETHER, EVENT_ROUTE_4_ETHER_2
	bg_event 16, 44, BGEVENT_ITEM + RED_SHARD, EVENT_ROUTE_4_RED_SHARD
	bg_event 39, 46, BGEVENT_ITEM + GREEN_SHARD, EVENT_ROUTE_4_GREEN_SHARD
	bg_event  5,  9, BGEVENT_ITEM + YELLOW_SHARD, EVENT_ROUTE_4_YELLOW_SHARD
	
	def_object_events
	object_event 22, 35, SPRITE_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLadyR4, -1
	object_event 33, 39, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, TrainerRichBoyR4, -1
	object_event 16, 30, SPRITE_ROUGHNECK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerRoughneckR4, -1
	object_event 14, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 0, TrainerFisher1R4, -1
	object_event 14, 53, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_GENERICTRAINER, 0, TrainerFisher2R4, -1
	object_event 19, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPoliceman1R4, -1
	object_event 34, 50, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerPoliceman2R4, -1
	object_event 36,  9, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMR4, -1
	object_event 24, 20, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerFR4, -1
	object_event 26, 46, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBikerR4, -1
	itemball_event 12, 18, HEAVY_BALL, 3, EVENT_ROUTE_4_HEAVY_BALL
	itemball_event 19, 55, X_ACCURACY, 1, EVENT_ROUTE_4_X_ACCURACY
	itemball_event 38, 36, ETHER, 1, EVENT_ROUTE_4_ETHER_1
	itemball_event 27, 37, SUPER_POTION, 3, EVENT_ROUTE_4_SUPER_POTION
	
TrainerLadyR4:
	trainer LADY, LADY_R4, EVENT_BEAT_LADY_R4, LadyR4SeenText, LadyR4BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_LADY_LACEY
	opentext
	checkflag ENGINE_LACEY_READY_FOR_REMATCH
	iftruefwd .ChooseRematch
	checkcellnum PHONE_LADY_LACEY
	iftruefwd .NumberAccepted
	checkevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgainForPhoneNumber
	writetext LadyR4AfterText
	promptbutton
	setevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	callstd asknumber1f
	sjumpfwd .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	callstd asknumber2f
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LADY_LACEY
	ifequalfwd PHONE_CONTACTS_FULL, .PhoneFull
	ifequalfwd PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_LACEY
	gettrainername LADY, LADY_R4, STRING_BUFFER_3
	callstd registerednumberf
	jumpstd numberacceptedf
	
.ChooseRematch:
	callstd rematchf
	winlosstext LadyR4BeatenText, 0
	; checkevent EVENT_BEAT_POKEMON_LEAGUE
	; iftrue .LoadFight4
	; checkmapscene SEASIDE_CAVE_CHAMBER
	; ifequal SCENE_FINISHED, .LoadFight3
	; checkevent EVENT_FINISHED_PWT
	; iftrue .LoadFight2
	; checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	; iftrue .LoadFight1
; Fight0
	loadtrainer LADY, LADY_R4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight1
	loadtrainer LADY, LACEY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight2
	loadtrainer LADY, LACEY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight3
	loadtrainer LADY, LACEY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	sjumpfwd .Gift
	
.LoadFight4
	loadtrainer LADY, LACEY_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	callstd giftf
	rematchgift REMATCHGIFT_TIER_1
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
	
TrainerRichBoyR4:
	generictrainer RICH_BOY, RICH_BOY_R4, EVENT_BEAT_RICH_BOY_R4, .SeenText, .BeatenText

	text "A match with a"
	line "worthy challenger…"
	
	para "It makes me gleam"
	line "with joy!"
	done
	
.SeenText:
	text "I'll see if you're"
	line "worthy to stand on"
	
	para "the same stage as"
	line "me!"
	done

.BeatenText:
	text "You've got what"
	line "it takes!"
	done
	
TrainerRoughneckR4:
	generictrainer ROUGHNECK, ROUGHNECK_R4, EVENT_BEAT_ROUGHNECK_R4, .SeenText, .BeatenText

	text "All I know is if"
	line "you're a trainer,"
	
	para "you're gonna get"
	line "challenged!"
	done
	
.SeenText:
	text "This ain't no"
	line "place for kids"
	cont "like you!"
	done

.BeatenText:
	text "Just who are you?"
	line "You looked pretty"
	cont "timid."
	done
	
TrainerFisher1R4:
	generictrainer FISHER, FISHER_R4_1, EVENT_BEAT_FISHER_R4_1, .SeenText, .BeatenText

	text "I like to think"
	line "#mon cling to"

	para "my hook because"
	line "they want to"
	cont "battle me!"
	done
	
.SeenText:
	text "You've been caught"
	line "by a powerful"
	cont "hook, which is me!"
	done

.BeatenText:
	text "That one got away!"
	done
	
TrainerFisher2R4:
	generictrainer FISHER_D, FISHER_R4_2, EVENT_BEAT_FISHER_R4_2, .SeenText, .BeatenText

	text "As long as you've"
	line "got momentum, you"

	para "don't need"
	line "experience or"
	cont "knowledge!"
	done
	
.SeenText:
	text "Check out my"
	line "lively #mon,"

	para "which I've"
	line "gathered from all"
	cont "around Unova!"
	done

.BeatenText:
	text "Mm hm… Looks like"
	line "you're even more"
	cont "lively and fresh!"
	done
	
TrainerPoliceman1R4:
	generictrainer POLICEMAN, POLICEMAN_R4_1, EVENT_BEAT_POLICEMAN_R4_1, .SeenText, .BeatenText

	text "An officer's job"
	line "is to keep on"
	
	para "patrolling even"
	line "when nothing's"
	cont "going on!"
	done
	
.SeenText:
	text "What's a kid like"
	line "you doing around"
	cont "these parts?"
	done

.BeatenText:
	text "To have bested an"
	line "officer like me…"
	
	para "What kind of a kid"
	line "are you?"
	done
	
TrainerPoliceman2R4:
	generictrainer POLICEMAN, POLICEMAN_R4_2, EVENT_BEAT_POLICEMAN_R4_2, .SeenText, .BeatenText

	text "Just because"
	line "you're strong"

	para "doesn't mean you"
	line "can look down on"
	cont "those who aren't!"
	done
	
.SeenText:
	text "Ah, that smell?"
	
	para "My #mon here"
	line "seems to say that"
	
	para "you've got a"
	line "dangerous smell"
	cont "about you!"
	done

.BeatenText:
	text "I see…"
	line "Your strength is"
	
	para "certainly quite"
	line "dangerous…"
	done
	
TrainerBackpackerMR4:
	generictrainer BACKPACKERM, BACKPACKERM_R4, EVENT_BEAT_BACKPACKERM_R4, .SeenText, .BeatenText

	text "#mon just wait"
	line "inside their #-"
	
	para "Balls until they"
	line "are needed…"
	
	para "#mon sure are"
	line "convenient!"
	done
	
.SeenText:
	text "What? You're a"
	line "trainer? Awesome!"
	done

.BeatenText:
	text "Oh well… Time for"
	line "my #mon to"
	cont "return…"
	done
	
TrainerBackpackerFR4:
	generictrainer BACKPACKERF, BACKPACKERF_R4, EVENT_BEAT_BACKPACKERF_R4, .SeenText, .BeatenText

	text "I'll make my cute"
	line "#mon even"
	
	para "stronger by having"
	line "battles with lots"
	cont "of trainers!"
	done
	
.SeenText:
	text "Now dance grace-"
	line "fully! Bring forth"

	para "your beautiful"
	line "moves! Let us"
	
	para "perform, my lovely"
	line "#mon!"
	done

.BeatenText:
	text "Even though they"
	line "lost, my #mon"
	cont "are still cute!"
	done
	
TrainerBikerR4:
	generictrainer BIKER, BIKER_R4, EVENT_BEAT_BIKER_R4, .SeenText, .BeatenText

	text "Both bicycles and"
	line "motorcycles get"
	
	para "their tires stuck"
	line "in the sand!"
	done
	
.SeenText:
	text "A motorcycle in"
	line "the desert! It"
	
	para "doesn't get much"
	line "more wild than"
	cont "this, eh?"
	done

.BeatenText:
	text "Motorcycles aren't"
	line "comptible with"
	
	para "sand, and I'm not"
	line "compatible with"
	cont "you!"
	done
	
LadyR4SeenText:
	text "A stylish #mon"
	line "battle is starting"
	cont "now!"
	done
	
LadyR4BeatenText:
	text "…What? It's over"
	line "already?"
	done
	
LadyR4AfterText:
	text "You're both strong"
	line "and beautiful,"
	cont "I'm impressed!"
	done

R4DesertSignText:
	text "Desert Resort"
	line "ahead."
	done

R4CasteliaSignText:
	text "South to"
	line "Castelia City."
	done
