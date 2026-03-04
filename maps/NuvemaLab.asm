NuvemaLab_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, NUVEMA_TOWN, 1
	warp_event  3, 11, NUVEMA_TOWN, 1

	def_coord_events
	coord_event  2,  9, 0, NuvemaLab_MeetBiancaScene1
	coord_event  3,  9, 0, NuvemaLab_MeetBiancaScene2

	def_bg_events
	bg_event  8,  1, BGEVENT_JUMPTEXT, NuvemaLabFridgeText
	bg_event 10,  1, BGEVENT_JUMPTEXT, NuvemaLabSinkText
	bg_event 11,  1, BGEVENT_JUMPTEXT, NuvemaLabStoveText
	bg_event  4,  4, BGEVENT_UP, NuvemaLabPCScript
	
	def_object_events
	object_event  2,  3, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NuvemaLabBiancaScript, EVENT_NUVEMA_LAB_BIANCA
	object_event  1,  4, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_NUVEMA_LAB_JUNIPER
	object_event 10,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NuvemaLabScientistMText, -1
	object_event  8, 10, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NuvemaLabScientistFText, -1
	
	object_const_def
	const NUVEMALAB_BIANCA
	const NUVEMALAB_JUNIPER
	
NuvemaLab_MeetBiancaScene1:
	applymovement PLAYER, NuvemaLabApproachMovement1
	sjumpfwd NuvemaLab_MeetBiancaScene
	
NuvemaLab_MeetBiancaScene2:
	applymovement PLAYER, NuvemaLabApproachMovement2
	; fallthrough
NuvemaLab_MeetBiancaScene:
	showtext .IntroText
	showemote EMOTE_SHOCK, NUVEMALAB_BIANCA, 15
	opentext
	writethistext
	text "Bianca: Oh, that"
	line "reminds me!"

	para "I have a gift for"
	line "you, <PLAYER>!"
	done
	promptbutton
	verbosegivetmhm HM_SURF
	writethistext
	text "Bianca: HM03 is"
	line "Surf."

	para "It's a powerful"
	line "water-type attack,"
	
	para "and a #mon that"
	line "knows Surf can be"
	
	para "used to cross the"
	line "water!"
	
	para "You'll need the"
	line "Gym Badge from"
	
	para "Striaton City to"
	line "use it though."
	
	para "Juniper: Well"
	line "Prof, I'd better"
	cont "be off."
	
	para "The Lab is located"
	line "on Route 17, just"
	cont "west of Route 1."

	para "Feel free to join"
	line "me if you'd like,"
	cont "<PLAYER>!"
	done
	waitbutton
	closetext
	applymovement NUVEMALAB_JUNIPER, .JuniperMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear NUVEMALAB_JUNIPER
	setscene 1
	end
	
.JuniperMovement:
	step_down
	step_down
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
.IntroText:
	text "Bianca: Oh, hi"
	line "<PLAYER>!"

	para "It's me, Prof."
	line "Bianca! It's so"
	cont "good to finally"
	cont "meet you!"
	
	para "Prof.Juniper had"
	line "just stopped by"
	cont "for a visit."
	
	para "Juniper: Good to"
	line "see you, <PLAYER>."
	
	para "It's fortunate"
	line "that you've come."

	para "The reason I came"
	line "out here is to"
	
	para "follow up on a tip"
	line "about Team Plasma."
	
	para "I've learned that"
	line "Team Plasma had a"
	
	para "secret lab on an"
	line "island nearby"
	cont "Nuvema Town."
	
	para "I thought it may"
	line "give us some"
	
	para "answers to what"
	line "they're planning."
	
	para "If you'd like to"
	line "help, it would be"
	
	para "much appreciated,"
	line "<PLAYER>."
	done
	
NuvemaLabApproachMovement1:
	step_up
	step_up
	step_up
	step_up
	step_end
	
NuvemaLabApproachMovement2:
	step_up
	step_left
	step_up
	step_up
	step_up
	step_end

NuvemaLabBiancaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MEMBERS_CARD
	iftruefwd .CheckPokedex
	checkevent EVENT_BIANCA_MEMBERS_CARD_CALL
	iftruefwd .GiveMembersCard
	checkevent EVENT_BEAT_P2_LAB
	iftruefwd .CheckPokedex
	writethistext
	text "Bianca: Are you"
	line "going to join"
	
	para "Prof.Juniper at"
	line "that secret lab?"

	para "You can reach"
	line "Route 17 if you"
	
	para "go north, then"
	line "cross the water"
	cont "to the west."
	done
	promptbutton
	
.CheckPokedex:
	writethistext
	text "How is your #-"
	line "dex coming?"

	para "Let's see…"
	done
	promptbutton
	special ProfOaksPCBoot
	jumpthisopenedtext
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done
	
.GiveMembersCard:
	writethistext
	text "Oh, <PLAYER>!"
	line "It's good to see"
	cont "you!"
	
	para "Congrats again on"
	line "becoming Champion!"
	
	para "I'd like you to"
	line "have this."
	done
	promptbutton
	verbosegivekeyitem MEMBERS_CARD
	setevent EVENT_GOT_MEMBERS_CARD
	jumpthisopenedtext
	text "That card will"
	line "give you access to"
	
	para "an exclusive room"
	line "at Shopping Mall"
	cont "Nine."
	
	para "Only Champions and"
	line "members of the"
	
	para "#mon League are"
	line "given them."
	
	para "You can buy some"
	line "pretty rare stuff"
	cont "there!"
	
	para "Have fun shopping!"
	done
	
NuvemaLabPCScript:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse_jumptext .MarlonEmailText
	jumpthistext
	text "There's an e-mail"
	line "message on the PC."

	para "…"
	done ;TODO: Add email text for some postgame secret
	
.MarlonEmailText:
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "Prof.Bianca, I"
	line "got news about"
	cont "that thing…"

	para "There was a break"
	line "in at my Gym. I"
	cont "think someone was"
	
	para "tryin' ta get"
	line "their hands on"
	cont "that thing."

	para "I'm gonna move"
	line "it to a more"
	cont "secure place."

	para "Only members of"
	line "the #mon league"
	cont "will be able to"
	cont "get to it."

	para "This thing is"
	line "turnin' out to be"
	cont "a load of trouble…"

	para "Thanks for the"
	line "#dex, by the"
	cont "way. <PLAYER>"
	cont "is a natural!"
	
	para "Good vibes,"
	line "-Marlon"
	done
	
NuvemaLabFridgeText:
	text "It's the Prof's"
	line "fridge!"
	
	para "Better not snoop"
	line "around in here…"
	done
	
NuvemaLabSinkText:
	text "There are dishes"
	line "and glass bottles"
	cont "in the sink."

	para "Someone should"
	line "really clean this"
	cont "up!"
	done
	
NuvemaLabStoveText:
	text "It looks like the"
	line "stove hasn't been"
	cont "used in a while…"
	done
	
NuvemaLabScientistMText:
	text "Whew, I've got a"
	line "lot to keep up"

	para "with. The Prof's"
	line "always busy with"
	cont "something!"
	done
	
NuvemaLabScientistFText:
	text "The Prof is young,"
	line "but she's done a"
	cont "great job so far!"
	done
