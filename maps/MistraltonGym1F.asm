MistraltonGym1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MistraltonGym1FSetTiles
	callback MAPCALLBACK_STONETABLE, MistraltonGym1FFansCallback

	def_warp_events
	warp_event  6, 19, MISTRALTON_CITY, 6
	warp_event  7, 19, MISTRALTON_CITY, 7
	warp_event  6, 15, MISTRALTON_GYM_2F, 12 ; fan
	warp_event  4, 11, MISTRALTON_GYM_2F, 13 ; fan hole
	warp_event 12,  7, MISTRALTON_GYM_2F, 14 ; fan hole
	warp_event  3,  3, MISTRALTON_GYM_2F, 15 ; fan hole
	warp_event  6,  2, MISTRALTON_GYM_2F, 16 ; fan hole
	warp_event  1, 11, MISTRALTON_GYM_1F, 8 ; drop from 2F
	warp_event 11, 14, MISTRALTON_GYM_1F, 9 ; drop from 2F
	warp_event  9, 11, MISTRALTON_GYM_1F, 10 ; drop from 2F
	warp_event 13,  3, MISTRALTON_GYM_1F, 11 ; drop from 2F
	warp_event  3,  7, MISTRALTON_GYM_1F, 12 ; drop from 2F
	warp_event  5,  7, MISTRALTON_GYM_1F, 13 ; drop from 2F
	
	def_coord_events

	def_bg_events
	bg_event  5, 17, BGEVENT_READ, MistraltonGymStatue
	bg_event  8, 17, BGEVENT_READ, MistraltonGymStatue
	
	def_object_events
	strengthboulder_event  1, 13, SPRITE_FAN, EVENT_MISTRALTON_GYM_1F_FAN_1
	strengthboulder_event 12, 14, SPRITE_FAN, EVENT_MISTRALTON_GYM_1F_FAN_2
	strengthboulder_event  9,  1, SPRITE_FAN, EVENT_MISTRALTON_GYM_1F_FAN_3
	strengthboulder_event  2,  7, SPRITE_FAN, EVENT_MISTRALTON_GYM_1F_FAN_4
	object_event  6,  5, SPRITE_SKYLA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, MistraltonGymSkylaScript, -1
	object_event  7, 17, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonGymGuyScript, -1
	object_event  3, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPilot1MistraltonGym1F, -1
	object_event 12, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerPilot2MistraltonGym1F, -1
	object_event  4,  0, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPilot3MistraltonGym1F, -1
	
	object_const_def
	const MISTRALTONGYM1F_FAN_1
	const MISTRALTONGYM1F_FAN_2
	const MISTRALTONGYM1F_FAN_3
	const MISTRALTONGYM1F_FAN_4
	
MistraltonGym1FSetTiles:
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_1
	iffalsefwd .CheckFan2
	changeblock  4, 10, $47
.CheckFan2
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_2_IN_PIT
	iffalsefwd .CheckFan3
	changeblock 12,  6, $47
.CheckFan3
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_3
	iffalsefwd .CheckFan4
	changeblock  2,  2, $79
.CheckFan4
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_4_IN_PIT
	iffalsefwd .done
	changeblock  6,  2, $7a
.done
	endcallback
	
MistraltonGym1FFansCallback:
	usestonetable .FansTable
	endcallback
	
.FansTable:
	stonetable 4, MISTRALTONGYM1F_FAN_1, .Disappear1
	stonetable 5, MISTRALTONGYM1F_FAN_2, .Disappear2
	stonetable 6, MISTRALTONGYM1F_FAN_3, .Disappear3
	stonetable 7, MISTRALTONGYM1F_FAN_4, .Disappear4
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear MISTRALTONGYM1F_FAN_1
	changeblock  4, 10, $47
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear MISTRALTONGYM1F_FAN_2
	setevent EVENT_MISTRALTON_GYM_1F_FAN_2_IN_PIT
	changeblock 12,  6, $47
	sjumpfwd .DoneBoulder
	
.Disappear3:
	scall .FX
	disappear MISTRALTONGYM1F_FAN_3
	changeblock  2,  2, $79
	sjumpfwd .DoneBoulder
	
.Disappear4:
	scall .FX
	disappear MISTRALTONGYM1F_FAN_4
	setevent EVENT_MISTRALTON_GYM_1F_FAN_4_IN_PIT
	changeblock  6,  2, $7a
	; fallthrough
.DoneBoulder:
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The fan fit into"
	line "the floor."
	done
	end
	
MistraltonGymSkylaScript:
	checkevent EVENT_BEAT_SKYLA
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer SKYLA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SKYLA
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_1
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_2
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_3
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_4
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_5
	specialphonecall SPECIALCALL_CHEREN_MISTRALTON
	opentext
	givebadge JETBADGE, 0
	writethistext
	text "This is an"
	line "official #mon"
	cont "League Gym Badge."

	para "The Jet Badge will"
	line "let you control"
	
	para "any #mon up to"
	line "level 80. It will"
	cont "also allow you to"
	
	para "use the move"
	line "Waterfall outside"
	cont "of battle."
	
	para "Also, as thanks"
	line "for a good battle,"

	para "I want you to have"
	line "this TM!"
	done
	promptbutton
	verbosegivetmhm TM_ACROBATICS
	setevent EVENT_GOT_TM62_ACROBATICS
	writethistext
	text "It's Acrobatics!"

	para "If the user isn't"
	line "holding an item,"
	cont "the power doubles!"
	
	para "It's a pretty"
	line "technical move."
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "You're an amazing"
	line "trainer! My #-"
	cont "mon and I are"

	para "happy, because for"
	line "the first time in"

	para "a while, we could"
	line "fight with our"
	cont "full strength!"
	
	para "Thank you,"
	line "<PLAYER>!"
	done
	
.SeenText:
	text "Hee-hee! I've been"
	line "waiting for you!"
	
	para "Did you enjoy"
	line "flying with the"
	cont "help of the fans?"

	para "They're my pride"
	line "and joy!"

	para "Now let's try a"
	line "battle!"
	done
	
.BeatenText:
	text "I'm walking on"
	line "air!"
	done

MistraltonGymGuyScript:
	checkevent EVENT_BEAT_SKYLA
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "Yo, challenger!"

	para "Skyla is the"
	line "leader of this"
	cont "Gym. If you want"

	para "to reach her,"
	line "you'll need to use"
	cont "the fans to reach"
	cont "the upper floor."

	para "They're heavy, so"
	line "bring a strong"
	cont "#mon!"

	para "Let's see…"
	line "Skyla's #mon"

	para "are all flying"
	line "type. Use Electric"
	
	para "moves to knock"
	line "them out of the"
	cont "sky!"
	
	para "Rocks and Ice"
	line "will work too."
	done
	
.WinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#mon is bright!"
	done
	
MistraltonGymStatue:
	gettrainername SKYLA, 1, STRING_BUFFER_4
	checkflag ENGINE_JETBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2
	
TrainerPilot1MistraltonGym1F:
	generictrainer PILOT, PILOT_MISTRALTON_GYM_1, EVENT_BEAT_PILOT_MISTRALTON_GYM_1, .SeenText, .BeatenText

	text "I'll give you some"
	line "advice. There are"
	
	para "fans hidden in the"
	line "ceiling that can"
	cont "be pushed down."
	done
	
.SeenText:
	text "The strong winds"
	line "represent the"
	
	para "strength of us and"
	line "our Gym Leader!"
	done

.BeatenText:
	text "I felt some"
	line "intense pressure"
	
	para "coming from you"
	line "and your #mon!"
	done
	
TrainerPilot2MistraltonGym1F:
	generictrainer PILOT, PILOT_MISTRALTON_GYM_2, EVENT_BEAT_PILOT_MISTRALTON_GYM_2, .SeenText, .BeatenText

	text "High performance"
	line "is important for"
	
	para "planes, but maybe"
	line "feelings are what"
	
	para "is important for"
	line "#mon."
	done
	
.SeenText:
	text "Right side clear!"
	line "Left side clear!"
	
	para "Battle flight is"
	line "ready for takeout!"
	
	para "Err… I mean"
	line "takeoff!"
	done

.BeatenText:
	text "Unfortunately… we"
	line "are forced to"
	cont "land."
	done
	
TrainerPilot3MistraltonGym1F:
	generictrainer PILOT, PILOT_MISTRALTON_GYM_3, EVENT_BEAT_PILOT_MISTRALTON_GYM_3, .SeenText, .BeatenText

	text "Landing is the"
	line "hardest part about"
	
	para "piloting a plane."
	line "You'd better stay"
	
	para "alert until the"
	line "very end!"
	done
	
.SeenText:
	text "Sometimes you need"
	line "to be bold, while"
	
	para "other times you"
	line "need to be"
	
	para "careful. React"
	line "accordingly!"
	done

.BeatenText:
	text "I couldn't block"
	line "your path!"
	done
