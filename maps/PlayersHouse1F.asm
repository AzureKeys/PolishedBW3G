PlayersHouse1F_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_const SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

	def_warp_events
	warp_event  6,  7, HUMILAU_CITY, 1
	warp_event  7,  7, HUMILAU_CITY, 1
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  8,  4, 0, MomTrigger1
	coord_event  9,  4, 0, MomTrigger2

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPTEXT, PlayersHouse1FFridgeText
	bg_event  0,  1, BGEVENT_JUMPTEXT, PlayersHouse1FSinkText
	bg_event  1,  1, BGEVENT_JUMPTEXT, PlayersHouse1FStoveText
	bg_event  4,  1, BGEVENT_UP, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  1,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << MORN), PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << DAY), PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE), PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << NITE), PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR

	object_const_def
	const PLAYERSHOUSE1F_MOM1

MomTrigger1:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYERSHOUSE1F_MOM1, RIGHT
	turnobject PLAYER, LEFT
	sjumpfwd MomEventScript

MomTrigger2:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYERSHOUSE1F_MOM1, RIGHT
	applyonemovement PLAYER, slow_step_left
	; fallthrough

MomEventScript:
	opentext
	writetext MomIntroText
	promptbutton
	givespecialitem POKEGEAR
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	writetext MomWhatDayText
	promptbutton
	special Special_SetDayOfWeek
.InitialSetDSTFlag:
	writetext MomDSTText
	yesorno
	iffalsefwd .NotDST
	special Special_InitialSetDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
	sjumpfwd .InitializedDSTFlag
.NotDST:
	special Special_InitialClearDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
.InitializedDSTFlag:
	writetext MomOutroText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	setscene $1
	special RestartMapMusic
	end

MomScript:
	faceplayer
	checkscene
	iffalsefwd .MomEvent
	opentext
	checkevent EVENT_GOT_A_POKEMON
	iftruefwd .GotAPokemon
	jumpthisopenedtext

	text "Marlon is wait-"
	line "ing for you."
	
	para "You remember where"
	line "he lives, right?"
	
	para "It's the house"
	line "closest to shore."

	para "Hurry up, baby!"
	done
	
.GotAPokemon
	checkevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	iftruefwd .GotPhoneNumber
	writetext MomPhoneText
	promptbutton
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
.GotPhoneNumber
	checkflag ENGINE_POKEDEX
	iftruefwd .GotPokedex
	writetext SoWhatWasMarlonsErrandText
	waitbutton
	closetext
	end
	
.GotPokedex:
	writetext MomHappinessIntroText
	yesorno
	iffalsefwd .refused
	
	special GetFirstPokemonHappiness
	writetext MomHappinessText2
	promptbutton
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	sjumpfwd .LooksMean

.LovesYouALot:
	writetext MomHappinessRatingText2_LovesYouALot
	sjumpfwd .Outro

.ReallyTrustsYou:
	writetext MomHappinessRatingText2_ReallyTrustsYou
	sjumpfwd .Outro

.SortOfHappy:
	writetext MomHappinessRatingText2_SortOfHappy
	sjumpfwd .Outro

.QuiteCute:
	writetext MomHappinessRatingText2_QuiteCute
	sjumpfwd .Outro

.NotUsedToYou:
	writetext MomHappinessRatingText2_NotUsedToYou
	sjumpfwd .Outro

.LooksMean:
	writetext MomHappinessRatingText2_LooksMean
	
.Outro
	promptbutton
	writetext MomHappinessOutroText
	waitbutton
	closetext
	end
	
.refused
	writetext MomRefusedHappinessText
	waitbutton
	closetext
	end

.MomEvent:
	playmusic MUSIC_MOM
	sjump MomEventScript
	
MomIntroText:
	text "Oh, <PLAYER>!"
	line "It's about time"
	cont "you got up!"

	para "Marlon, the Gym"
	line "Leader stopped by"
	cont "asking for you."
	
	para "Go stop by his"
	line "house and see what"
	cont "he needs."

	para "Oh! And before you"
	line "go out, make sure"
	
	para "you take your"
	line "X-Transciever with"
	cont "you."
	done

MomWhatDayText:
	text "You can use the"
	line "X-Transciever to"

	para "check the time,"
	line "and to make phone"
	cont "calls."
	
	para "Hold on… Remind"
	line "me, what day is"
	cont "it today?"
	done
	
MomDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

MomOutroText:
	text "Remember, you can"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time in the"
	cont "XTransciever menu."
	
	para "Now hurry on over"
	line "to Marlon's house"

	para "and see what he"
	line "needs from you!"
	done
	
MomPhoneText:
	text "Well, <PLAYER>,"
	line "did you talk to"
	cont "Marlon?"
	
	para "Oh, what's this?"
	line "A #mon?"
	cont "Oh, how cute!"
	
	para "You know, I spent"
	line "a lot of time"
	
	para "around #mon"
	line "when I was"
	cont "younger."
	
	para "I'm pretty good at"
	line "knowing how happy"
	
	para "a #mon is with"
	line "its trainer."
	
	para "Give me a call if"
	line "you want me to"
	
	para "tell you how"
	line "friendly your"
	
	para "#mon is toward"
	line "you!"
	done

SoWhatWasMarlonsErrandText:
	text "So, what did"
	line "Marlon want?"

	para "…"

	para "Oh, he wasn't at"
	line "home?"

	para "That's just like"
	line "him to wander off"
	
	para "somewhere, you'd"
	line "better go find"
	cont "him!"
	done

MomHappinessIntroText:
	text "Hi baby! Welcome"
	line "home!"

	para "I hope you've been"
	line "treating your"
	cont "#mon well."

	para "Would you like me"
	line "to check how"

	para "friendly your"
	line "#mon is toward"
	cont "you?"
	done
	
MomRefusedHappinessText:
	text "Oh, okay. Well,"
	line "you stay safe, and"
	cont "have fun."
	
	para "You got this,"
	line "baby!"
	done
	
MomHappinessText2:
	text "Oh, let me see"
	line "your @"
	text_ram wStringBuffer3
	text "…"
	done

MomHappinessRatingText2_LovesYouALot:
	text "It looks really"
	line "happy! It must"
	cont "love you a lot."
	done

MomHappinessRatingText2_ReallyTrustsYou:
	text "I get the feeling"
	line "that it really"
	cont "trusts you."
	done

MomHappinessRatingText2_SortOfHappy:
	text "It's friendly to-"
	line "ward you. It looks"
	cont "sort of happy."
	done

MomHappinessRatingText2_QuiteCute:
	text "It hasn't yet"
	line "formed a meaning-"
	cont "ful bond. Give it"
	cont "time."
	done

MomHappinessRatingText2_NotUsedToYou:
	text "You should treat"
	line "it better. It's"
	cont "not used to you."
	done

MomHappinessRatingText2_LooksMean:
	text "It doesn't seem to"
	line "like you at all."
	cont "It looks mean."
	done
	
MomHappinessOutroText:
	text "Now, be safe and"
	line "have fun on your"
	cont "travels, <PLAYER>."
	
	para "You got this,"
	line "baby!"
	done

NeighborScript:
	faceplayer
	opentext
	checktime 1 << MORN
	iftruefwd .MornScript
	checktime 1 << DAY
	iftruefwd .DayScript
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .NiteScript

.MornScript:
	writetext .MornIntroText
	promptbutton
	sjumpfwd .Main

.DayScript:
	writetext .DayIntroText
	promptbutton
	sjumpfwd .Main

.NiteScript:
	writetext .NiteIntroText
	promptbutton
	; fallthrough

.Main:
	writetext .NeighborText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.MornIntroText:
	text "Good morning,"
	line "<PLAYER>!"

	para "Your mom and I"
	line "have a date at"
	
	para "the Marine Tube"
	line "later today!"
	done

.DayIntroText:
	text "Hello, <PLAYER>!"

	para "Your mom and I"
	line "have a date at"
	
	para "the Marine Tube"
	line "later today!"
	done

.NiteIntroText:
	text "Good evening,"
	line "<PLAYER>!"

	para "Your mom and I"
	line "went on a date to"
	
	para "the Marine Tube"
	line "earlier today!"
	done

.NeighborText:
	text "Oh, and have you"
	line "heard?"

	para "My daughter is"
	line "adamant about"

	para "becoming Marlon's"
	line "assistant when"
	cont "she gets older."

	para "She really loves"
	line "#mon!"
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "Fresh Water and"
	line "tasty Lemonade!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "Volcano"
	line "Bake Meat!"
	done

PlayersHouse1FTVScript:
	jumpthistext

	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train…"

	para "I'd better get"
	line "rolling too!"
	done
