Route12_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  3, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event  9,  7, 0, Route12InferScript1
	coord_event  9,  8, 0, Route12InferScript2
	coord_event  9,  9, 0, Route12InferScript3

	def_bg_events
	bg_event 23, 13, BGEVENT_JUMPTEXT, R12SignText
	bg_event  6,  8, BGEVENT_JUMPTEXT, R12BridgeSignText
	bg_event  5,  3, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_12
	bg_event  6,  3, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_12
	bg_event 23,  5, BGEVENT_ITEM + FULL_HEAL, EVENT_ROUTE_12_FULL_HEAL
	
	def_object_events
	object_event  6,  9, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_ROUTE_12_INFER
	object_event 13,  8, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_ROUTE_12_MARLON
	fruittree_event 15,  6, FRUITTREE_ROUTE_12, ORAN_BERRY, PAL_NPC_BLUE
	itemball_event 25,  2, ANTIDOTE, 1, EVENT_ROUTE_12_ANTIDOTE
	object_event 22, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R12YoungsterText, -1
	object_event 13, 12, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R12LassText, -1
	object_event 19,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R12PokefanFText, -1
	
	object_const_def
	const ROUTE12_INFER
	const ROUTE12_MARLON
	
Route12InferScript1:
	applymovement PLAYER, R12Infer_ApproachMovement1
	sjump Route12InferScript
	
Route12InferScript2:
	applymovement PLAYER, R12Infer_ApproachMovement2
	sjump Route12InferScript
	
Route12InferScript3:
	applymovement PLAYER, R12Infer_ApproachMovement3
	; fallthrough
	
Route12InferScript:
	special Special_FadeOutMusic
	pause 15
	showtext .BridgeText
	showemote EMOTE_SHOCK, ROUTE12_INFER, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtextfaceplayer .SeenText
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
	winlosstext .BeatenText, .LostText
	setlasttalked ROUTE12_INFER
	loadtrainer INFER0, INFER1_OSHAWOTT
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftruefwd .Victorious
	sjump .Defeated
	
.Oshawott:
	winlosstext .BeatenText, .LostText
	setlasttalked ROUTE12_INFER
	loadtrainer INFER0, INFER1_SNIVY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftruefwd .Victorious
	sjump .Defeated
	
.Snivy
	winlosstext .BeatenText, .LostText
	setlasttalked ROUTE12_INFER
	loadtrainer INFER0, INFER1_TEPIG
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftruefwd .Victorious
	sjump .Defeated
	
.Victorious:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writethistext
	text "Okay fine, you"
	line "can have the"
	
	para "package I stole"
	line "back."
	
	para "It wasn't even"
	line "what I was"
	
	para "looking for"
	line "anyway!"
	done
	sjump .FinishRival
	
.Defeated:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writethistext
	text "It doesn't matter."
	line "That package"
	
	para "wasn't what I was"
	line "looking for"
	cont "anyway."
	
	para "You can have it"
	line "back, it's"
	cont "useless to me."
	done
	; fallthrough
.FinishRival:
	promptbutton
	writethistext
	text "My name is Infer."
	
	para "Remember my name,"
	line "I'm going to be"
	
	para "the strongest"
	line "#mon trainer"
	cont "in the world!"
	
	para "Don't follow me!"
	done
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, R12Infer_PushMovement
	turnobject PLAYER, RIGHT
	applymovement ROUTE12_INFER, R12Infer_LeaveMovement
	disappear ROUTE12_INFER
	special Special_FadeOutMusic
	pause 30
	sjump Route12MarlonScript
	
.BridgeText:
	text "Darn! What a"
	line "lousy time for"
	
	para "the bridge to"
	line "be out…"
	done
	
.SeenText:
	text "What? You again?"
	
	para "I told you not"
	line "to follow me!"
	
	para "I guess I'll have"
	line "to teach you a"
	cont "lesson!"
	done
	
.BeatenText:	
	text "Darn… I wasn't"
	line "good enough."
	done
	
.LostText:	
	text "Humph. What a"
	line "waste of time."
	done
	
Route12MarlonScript:
	showtext .IntroText
	playmusic MUSIC_MARLON_THEME
	appear ROUTE12_MARLON
	applymovement ROUTE12_MARLON, R12Marlon_ArriveMovement
	showtext .GreetingText
	showemote EMOTE_SHOCK, ROUTE12_MARLON, 15
	opentext
	writethistext
	text "Oh! My package!"
	
	para "That's right! That"
	line "girl ran off with"
	
	para "a package from my"
	line "Gym, so I took off"
	
	para "and tailed her"
	line "here."
	
	para "Looks like you"
	line "managed to get"
	cont "it back."
	
	para "Go ahead, open"
	line "it up!"
	done
	promptbutton
	givespecialitem POKEDEX
	setflag ENGINE_POKEDEX
	writethistext
	text "That's a #dex!"
	
	para "It'll keep track"
	line "of any #mon"
	cont "ya come across!"
	
	para "The Prof. sent it"
	line "for ya along with"
	cont "the #mon."
	
	para "Wonder what that"
	line "girl wanted with"
	cont "it…"
	
	para "Oh! And now that"
	line "ya have a #-"
	cont "dex, you should"
	
	para "have some of"
	line "these!"
	done
	promptbutton
	verbosegiveitem POKE_BALL, 5
	writetext .LeaveText
	waitbutton
	closetext
	applymovement ROUTE12_MARLON, R12Marlon_LeaveMovement
	disappear ROUTE12_MARLON
	special HealParty
	setscene 1
	setevent EVENT_ROUTE_13_BLOCKERS
	clearevent EVENT_ROUTE_13_YOUNGSTER
	special Special_FadeOutMusic
	pause 15
	playmapmusic
	end
	
.IntroText:
	text "<PLAYER>!"
	done
	
.GreetingText:
	text "Marlon: Hey, that"
	line "was some battle!"
	
	para "Sorry I didn't"
	line "step in earlier,"
	
	para "I saw ya battling"
	line "and wanted to see"
	
	para "how you'd hang in"
	line "there!"
	
	para "I'm impressed!"
	line "You're a natural"
	cont "with #mon!"
	
	para "Oh! That reminds"
	line "me, I'd asked ya"
	
	para "to swing by my"
	line "place today."
	
	para "See, ever since"
	line "you and your mom"
	
	para "moved out this"
	line "way, I've had this"
	
	para "feelin' that you'd"
	line "make a pretty fine"
	cont "#mon trainer,"
	
	para "so I asked the"
	line "Prof. to send over"
	
	para "some #mon for"
	line "you to pick from."
	
	para "Looks like my"
	line "hunch was right!"
	done
	
.LeaveText:	
	text "You can use those"
	line "to catch #-"
	cont "mon!"
	
	para "Well, I think I'm"
	line "gonna head on down"
	cont "to Undella Town."
	
	para "You can get there"
	line "by passin' through"
	
	para "Lacunosa Town, and"
	line "then just head"
	
	para "South along the"
	line "beach on Route 13."
	
	para "I'll meet ya"
	line "there!"
	done
	
R12Infer_ApproachMovement1:
	step_down
	step_down
	step_left
	step_left
	step_end
	
R12Infer_ApproachMovement2:
	step_down
	step_left
	step_left
	step_end
	
R12Infer_ApproachMovement3:
	step_left
	step_left
	step_end
	
R12Infer_PushMovement:
	big_step_up
	turn_head_down
	step_end
	
R12Infer_LeaveMovement:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
	
R12Marlon_ArriveMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
R12Marlon_LeaveMovement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
R12YoungsterText:
	text "#mon battles"
	line "begin when eyes"
	cont "meet!"
	
	para "If I were a #-"
	line "mon trainer, you"
	
	para "and I would be"
	line "battling now!"
	
	para "…But I don't have"
	line "any #mon yet…"
	done
	
R12LassText:
	text "Route 12 is a good"
	line "place to find"
	cont "wild #mon!"
	
	para "I'm looking for"
	line "a Shroomish, or"
	cont "maybe a Ralts!"
	done
	
R12PokefanFText:
	text "This Route is so"
	line "nice! It's close"
	
	para "to town, so I"
	line "don't have to"
	
	para "worry about my"
	line "#mon fainting."
	done
	
R12SignText:
	text "Route 12"
	
	para "West to Village"
	line "Bridge."
	done
	
R12BridgeSignText:
	text "Village Bridge"
	
	para "Passage to"
	line "Opelucid City."
	done
	