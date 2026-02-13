VirbankGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  9, VIRBANK_CITY, 8
	warp_event  1,  9, VIRBANK_CITY, 8
	warp_event  9,  0, VIRBANK_GYM, 4
	warp_event  6, 33, VIRBANK_GYM, 3
	warp_event  7, 33, VIRBANK_GYM, 3
	warp_event  7, 17, VIRBANK_GYM, 4

	def_coord_events

	def_bg_events
	bg_event  6,  2, BGEVENT_READ, VirbankGymStatue
	bg_event 11,  2, BGEVENT_READ, VirbankGymStatue
	bg_event  8,  0, BGEVENT_JUMPTEXT, VirbankGymSignText

	def_object_events
	object_event 11, 17, SPRITE_ROXIE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankGymRoxieScript, -1
	object_event  7,  2, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerMusician1VirbankGym, -1
	object_event 13, 20, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerMusician2VirbankGym, -1
	object_event  0, 20, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLACK, OBJECTTYPE_GENERICTRAINER, 1, TrainerGuitarist1VirbankGym, -1
	object_event  6, 16, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLACK, OBJECTTYPE_GENERICTRAINER, 2, TrainerGuitarist2VirbankGym, -1
	
VirbankGymRoxieScript:
	checkevent EVENT_BEAT_ROXIE
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer ROXIE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROXIE
	opentext
	givebadge TOXICBADGE, 0
	setevent EVENT_BEAT_MUSICIAN_VIRBANK_GYM_1
	setevent EVENT_BEAT_MUSICIAN_VIRBANK_GYM_2
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_1
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_2
	writethistext
	text "That's the Toxic"
	line "Badge! Now #-"
	cont "mon up to level 50"

	para "will realize how"
	line "good you are and"

	para "won't ignore your"
	line "commands! You can"

	para "Also use Fly out-"
	line "side of battle!"

	para "Also here! Use"
	line "this TM!"
	done
	promptbutton
	verbosegivetmhm TM_VENOSHOCK
	setevent EVENT_GOT_TM09_VENOSHOCK
	writethistext
	text "TM09 is Venoshock!"

	para "If your target's"
	line "aready poisoned,"

	para "it does double"
	line "damage! Heh, it"

	para "Almost packs too"
	line "much of a punch!"
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "Your #mon"
	line "WANTED to win!"

	para "Keep on going like"
	line "this, and do all"
	cont "sorts of stuff!"
	done
	
.SeenText:
	text "Get ready! I'm"
	line "gonna knock some"
	cont "sense outta ya!"
	done
	
.BeatenText:
	text "Wait! I was right"
	line "in the middle of"
	cont "the chorus!"
	done
	
VirbankGymStatue:
	gettrainername ROXIE, 1, STRING_BUFFER_4
	checkflag ENGINE_TOXICBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

TrainerMusician1VirbankGym:
	generictrainer MUSICIAN, MUSICIAN_VIRBANK_GYM_1, EVENT_BEAT_MUSICIAN_VIRBANK_GYM_1, .SeenText, .BeatenText

	text "Virbank Gym is"
	line "known for our"

	para "skills in music"
	line "and #mon!"
	done
	
.SeenText:
	text "Hold it there,"
	line "kid. This is an"
	cont "exclusive club."
	done
	
.BeatenText:
	text "Ah! Come right in!"
	done

TrainerMusician2VirbankGym:
	generictrainer MUSICIAN, MUSICIAN_VIRBANK_GYM_2, EVENT_BEAT_MUSICIAN_VIRBANK_GYM_2, .SeenText, .BeatenText

	text "Because I'm with"
	line "my #mon, I can"
	
	para "always play my"
	line "guitar. And it's"
	
	para "because I play my"
	line "guitar that my"
	
	para "#mon become"
	line "strong!"
	done
	
.SeenText:
	text "I can always be"
	line "honest with myself"

	para "when I'm playing"
	line "the guitar or"

	para "having a #mon"
	line "battle!"
	done
	
.BeatenText:
	text "Argh! The happy"
	line "times always end"
	cont "so quickly!"
	done

TrainerGuitarist1VirbankGym:
	generictrainer GUITARIST, GUITARIST_VIRBANK_GYM_1, EVENT_BEAT_GUITARIST_VIRBANK_GYM_1, .SeenText, .BeatenText

	text "Don't get too com-"
	line "fortable about"

	para "beating me…"
	line "Roxie is tough."
	done
	
.SeenText:
	text "I'm going to take"
	line "you down! Prepare"
	cont "to be stung!"
	done
	
.BeatenText:
	text "Gwaaah!"
	line "I was overpowered…"
	done

TrainerGuitarist2VirbankGym:
	generictrainer GUITARIST, GUITARIST_VIRBANK_GYM_2, EVENT_BEAT_GUITARIST_VIRBANK_GYM_2, .SeenText, .BeatenText

	text "Hahaha! You're"
	line "great! Knock 'em"
	cont "all out for me!"
	done
	
.SeenText:
	text "Get in my way, and"
	line "I'll knock you"

	para "out! Stay out of"
	line "my way… and I'll"
	cont "knock you out too!"
	done
	
.BeatenText:
	text "I'm the one who"
	line "got knocked out!"
	done
	
VirbankGymSignText:
	text "It's a set list."
	
	para "Names of songs are"
	line "scribbled and"
	
	para "crossed out all"
	line "over it."
	done
	