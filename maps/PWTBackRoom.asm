PWTBackRoom_MapScriptHeader:
	def_scene_scripts
	scene_script PWTBackRoomTrigger0
	scene_script PWTBackRoomTrigger1
	scene_script PWTBackRoomTrigger2
	scene_script PWTBackRoomTrigger3
	scene_script PWTBackRoomTrigger4

	def_callbacks

	def_warp_events
	warp_event  3, 11, PWT_HALLWAY, 4
	warp_event  4, 11, PWT_HALLWAY, 4
	warp_event  3,  1, PWT_BATTLE_ROOM, 1

	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  4,  2, SPRITE_CLAY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTBackRoomClayText, -1
	object_event  5,  5, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTBackRoomCherenText, EVENT_PWT_BACK_ROOM_CHEREN
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_BIANCA
	object_event  0,  4, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PWTBackRoomJuniperScript, EVENT_PWT_BACK_ROOM_JUNIPER
	object_event  0,  5, SPRITE_IRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTBackRoomIrisText, EVENT_PWT_BACK_ROOM_IRIS
	object_event  2,  4, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_MARLON
	object_event  7,  4, SPRITE_INFER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTBackRoomInferText, EVENT_PWT_BACK_ROOM_INFER
	object_event  7,  5, SPRITE_VIO, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTBackRoomVioText, EVENT_PWT_BACK_ROOM_VIO
	object_event  3,  9, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_ROOD
	
	object_const_def
	const PWTBACKROOM_CLAY
	const PWTBACKROOM_CHEREN
	const PWTBACKROOM_BIANCA
	const PWTBACKROOM_JUNIPER
	const PWTBACKROOM_IRIS
	const PWTBACKROOM_MARLON
	const PWTBACKROOM_INFER
	const PWTBACKROOM_VIO
	const PWTBACKROOM_ROOD
	
PWTBackRoomTrigger0:
	sdefer PWTBackRoomIntroScript
	end
PWTBackRoomTrigger1:
	sdefer PWTBackRoomFirstWinScript
	end
PWTBackRoomTrigger2:
	sdefer PWTBackRoomSecondWinScript
	end
PWTBackRoomTrigger3:
	sdefer PWTBackRoomThirdWinScript
PWTBackRoomTrigger4:
	end
	
PWTBackRoomIntroScript:
	applymovement PLAYER, .EnterMovement
	opentext
	writethistext
	text "Congratulations,"
	line "y'all have all"
	
	para "qualified for the"
	line "#mon World"
	cont "Tournament!"
	
	para "I'm Clay, I'll be"
	line "yer host for the"
	cont "event."
	
	para "Clay: Let's go"
	line "ahead 'n introduce"
	cont "our contestants."
	
	para "The Humilau City"
	line "Gym Leader,"
	cont "Marlon!"
	done
	promptbutton
	showemote EMOTE_HAPPY, PWTBACKROOM_MARLON, 15
	writethistext
	text "The Aspertia City"
	line "Gym Leader,"
	cont "Cheren!"
	done
	promptbutton
	applymovement PWTBACKROOM_CHEREN, .TurnLeftRightMovement
	writethistext
	text "The former #-"
	line "mon League Champ,"
	cont "Iris!"
	done
	promptbutton
	showemote EMOTE_HAPPY, PWTBACKROOM_IRIS, 15
	writethistext
	text "Unova's own #mon"
	line "Prof, Bianca Bel!"
	done
	promptbutton
	showemote EMOTE_HEART, PWTBACKROOM_BIANCA, 15
	writethistext
	text "And her former"
	line "mentor, Prof."
	cont "Juniper!"
	done
	promptbutton
	showemote EMOTE_HAPPY, PWTBACKROOM_JUNIPER, 15
	writethistext
	text "We've also got a"
	line "handful of new-"
	cont "comers this time."
	
	para "#mon Trainer"
	line "Infer!"
	done
	promptbutton
	applymovement PWTBACKROOM_INFER, .TurnLeftRightMovement
	writethistext
	text "#mon Trainer"
	line "<PLAYER>!"
	done
	promptbutton
	showemote EMOTE_SHOCK, PLAYER, 15
	writethistext
	text "And MysteryMan"
	line "Vio!"
	done
	promptbutton
	showemote EMOTE_SLEEP, PWTBACKROOM_VIO, 30
	writethistext
	text "Alright, let's get"
	line "on to it."
	
	para "I'll draw your"
	line "names randomly."
	
	para "Once I've drawn a"
	line "pair, head on in"
	cont "to the Battle Room"
	cont "in back."
	
	para "Winners move on"
	line "to the next round."
	
	para "Now then, let's"
	line "draw the first"
	cont "pair."
	
	para "We have…"
	
	para "Leader Marlon!"
	
	para "And you'll be"
	line "against…"
	
	para "<PK><MN> Trainer Infer!"
	done
	promptbutton
	turnobject PWTBACKROOM_MARLON, RIGHT
	turnobject PWTBACKROOM_INFER, LEFT
	writethistext
	text "Marlon: So, you're"
	line "my opponent?"
	
	para "Good luck out"
	line "there, trainer!"
	
	para "Infer: Don't"
	line "underestimate me!"
	done
	waitbutton
	closetext
	applymovement PWTBACKROOM_MARLON, .MarlonMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_MARLON
	waitsfx
	pause 15
	applymovement PWTBACKROOM_INFER, PWTBackRoom_InferLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_INFER
	waitsfx
	pause 15
	scall PWTBackRoom_BattleFX
	moveobject PWTBACKROOM_INFER, 3, 1
	appear PWTBACKROOM_INFER
	playsound SFX_ENTER_DOOR
	turnobject PWTBACKROOM_INFER, DOWN
	waitsfx
	pause 15
	showtext .InferWinText
	applymovement PWTBACKROOM_INFER, .InferMovement
	opentext
	writethistext
	text "Clay: Now then,"
	line "on to the next"
	cont "draw."
	
	para "We have…"
	
	para "<PK><MN> Prof.Bianca!"
	
	para "And…"
	
	para "<PK><MN> Trainer"
	line "<PLAYER>!"
	done
	promptbutton
	turnobject PWTBACKROOM_BIANCA, LEFT
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PWTBACKROOM_BIANCA, 15
	writethistext
	text "Bianca: Oh! It"
	line "looks like you're"
	
	para "My opponent,"
	line "<PLAYER>!"
	done
	waitbutton
	closetext
	applymovement PWTBACKROOM_BIANCA, .BiancaMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_BIANCA
	setscene 4
	moveobject PWTBACKROOM_INFER, 7, 4 ; put her back in initial location
	waitsfx
	end
	
.EnterMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_left
	turn_head_up
	step_end
	
.TurnLeftRightMovement:
	turn_head_left
	turn_head_right
	turn_head_up
	step_end
	
.MarlonMovement:
	step_up
	step_right
	step_up
	step_up
	step_end

.InferMovement:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_down
	turn_head_up
	step_end
	
.BiancaMovement:
	step_up
	step_left
	step_left
	step_up
	step_up
	step_end
	
.InferWinText:
	text "Clay: And the"
	line "winner is…"
	
	para "<PK><MN> Trainer Infer!"
	
	para "Infer: Hmph. There"
	line "was no way I could"
	cont "have lost."
	done
	
PWTBackRoomFirstWinScript:
	pause 15
	showtext .PlayerWinText
	applymovement PLAYER, PWTBackRoom_PlayerReturnMovement
	opentext
	writethistext
	text "Now, let's draw"
	line "us our next pair!"
	
	para "We have…"
	
	para "<PK><MN> Trainer Iris!"
	
	para "And…"
	
	para "<PK><MN> Prof.Juniper!"
	done
	promptbutton
	turnobject PWTBACKROOM_JUNIPER, DOWN
	writethistext
	text "Iris: Oh! Looks"
	line "like I'm battling"
	cont "you, Prof.Juniper."
	
	para "Juniper: I was"
	line "hoping to face the"
	
	para "former Champion at"
	line "some point, but I"
	
	para "wasn't expecting"
	line "it to be so early!"
	done
	waitbutton
	closetext
	applymovement PWTBACKROOM_JUNIPER, PWTBackRoom_JuniperLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_JUNIPER
	waitsfx
	pause 15
	closetext
	applymovement PWTBACKROOM_IRIS, .IrisMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_IRIS
	waitsfx
	pause 15
	scall PWTBackRoom_BattleFX
	moveobject PWTBACKROOM_JUNIPER, 3, 1
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_JUNIPER
	turnobject PWTBACKROOM_JUNIPER, DOWN
	waitsfx
	pause 15
	showtext .JuniperWinText
	applymovement PWTBACKROOM_JUNIPER, .JuniperMovement
	opentext
	writethistext
	text "Clay: And that"
	line "leaves only two"
	cont "more contestants"
	cont "to draw."
	
	para "The last matchup"
	line "will be…"
	
	para "Leader Cheren!"
	
	para "And…"
	
	para "MysteryMan Vio!"
	done
	promptbutton
	turnobject PWTBACKROOM_CHEREN, RIGHT
	turnobject PWTBACKROOM_VIO, LEFT
	writethistext
	text "Cheren: I'll give"
	line "it my all."
	
	para "Vio: … … … …"
	done
	waitbutton
	closetext
	applymovement PWTBACKROOM_CHEREN, .CherenMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_CHEREN
	waitsfx
	pause 15
	applymovement PWTBACKROOM_VIO, PWTBackRoom_VioLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_VIO
	waitsfx
	pause 15
	scall PWTBackRoom_BattleFX
	moveobject PWTBACKROOM_VIO, 3, 1
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	waitsfx
	pause 15
	showtext PWTBackRoom_VioWinText
	applymovement PWTBACKROOM_VIO, PWTBackRoom_VioReturnMovement
	opentext
	writethistext
	text "Clay: And with"
	line "that, the first"
	cont "round is done!"
	
	para "Congratulations to"
	line "y'all who're still"
	cont "in it!"
	
	para "Lot of newcomers"
	line "makin' a splash"
	cont "today."
	
	para "Now, our second"
	line "round matchups"
	cont "will begin with…"
	
	para "<PK><MN> Trainer Infer!"
	
	para "And…"
	
	para "<PK><MN> Trainer"
	line "<PLAYER>!"
	done
	promptbutton
	turnobject PWTBACKROOM_INFER, LEFT
	turnobject PLAYER, RIGHT
	writethistext
	text "Infer: I was"
	line "hoping to be drawn"
	cont "against you."
	
	para "You'd better not"
	line "disappoint me!"
	done
	waitbutton
	closetext
	applymovement PWTBACKROOM_INFER, PWTBackRoom_InferLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_INFER
	setevent EVENT_PWT_BATTLE_ROOM_BIANCA ; Remove Bianca from Battle Room
	clearevent EVENT_PWT_BATTLE_ROOM_INFER ; Infer is in Battle Room
	setmapscene PWT_BATTLE_ROOM, 0
	setscene 4
	moveobject PWTBACKROOM_JUNIPER, 0, 4 ; put her back in initial location
	moveobject PWTBACKROOM_VIO, 7, 5 ; put him back in initial location
	waitsfx
	end
	
.JuniperMovement:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_down
	turn_head_up
	step_end
	
.IrisMovement:
	step_up
	step_up
	step_right
	step_right
	step_right
	step_up
	step_up
	step_end
	
.CherenMovement:
	step_left
	step_up
	step_up
	step_left
	step_up
	step_up
	step_end

.PlayerWinText:
	text "Clay: And the"
	line "winner is…"
	
	para "<PK><MN> Trainer"
	line "<PLAYER>!"
	
	para "Congratulations,"
	line "you'll be moving"
	cont "on to the next"
	cont "round."
	done
	
.JuniperWinText:
	text "Clay: And the"
	line "winner is…"
	
	para "<PK><MN> Prof."
	line "Juniper!"
	
	para "Juniper: Wow, what"
	line "a battle! That"
	
	para "girl sure is"
	line "talented!"
	done
	
PWTBackRoomSecondWinScript:
	pause 15
	showtext .PlayerWinText
	applymovement PLAYER, PWTBackRoom_PlayerReturnMovement
	opentext
	writethistext
	text "Now then, that"
	line "just leaves our"
	cont "second pair."
	
	para "<PK><MN> Prof."
	line "Juniper!"
	
	para "And…"
	
	para "MysteryMan Vio!"
	
	para "Juniper: This guy"
	line "must be strong if"
	
	para "he was able to"
	line "beat Cheren."
	
	para "I'd better be"
	line "careful…"
	
	para "Vio: … … … …"
	done
	applymovement PWTBACKROOM_JUNIPER, PWTBackRoom_JuniperLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_JUNIPER
	waitsfx
	pause 15
	applymovement PWTBACKROOM_VIO, PWTBackRoom_VioLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_VIO
	waitsfx
	pause 15
	scall PWTBackRoom_BattleFX
	moveobject PWTBACKROOM_VIO, 3, 1
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	pause 15
	showtext PWTBackRoom_VioWinText
	applymovement PWTBACKROOM_VIO, PWTBackRoom_VioReturnMovement
	showtext .FinalRoundText
	applymovement PWTBACKROOM_VIO, PWTBackRoom_VioLeaveMovement
	playsound SFX_ENTER_DOOR
	disappear PWTBACKROOM_VIO
	setevent EVENT_PWT_BATTLE_ROOM_INFER ; Remove Infer from Battle Room
	clearevent EVENT_PWT_BATTLE_ROOM_VIO ; Vio is in Battle Room
	setmapscene PWT_BATTLE_ROOM, 0
	setscene 4
	waitsfx
	end
	
.PlayerWinText:
	text "Clay: And the"
	line "winner is…"
	
	para "<PK><MN> Trainer"
	line "<PLAYER>!"
	
	para "Congratulations,"
	line "you're the first"
	cont "to make the final!"
	done
	
.FinalRoundText:
	text "Clay: Well now,"
	line "looks like we're"
	
	para "down to our last"
	line "two contestants!"
	
	para "<PK><MN> Trainer"
	line "<PLAYER> and"
	cont "MysteryMan Vio…"
	
	para "Please enter the"
	line "arena!"
	
	para "Vio: … … … …"
	done
	
PWTBackRoomThirdWinScript:
	pause 15
	applymovement PLAYER, .PlayerMovement
	opentext
	writethistext
	text "Clay: Congrat-"
	line "ulations, <PLAYER>!"
	
	para "Pretty impressive"
	line "performance,"
	
	para "especially from a"
	line "newcomer!"
	
	para "On behalf of the"
	line "#mon World"
	
	para "Tournament, please"
	line "accept this prize."
	done
	applymovement PWTBACKROOM_CLAY, .ClayMovement
	verbosegiveitem MASTER_BALL
	writethistext
	text "Clay: And that'll"
	line "conclude the #-"
	done
	waitbutton
	closetext
	special Special_FadeOutMusic
	pause 15
	moveobject PWTBACKROOM_VIO, 3, 1
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	waitsfx
	pause 15
	turnobject PWTBACKROOM_CLAY, UP
	showtext .VioEnterText
	applymovement PWTBACKROOM_VIO, .SpinMovement
	variablesprite SPRITE_VIO, SPRITE_PLASMA_SAGE
	special RefreshSprites
	playmusic MUSIC_PLASMA_ENCOUNTER
	applymovement PWTBACKROOM_VIO, .VioMovement
	moveobject PWTBACKROOM_INFER, 3, 1
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_INFER
	turnobject PWTBACKROOM_INFER, DOWN
	waitsfx
	pause 15
	applymovement PWTBACKROOM_INFER, .ClayMovement
	showtext .ZinzolinIntroText
	playsound SFX_ENTER_DOOR
	pause 15
	moveobject PWTBACKROOM_CHEREN, 3, 9
	moveobject PWTBACKROOM_BIANCA, 4, 9
	appear PWTBACKROOM_CHEREN
	appear PWTBACKROOM_BIANCA
	applymovement PWTBACKROOM_CHEREN, .CherenBiancaMovement
	applymovement PWTBACKROOM_BIANCA, .CherenBiancaMovement
	showtext .ZinzolinConfrontationText
	turnobject PWTBACKROOM_VIO, LEFT
	turnobject PWTBACKROOM_INFER, RIGHT
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	disappear PWTBACKROOM_VIO
	disappear PWTBACKROOM_INFER
	waitsfx
	pause 15
	special Special_FadeInQuickly
	playsound SFX_ENTER_DOOR
	appear PWTBACKROOM_ROOD
	waitsfx
	pause 15
	applymovement PWTBACKROOM_ROOD, .RoodMovement
	turnobject PLAYER, LEFT
	turnobject PWTBACKROOM_CLAY, LEFT
	showtext .RoodText
	setevent EVENT_FINISHED_PWT
	setevent EVENT_DRIFTVEIL_CITY_BLOCKERS
	setscene 4
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warp DRIFTVEIL_SHELTER, 6, 4
	end
	
.PlayerMovement:
	step_down
	step_down
	step_down
	step_right
	turn_head_up
	step_end
	
.ClayMovement:
	step_down
	step_end
	
.SpinMovement:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
	
.VioMovement:
	step_down
	step_right
	turn_head_down
	step_end
	
.CherenBiancaMovement:
	step_up
	step_up
	step_up
	step_up
	step_end
	
.RoodMovement:
	step_up
	step_up
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_right
	step_end
	
.VioEnterText:
	text "Clay: Hey, what're"
	line "you--"
	
	para "Vio: Silence!"
	
	para "You do not realize"
	line "who you are"
	cont "speaking to!"
	
	para "Allow me to show"
	line "you!"
	done
	
.ZinzolinIntroText:
	text "I am Zinzolin!"
	line "The king of Team"
	cont "Plasma!"
	
	para "Clay: You! You"
	line "were supposed to"
	
	para "be locked up in"
	line "jail!"
	
	para "Zinzolin: I have"
	line "been plotting my"
	
	para "escape while you"
	line "all laze away at"
	cont "your tournaments!"
	
	para "The Shadows of"
	line "Team Plasma recog-"
	cont "nized my greatness"
	
	para "and crowned me"
	line "their new king!"
	
	para "This whole event"
	line "was just a ruse"
	cont "to hide my escape!"
	done
	
.ZinzolinConfrontationText:
	text "Bianca: <PLAYER>,"
	line "are you okay?"
	
	para "Cheren: I knew"
	line "something fishy"
	cont "was going on!"
	
	para "Zinzolin: Bwa-ha-"
	line "ha! You're too"
	
	para "late! Our plans"
	line "have already been"
	cont "put into motion!"
	
	para "Let the world know"
	line "that Team Plasma"
	cont "has returned, and"
	
	para "soon, Unova will"
	line "be ours!"
	
	para "Come now, Infer."
	line "We're off!"
	
	para "???: Wait! Stop!"
	done
	
.RoodText:
	text "???: I'm too late,"
	line "she's gone with"
	cont "them…"
	
	para "Clay: Now hold on"
	line "just a second."
	
	para "???: I'm sorry."
	line "Please trainers,"
	
	para "come with me and"
	line "I can explain…"
	done
	
PWTBackRoom_BattleFX:
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_TACKLE
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	waitsfx
	playsound SFX_TACKLE
	waitsfx
	pause 30
	special Special_FadeInQuickly
	playmapmusic
	pause 15
	end
	
PWTBackRoom_InferLeaveMovement:
	step_up
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
PWTBackRoom_JuniperLeaveMovement:
	step_up
	step_right
	step_right
	step_right
	step_up
	step_up
	step_end
	
PWTBackRoom_VioLeaveMovement:
	step_left
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
	
PWTBackRoom_VioReturnMovement:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_down
	step_down
	step_right
	turn_head_up
	step_end
	
PWTBackRoom_PlayerReturnMovement:
	step_down
	step_down
	step_left
	step_down
	step_down
	turn_head_up
	step_end
	
PWTBackRoom_VioWinText:
	text "Clay: And the"
	line "winner is…"
	
	para "MysteryMan Vio!"
	
	para "Vio: … … … …"
	done
	
PWTBackRoomJuniperScript:
	checkevent EVENT_PWT_BEAT_BIANCA
	iftrue_jumptextfaceplayer .SecondRoundText
	jumpthistextfaceplayer
	text "Juniper: Don't let"
	line "her personality"
	
	para "fool you, the"
	line "Prof. is a"
	
	para "talented #mon"
	line "trainer too."
	done
	
.SecondRoundText:
	text "Juniper: I'm a bit"
	line "nervous. That guy"
	
	para "took out Cheren"
	line "without flinching."
	
	para "Something about"
	line "him strikes me as"
	cont "suspicious…"
	done

PWTBackRoomClayText:
	text "Clay: Alrighty"
	line "now, head on back"
	
	para "fer yer match"
	line "when yer ready."
	done
	
PWTBackRoomIrisText:
	text "Iris: I gave up"
	line "being Champion"
	
	para "to go back to live"
	line "with my Grandpa,"
	
	para "but I still like"
	line "to come battle"
	cont "every now and"
	cont "then!"
	done
	
PWTBackRoomCherenText:
	text "Cheren: So, you've"
	line "drawn Bianca in"
	cont "the first round…"
	
	para "Good luck, you'll"
	line "need it."
	done
	
PWTBackRoomInferText:
	text "Infer: You'd"
	line "better win your"
	
	para "match, and when"
	line "you do, I'll be"
	
	para "waiting for you"
	line "in the next round!"
	done
	
PWTBackRoomVioText:
	text "VIO: … … … …"
	done
