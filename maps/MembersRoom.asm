MembersRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MembersRoomSetupScript

	def_warp_events
	warp_event  6,  7, SHOPPING_MALL_NINE, 3
	warp_event  7,  7, SHOPPING_MALL_NINE, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  8,  4, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MembersRoomCherenScript, EVENT_MEMBERS_ROOM_CHEREN
	object_event  2,  6, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MembersRoomRoodScript, EVENT_MEMBERS_ROOM_ROOD
	object_event 11,  3, SPRITE_ALDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MembersRoomAlderScript, EVENT_MEMBERS_ROOM_ALDER
	object_event 10,  2, SPRITE_ELESA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MembersRoomElesaScript, EVENT_MEMBERS_ROOM_ELESA
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MembersRoomBiancaScript, EVENT_MEMBERS_ROOM_BIANCA
	object_event 11,  6, SPRITE_MARLON, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MembersRoomMarlonText, EVENT_MEMBERS_ROOM_MARLON
	object_event  7,  2, SPRITE_IRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MembersRoomIrisText, EVENT_MEMBERS_ROOM_IRIS
	object_event 11,  4, SPRITE_CAITLIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MembersRoomCaitlinText, EVENT_MEMBERS_ROOM_CAITLIN
	object_event  1,  4, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MembersRoomCynthiaText, EVENT_MEMBERS_ROOM_CYNTHIA
	object_event  8,  3, SPRITE_HUGH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, MembersRoomHughText, EVENT_MEMBERS_ROOM_HUGH
	mart_clerk_event  2,  2, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_DARK_BLUE, MARTTYPE_STANDARD, MART_MEMBERS_ROOM_1
	mart_clerk_event  3,  2, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_GREEN, MARTTYPE_STANDARD, MART_MEMBERS_ROOM_2
	
	object_const_def
	const MEMBERSROOM_CHEREN
	const MEMBERSROOM_ROOD
	const MEMBERSROOM_ALDER
	const MEMBERSROOM_ELESA
	const MEMBERSROOM_BIANCA
	const MEMBERSROOM_MARLON
	const MEMBERSROOM_IRIS
	const MEMBERSROOM_CAITLIN
	const MEMBERSROOM_CYNTHIA
	const MEMBERSROOM_HUGH
	
MembersRoomSetupScript:
; Bianca appears if we beat Nate/Rosa, but not Hilbert/Hilda
	checkevent EVENT_BEAT_HILBERT_HILDA
	iftruefwd .DisappearBianca
	checkevent EVENT_BEAT_NATE_ROSA
	iffalsefwd .DisappearBianca
	appear MEMBERSROOM_BIANCA
	sjumpfwd .HandleElesa
.DisappearBianca
	disappear MEMBERSROOM_BIANCA

.HandleElesa
; Elesa appears if we beat Caitlin/Cynthia, Rood, Hugh, Alder, & Iris,
; but haven't yet beaten Nate/Rosa
	checkevent EVENT_BEAT_NATE_ROSA
	iftruefwd .DisappearElesa
	checkevent EVENT_BEAT_CYNTHIA
	iffalsefwd .DisappearElesa
	checkevent EVENT_BEAT_ROOD ; Must beat Hugh before Rood
	iffalsefwd .DisappearElesa
	checkevent EVENT_BEAT_ALDER
	iffalsefwd .DisappearElesa
	checkevent EVENT_BEAT_IRIS
	iffalsefwd .DisappearElesa
	appear MEMBERSROOM_ELESA
	sjumpfwd .HandleRood
.DisappearElesa
	disappear MEMBERSROOM_ELESA
	
.HandleRood
; If we beat Hugh, but haven't triggered the Rood fight,
; then Rood appears regardless of day
	checkevent EVENT_ROOD_READY_FOR_BATTLE
	iftruefwd .DisappearRood
	checkevent EVENT_BEAT_HUGH
	iffalsefwd .DisappearRood
	appear MEMBERSROOM_ROOD
	sjumpfwd .CheckDay
.DisappearRood
	disappear MEMBERSROOM_ROOD
	
.CheckDay
	readvar VAR_WEEKDAY
	ifequalfwd SUNDAY, .Sunday
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
; Saturday
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	sjumpfwd .Done
	
.Sunday
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	checkevent EVENT_BEAT_CYNTHIA
	iftruefwd .AppearCaitlin
	disappear MEMBERSROOM_CAITLIN
	appear MEMBERSROOM_MARLON
	sjumpfwd .Done
.AppearCaitlin
	disappear MEMBERSROOM_MARLON
	appear MEMBERSROOM_CAITLIN
	sjumpfwd .Done
	
.Monday
	appear MEMBERSROOM_ROOD
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	sjumpfwd .Done
	
.Tuesday
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	checkevent EVENT_BEAT_HUGH
	iftruefwd .AppearHugh
	disappear MEMBERSROOM_HUGH
	sjumpfwd .Done
.AppearHugh
	appear MEMBERSROOM_HUGH
	sjumpfwd .Done
	
.Wednesday
	appear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	sjumpfwd .Done
	
.Thursday
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_CAITLIN
	checkevent EVENT_BEAT_CYNTHIA
	iftruefwd .AppearCynthia
	disappear MEMBERSROOM_CYNTHIA
	appear MEMBERSROOM_MARLON
	sjumpfwd .Done
.AppearCynthia
	disappear MEMBERSROOM_MARLON
	appear MEMBERSROOM_CYNTHIA
	sjumpfwd .Done
	
.Friday
	appear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	; fallthrough
.Done
	endcallback
	
MembersRoomCherenScript:
	showtext .CherenText
	readvar VAR_FACING
	ifequalfwd UP, .GoAround
	applymovement MEMBERSROOM_CHEREN, .RegularMovement
	sjumpfwd .moved
.GoAround
	applymovement MEMBERSROOM_CHEREN, .UpMovement
.moved
	playsound SFX_ENTER_DOOR
	disappear MEMBERSROOM_CHEREN
	setevent EVENT_ASPERTIA_CITY_BLOCKER ; Cheren back in Gym
	waitsfx
	end
	
.RegularMovement:
	step_down
	step_down
	step_left
	step_down
	step_end
	
.UpMovement:
	step_left
	step_down
	step_down
	step_down
	step_end
	
.CherenText:
	text "Oh, <PLAYER>!"
	
	para "I heard about what"
	line "happened at the"
	cont "#mon League."
	
	para "Congratulations on"
	line "becoming the"
	cont "Champion!"
	
	para "This area is an"
	line "exclusive spot"
	
	para "where Champions"
	line "and members of the"
	
	para "#mon League"
	line "meet with each"
	cont "other."
	
	para "Hang around, and"
	line "you may just meet"
	
	para "some incredible"
	line "#mon trainers!"
	
	para "By the way, I"
	line "heard a rumor that"
	
	para "a strange #mon"
	line "was spotted at a"
	
	para "cave inside of"
	line "Victory Road."
	
	para "Perhaps you may"
	line "want to check it"
	cont "out."
	
	para "Anyway, I'd better"
	line "get back to my"
	
	para "Gym. It was nice"
	line "seeing you,"
	cont "<PLAYER>."
	done

MembersRoomRoodScript:
	checkevent EVENT_BEAT_HUGH
	iftruefwd .BeatHugh
	checkevent EVENT_SPOKE_TO_ROOD_POSTGAME
	iftrue_jumptextfaceplayer .AlreadySpokenText
	setevent EVENT_SPOKE_TO_ROOD_POSTGAME
	jumpthistextfaceplayer
	text "Ah, <PLAYER>!"
	line "It's me, Rood, from"
	
	para "the shelter in"
	line "Driftveil City."
	
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
	
	para "You should come by"
	line "the shelter and"
	cont "visit sometime."
	done
	
.BeatHugh:
	checkevent EVENT_BEAT_ROOD
	iftrue_jumptextfaceplayer .AlreadyBeatenText
	setevent EVENT_ROOD_READY_FOR_BATTLE
	jumpthistextfaceplayer
	text "Ah, <PLAYER>, it's"
	line "good to see you."
	
	para "I was impressed"
	line "watching your"
	cont "battle with Hugh."
	
	para "I can tell you are"
	line "a truly compass-"
	cont "ionate #mon"
	cont "trainer."
	
	para "Although I dislike"
	line "battling, I under-"
	cont "stand how #mon"
	
	para "battles bring"
	line "people and #mon"
	cont "closer together."
	
	para "That is why I"
	line "would like to"
	
	para "have a #mon"
	line "battle with you."
	
	para "Please, meet me at"
	line "the shelter in"
	cont "Driftveil City."
	
	para "I am eager to see"
	line "your bond with"
	cont "your #mon."
	done
	
.AlreadySpokenText:
	text "Ah, hello <PLAYER>."
	line "How have you been?"
	
	para "You should come by"
	line "the shelter and"
	cont "visit sometime."
	done

.AlreadyBeatenText:
	text "Ah, <PLAYER>, it's"
	line "good to see you."
	
	para "Your skill in"
	line "raising #mon"
	cont "impresses me."
	
	para "If you don't mind,"
	line "I would like to"
	
	para "see the bond"
	line "between you and"
	cont "your #mon."
	
	para "Please, meet me at"
	line "the shelter in"
	cont "Driftveil City."
	
	para "I will be awaiting"
	line "your arrival."
	done

MembersRoomAlderScript:
	checkevent EVENT_MET_ALDER
	iftrue_jumptextfaceplayer .AlreadyMetText
	setevent EVENT_MET_ALDER
	jumpthistextfaceplayer
	text "Hm? I haven't seen"
	line "you around here"
	cont "before."
	
	para "The name's Alder."
	line "I was the Champion"
	
	para "of the #mon"
	line "League once,"
	
	para "though that was a"
	line "while ago now."
	
	para "I mostly keep to"
	line "my home in"
	
	para "Floccesy Town now,"
	line "and teach the"
	cont "local kids."
	
	para "You should come by"
	line "sometime! Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
.AlreadyMetText:
	text "Hi, <PLAYER>. Are"
	line "you keeping up"
	cont "your training?"
	
	para "You should come by"
	line "my dojo in"
	
	para "Floccesy Town"
	line "sometime. Maybe I"
	
	para "could even teach"
	line "you something!"
	done

MembersRoomElesaScript:
	setevent EVENT_NATE_ROSA_READY_FOR_BATTLE
	jumpthistextfaceplayer
	text "Oh, <PLAYER>, is"
	line "it? You're the"
	
	para "new champion,"
	line "right?"
	
	para "I'm Elesa, of the"
	line "Elite Four."
	
	para "Listen, I was"
	line "paying a visit to"
	
	para "my hometown in"
	line "Nimbasa City, when"
	
	para "I ran into a"
	line "trainer I remember"
	
	para "challenging back"
	line "when I was a Gym"
	cont "Leader there."
	
	para "They were young,"
	line "but they certainly"
	
	para "left an impression"
	line "on me!"
	
	para "You may be able to"
	line "find them hanging"
	
	para "around at the old"
	line "Park, where my Gym"
	cont "used to be."
	done

MembersRoomBiancaScript:
	setevent EVENT_HILBERT_HILDA_READY_FOR_BATTLE
	jumpthistextfaceplayer
	text "Oh, <PLAYER>, it's"
	line "good to see you!"
	
	para "You've certainly"
	line "gotten much"
	
	para "stronger as a"
	line "#mon trainer"
	
	para "than when we first"
	line "met!"
	
	para "speaking of which…"
	
	para "An old friend of"
	line "mine stopped by to"
	cont "visit today!"
	
	para "They're staying in"
	line "Nuvema Town for a"
	
	para "while, if you want"
	line "to go and say hi!"
	
	para "Tell them the"
	line "Prof. sent you!"
	cont "Hee hee!"
	done

MembersRoomMarlonText:
	text "Yo, <PLAYER>,"
	line "how's it hangin'?"
	
	para "A trainer like you"
	line "must always be"
	
	para "seekin' out a new"
	line "challenge, huh?"
	
	para "Well, I heard some"
	line "news that a"
	
	para "totally radical"
	line "trainer's been"
	
	para "stayin' in one of"
	line "the villas over in"
	cont "Undella Town!"
	
	para "Who knows? Maybe"
	line "you're in for a"
	cont "rockin' battle!"
	done
	
MembersRoomIrisText:
	text "Hi, <PLAYER>!"
	
	para "I really want to"
	line "see how strong you"
	
	para "are, now that you"
	line "beat the #mon"
	cont "League!"
	
	para "I'll be waiting"
	line "for you at my"
	
	para "house in Opelucid"
	line "City, if you want"
	cont "to battle!"
	done
	
MembersRoomCaitlinText:
	text "Hmf…"
	
	para "You've interrupted"
	line "my nap…"
	
	para "Oh, it's you. That"
	line "trainer from"
	cont "before."
	
	para "You were a satis-"
	line "fying challenge"
	
	para "the last time we"
	line "battled. If you'd"
	
	para "like another"
	line "match, you can"
	
	para "find me at my"
	line "villa in Undella"
	cont "Town."
	
	para "Just don't make it"
	line "a bore."
	done
	
MembersRoomCynthiaText:
	text "Oh, <PLAYER>, it's"
	line "you! I've been"
	
	para "traveling Unova,"
	line "looking for strong"
	
	para "#mon trainers"
	line "to challenge."
	
	para "How good to have"
	line "run into you here!"
	
	para "If you'd like to"
	line "challenge me"
	
	para "again, you can"
	line "come visit me at"
	
	para "Caitlin's villa in"
	line "Undella Town,"
	
	para "where I've been"
	line "staying."
	
	para "I look forward to"
	line "battling you!"
	done
	
MembersRoomHughText:
	text "Hey, <PLAYER>!"
	
	para "I've been thinking"
	line "on what I need to"
	
	para "become stronger,"
	line "and I'm ready to"
	
	para "test out what I've"
	line "come up with. You"
	
	para "should come meet"
	line "me at the shelter"
	
	para "in Driftveil City,"
	line "and I'll show you"
	cont "what I've learned."
	done
