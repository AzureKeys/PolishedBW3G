DriftveilShelter_MapScriptHeader:
	def_scene_scripts
	scene_script DriftveilShelterTrigger0
	scene_script DriftveilShelterTrigger1

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DriftveilShelter_HandleHugh

	def_warp_events
	warp_event  4, 11, DRIFTVEIL_CITY, 9
	warp_event  5, 11, DRIFTVEIL_CITY, 9

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  8, SPRITE_HUGH, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilShelterHughScript, EVENT_DRIFTVEIL_SHELTER_HUGH
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRIFTVEIL_SHELTER_FRIENDS
	object_event  7,  4, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRIFTVEIL_SHELTER_FRIENDS
	object_event  6,  3, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilShelterRoodScript, -1
	object_event  0,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilShelterGrannyScript, -1
	
	object_const_def
	const DRIFTVEILSHELTER_HUGH
	const DRIFTVEILSHELTER_BIANCA
	const DRIFTVEILSHELTER_CHEREN
	
DriftveilShelterTrigger0:
	sdefer DriftveilShelter_MeetRoodScene
DriftveilShelterTrigger1:
	end

DriftveilShelter_HandleHugh:
	checkevent EVENT_BEAT_HUGH
	iffalsefwd .Disappear
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .Disappear
	appear DRIFTVEILSHELTER_HUGH
	sjumpfwd .done
.Disappear
	disappear DRIFTVEILSHELTER_HUGH
.done
	endcallback

DriftveilShelter_MeetRoodScene:
	turnobject PLAYER, UP
	opentext
	writethistext
	text "???: My name is"
	line "Rood. I run the"
	
	para "#mom shelter"
	line "here in Driftveil."
	
	para "…I'm also a former"
	line "member of Team"
	cont "Plasma…"
	
	para "Rood: You have to"
	line "understand, when"
	
	para "we started Team"
	line "Plasma, we were"
	
	para "supposed to be"
	line "dedicated to"
	cont "helping #mon…"
	
	para "But we were"
	line "deceived…"
	
	para "Since I learned"
	line "our leaders' true"
	
	para "intentions, I've"
	line "dedicated my life"
	
	para "to helping"
	line "abandoned #mon."
	
	para "But it seems some"
	line "of the other Sages"
	
	para "are still loyal to"
	line "those deceivers."
	
	para "Some possibly not"
	line "of their own"
	cont "volition…"
	
	para "When I saw the"
	line "commotion in town,"
	
	para "I knew Zinzolin"
	line "was planning"
	cont "something…"
	
	para "But I never"
	line "thought I'd see"
	cont "her with them…"
	
	para "You see, that"
	line "girl, Infer, is"
	cont "my granddaughter…"
	
	para "I raised her since"
	line "she was little."
	
	para "She always loved"
	line "#mon, but I"
	
	para "never allowed her"
	line "to train them."
	
	para "I fear that may"
	line "have led to some"
	cont "resentment…"
	
	para "One day, she grew"
	line "so angry, she left"
	
	para "home, and never"
	line "returned."
	
	para "Today was the"
	line "first time I've"
	
	para "seen her face in"
	line "years…"
	
	para "But I fear she's"
	line "being deceived…"
	
	para "I fear she's going"
	line "to be used as a"
	
	para "pawn in some"
	line "nefarious scheme,"
	cont "just like I was…"
	
	para "So please, save"
	line "her from Team"
	cont "Plasma, I beg you!"
	
	para "It's not much, but"
	line "I can offer you"
	cont "this to help you."
	done
	promptbutton
	verbosegivetmhm HM_WATERFALL
	writethistext
	text "Cheren: Certainly,"
	line "when we encounter"
	
	para "Team Plasma, we'll"
	line "try to help."
	
	para "Bianca: Of course!"
	
	para "Rood: Oh, thank"
	line "you so much."
	
	para "Cheren: I am sort"
	line "of concerned,"
	cont "though."
	
	para "I didn't see Prof."
	line "Juniper after the"
	cont "Tournament…"
	
	para "Bianca: Oh yeah!"
	line "That is strange…"
	
	para "I wonder where she"
	line "could have gone?"
	
	para "Cheren: Well, it's"
	line "been good seeing"
	cont "you, <PLAYER>."
	
	para "But I need to get"
	line "back to my Gym."
	
	para "Bianca: Oh! And I"
	line "need to return to"
	cont "the lab!"
	
	para "Good luck on your"
	line "journey, <PLAYER>!"
	done
	waitbutton
	closetext
	applymovement DRIFTVEILSHELTER_BIANCA, .BiancaMovement
	applymovement DRIFTVEILSHELTER_CHEREN, .CherenMovement
	disappear DRIFTVEILSHELTER_BIANCA
	disappear DRIFTVEILSHELTER_CHEREN
	setevent EVENT_ASPERTIA_CITY_BLOCKER ; Cheren's Gym open
	clearevent EVENT_NUVEMA_LAB_BIANCA ; Bianca back in lab
	setscene 1
	end
	
.BiancaMovement:
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end
	
.CherenMovement:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

DriftveilShelterRoodScript:
	faceplayer
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse_jumptext .RoodThanksText
	checkevent EVENT_BEAT_HUGH
	iftruefwd .BeatHugh
	checkevent EVENT_SPOKE_TO_ROOD_POSTGAME
	iftruefwd .AlreadySpoken
	showtext .RoodPostgameIntroText
	setevent EVENT_SPOKE_TO_ROOD_POSTGAME
	sjumpfwd .AppearHugh
.AlreadySpoken
	showtext .RoodPostgameAlreadySpokenText
.AppearHugh
	pause 15
	playsound SFX_ENTER_DOOR
	readvar VAR_FACING
	ifequalfwd UP, .Up
	ifequalfwd RIGHT, .Right
	ifequalfwd LEFT, .Left
	; facing DOWN
	applymovement PLAYER, .PlayerDownMovement
	sjumpfwd .HughEnters
.Left
	applymovement PLAYER, .PlayerLeftMovement
	sjumpfwd .HughEnters
.Right
	applymovement PLAYER, .PlayerRightMovement
	sjumpfwd .HughEnters
.Up
	turnobject PLAYER, DOWN
	; fallthrough
.HughEnters
	moveobject DRIFTVEILSHELTER_HUGH,  4,  9
	appear DRIFTVEILSHELTER_HUGH
	waitsfx
	applymovement DRIFTVEILSHELTER_HUGH, .HughApproachMovement
	showtext .HughIntroText
	winlosstext DriftveilShelterHughBeatenText, 0
	checkevent EVENT_GOT_SNIVY
	iftruefwd .TepigTeam
	checkevent EVENT_GOT_TEPIG
	iftruefwd .OshawottTeam
; Snivy Team
	loadtrainer HUGH, HUGH_SNIVY
	sjumpfwd .StartBattle
.TepigTeam
	loadtrainer HUGH, HUGH_TEPIG
	sjumpfwd .StartBattle
.OshawottTeam
	loadtrainer HUGH, HUGH_OSHAWOTT
	; fallthrough
.StartBattle
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HUGH
	setflag ENGINE_HUGH
	jumptext DriftveilShelterHughAfterText

.BeatHugh:
	checkevent EVENT_ROOD_READY_FOR_BATTLE
	iffalse_jumptext .HughAlreadyBeatenText
	checkevent EVENT_BEAT_ROOD
	iffalsefwd .DoRoodBattle
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .DoRoodBattle
	jumpthistext
.HughAlreadyBeatenText:
	text "I'm impressed,"
	line "<PLAYER>."
	
	para "Hugh is one of the"
	line "most determined"
	
	para "#mon trainers"
	line "I've ever met."
	
	para "He doesn't take"
	line "#mon battles"
	cont "lightly."
	
	para "I'm sure he's"
	line "already preparing"
	cont "to face you again!"
	done

.DoRoodBattle
	showtext .RoodSeenText
	winlosstext .RoodBeatenText, 0
	loadtrainer ROOD, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROOD
	setflag ENGINE_ROOD
	jumpthistext
	text "When I see how you"
	line "and your #mon"
	
	para "have bonded with"
	line "each other through"
	
	para "battle, I under-"
	line "stand how mis-"
	cont "guided I've been"
	cont "in the past."
	
	para "I hope that one"
	line "day, my grand-"
	cont "daughter and I can"
	
	para "truly understand"
	line "one another."
	
	para "Thank you,"
	line "<PLAYER>."
	done

.PlayerDownMovement:
	step_right
	step_down
	step_down
	step_left
	turn_head_down
	step_end
	
.PlayerLeftMovement:
	step_down
	step_left
	turn_head_down
	step_end
	
.PlayerRightMovement:
	step_down
	step_right
	turn_head_down
	step_end
	
.HughApproachMovement:
	step_up
	step_up
	step_up
	step_right
	step_right
	step_up
	step_end

.RoodThanksText:
	text "Rood: Thank you"
	line "for your kindness,"
	cont "<PLAYER>."
	done
	
.RoodPostgameIntroText:
	text "Ah, <PLAYER>! It's"
	line "good to see you."
	
	para "I want to thank"
	line "you for your help."
	
	para "Infer came back"
	line "home the other"
	
	para "day. We may not"
	line "have reconciled"
	
	para "all of our differ-"
	line "ences yet, but at"
	
	para "least I know she"
	line "is safe."
	
	para "For that, I owe"
	line "you my deepest"
	cont "gratitude."
	done
	
.RoodPostgameAlreadySpokenText:
	text "Ah, <PLAYER>."
	line "Welcome to the"
	cont "#mon shelter."
	
	para "It's good to see"
	line "you again."
	done
	
.HughIntroText:
	text "???: Hey, Rood,"
	line "Who's this?"
	
	para "Rood: Oh! This is"
	line "<PLAYER>, the"
	
	para "trainer who helped"
	line "stop Team Plasma!"
	
	para "<PLAYER>, this is"
	line "Hugh. He's a"
	
	para "talented #mon"
	line "trainer who often"
	
	para "volunteers here at"
	line "the shelter."
	
	para "Hugh: Hm… So you"
	line "defeated Team"
	cont "Plasma, huh?"
	
	para "You must be a"
	line "pretty strong"
	
	para "#mon trainer"
	line "then."
	
	para "How's about a"
	line "match? Show me"
	cont "what you've got!"
	done
	
.RoodSeenText:
	text "Thank you for"
	line "coming, <PLAYER>."
	
	para "Let us now test"
	line "our bonds with"
	cont "our #mon."
	done
	
.RoodBeatenText:
	text "Hm… I see…"
	done

DriftveilShelterHughScript:
	faceplayer
	checkflag ENGINE_HUGH
	iftrue_jumptext DriftveilShelterHughAfterText
	showtext .SeenText
	winlosstext DriftveilShelterHughBeatenText, 0
	checkevent EVENT_GOT_SNIVY
	iftruefwd .TepigTeam
	checkevent EVENT_GOT_TEPIG
	iftruefwd .OshawottTeam
; Snivy Team
	loadtrainer HUGH, HUGH_SNIVY
	sjumpfwd .StartBattle
.TepigTeam
	loadtrainer HUGH, HUGH_TEPIG
	sjumpfwd .StartBattle
.OshawottTeam
	loadtrainer HUGH, HUGH_OSHAWOTT
	; fallthrough
.StartBattle
	startbattle
	reloadmapafterbattle
	setflag ENGINE_HUGH
	jumptext DriftveilShelterHughAfterText
	
.SeenText:
	text "Hey, <PLAYER>!"
	
	para "I've been thinking"
	line "on what I need to"
	
	para "become stronger,"
	line "and I'm ready to"
	
	para "test out what I've"
	line "come up with. Come"
	cont "on, let's go!"
	done

DriftveilShelterGrannyScript:
	faceplayer
	checkevent EVENT_GOT_A_POKEMON_FROM_SHELTER
	iftrue_jumptext .GotMonText
	opentext
	writethistext
	text "Why hello there,"
	line "young trainer."
	
	para "Here at the #-"
	line "mon Shelter, we"
	
	para "try to find homes"
	line "for abandoned"
	cont "#mon."
	
	para "I know you must be"
	line "a kind trainer if"
	cont "Rood trusts you."
	
	para "There's a #mon"
	line "here that we've"
	
	para "had a hard time"
	line "finding a home"
	cont "for."
	
	para "How would you like"
	line "to take it with"
	cont "you?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writethistext
	text "Oh, that's"
	line "wonderful!"
	
	para "Please take good"
	line "care of it!"
	done
	promptbutton
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .GiveSnivy
	checkevent EVENT_GOT_SNIVY
	iftruefwd .GiveTepig
; Give Oshawott
	givepoke OSHAWOTT, 15
	sjumpfwd .GotMon
.GiveSnivy
	givepoke SNIVY, 15
	sjumpfwd .GotMon
.GiveTepig
	givepoke TEPIG, 15
	; fallthrough
.GotMon
	setevent EVENT_GOT_A_POKEMON_FROM_SHELTER
	jumpthisopenedtext
.GotMonText:
	text "Always remember to"
	line "care for your"
	cont "#mon!"
	done
	
.DeclinedText:
	text "Oh, I'm sorry to"
	line "hear that. Alright"
	cont "then…"
	done

DriftveilShelterHughBeatenText:
	text "Ugh… This power."
	done
	
DriftveilShelterHughAfterText:
	text "Hmph… You really"
	line "are strong enough"
	
	para "to have bested"
	line "Team Plasma."
	
	para "I need to brush up"
	line "on my skills."
	
	para "You and I should"
	line "have a rematch"
	cont "someday."
	
	para "And just to let"
	line "you know, I won't"
	
	para "be holding back"
	line "next time!"
	done
	