OpelucidGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10, 31, OPELUCID_CITY, 10
	warp_event 11, 31, OPELUCID_CITY, 10
	
	def_coord_events

	def_bg_events
	bg_event  9, 31, BGEVENT_READ, OpelucidGymStatue
	bg_event 12, 31, BGEVENT_READ, OpelucidGymStatue
	
	def_object_events
	object_event 24,  2, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, OpelucidGymDraydenScript, -1
	object_event  9, 26, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OpelucidGymGuyScript, -1
	object_event  3, 26, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranM1OpelucidGym, -1
	object_event 24, 19, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranM2OpelucidGym, -1
	object_event 11,  5, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranM3OpelucidGym, -1
	object_event 14, 10, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranF1OpelucidGym, -1
	object_event 11,  0, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerVeteranF2OpelucidGym, -1
	object_event 25,  8, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerVeteranF3OpelucidGym, -1
	
OpelucidGymDraydenScript:
	checkevent EVENT_BEAT_DRAYDEN
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer DRAYDEN, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DRAYDEN
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_1
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_2
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_3
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_1
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_2
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_3
	opentext
	givebadge LEGENDBADGE, 0
	writethistext
	text "This is the"
	line "Opelucid City"
	cont "#mon Gym Badge."

	para "With the Legend"
	line "Badge, all #-"

	para "mon will follow"
	line "your commands."
	
	para "I also want you to"
	line "have this. It's a"
	
	para "TM I'm rather"
	line "fond of."
	done
	promptbutton
	verbosegivetmhm TM_DRAGON_CLAW
	setevent EVENT_GOT_TM02_DRAGON_CLAW
	writethistext
	text "This teaches the"
	line "move Dragon Claw."

	para "It is a wild and"
	line "powerful attack,"
	
	para "befitting of the"
	line "dragon-type."
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "It is not the"
	line "passage of time"

	para "that causes #-"
	line "mon and people to"

	para "age. When the"
	line "energy that flows"
	
	para "in their heart"
	line "dries up, that's"
	cont "when they get old."
	
	para "The heart's energy"
	line "is powered by"
	
	para "truth, ideals, or"
	line "maybe dreams…"
	
	para "No doubt it"
	line "changes depending"
	
	para "on what you most"
	line "hope for in life."
	done
	
.SeenText:
	text "Welcome. Thank you"
	line "for coming. I am"
	
	para "the Opelucid Gym"
	line "Leader, Drayden."

	para "As mayor, I've"
	line "given everything"

	para "to developing the"
	line "city. As a"
	
	para "trainer, I've been"
	line "pursuing greater"
	cont "strength."
	
	para "What I'm searching"
	line "for now is a young"
	
	para "trainer who can"
	line "show me a bright"
	
	para "future. Perhaps"
	line "you can show me"
	
	para "that future, the"
	line "way Iris has?"
	done
	
.BeatenText:
	text "This bitterness"
	line "that floods me"
	cont "after a defeat…"
	
	para "The heart that"
	line "does not succumb"
	
	para "to such a feeling"
	line "is filled with"
	cont "energy and life!"
	done

OpelucidGymGuyScript:
	checkevent EVENT_BEAT_DRAYDEN
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "Yo, challenger!"

	para "This Gym's Leader"
	line "is Drayden, the"
	cont "master of dragons."

	para "All of his pupils"
	line "train with dragon-"
	cont "type #mon too."

	para "They're wild and"
	line "unpredictable!"

	para "Your best bet"
	line "would be to bring"
	cont "a fairy-type #-"
	cont "mon."

	para "Dragons also don't"
	line "like the cold, so"
	
	para "try using ice-type"
	line "moves too!"
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
	
OpelucidGymStatue:
	gettrainername DRAYDEN, 1, STRING_BUFFER_4
	checkflag ENGINE_LEGENDBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2
	
TrainerVeteranM1OpelucidGym:
	generictrainer VETERANM, VETERANM_OPELUCID_GYM_1, EVENT_BEAT_VETERANM_OPELUCID_GYM_1, .SeenText, .BeatenText

	text "Trainers far"
	line "stronger than I"
	cont "wait for you!"
	done
	
.SeenText:
	text "Always aim for the"
	line "top, like a dragon"
	cont "taking flight!"
	done

.BeatenText:
	text "The energy I feel"
	line "from you… It's just"
	cont "like a dragon!"
	done
	
TrainerVeteranM2OpelucidGym:
	generictrainer VETERANM, VETERANM_OPELUCID_GYM_2, EVENT_BEAT_VETERANM_OPELUCID_GYM_2, .SeenText, .BeatenText

	text "The trainers that"
	line "wait beyond all"
	
	para "have different"
	line "fighting styles."
	done
	
.SeenText:
	text "A strong defense"
	line "is everything!"
	done

.BeatenText:
	text "Your defense is"
	line "beyond comparison!"
	done
	
TrainerVeteranM3OpelucidGym:
	generictrainer VETERANM, VETERANM_OPELUCID_GYM_3, EVENT_BEAT_VETERANM_OPELUCID_GYM_3, .SeenText, .BeatenText

	text "You are certainly"
	line "strong enough to"
	
	para "challenge mayor"
	line "Drayden!"
	done
	
.SeenText:
	text "Use your #mon"
	line "in combination to"
	
	para "raise their"
	line "destructive power!"
	done

.BeatenText:
	text "The #mon you"
	line "picked gave me a"
	cont "run for my money!"
	done
	
TrainerVeteranF1OpelucidGym:
	generictrainer VETERANF, VETERANF_OPELUCID_GYM_1, EVENT_BEAT_VETERANF_OPELUCID_GYM_1, .SeenText, .BeatenText

	text "You must choose"
	line "the style of"
	
	para "battle that suits"
	line "you best!"
	done
	
.SeenText:
	text "I believe the best"
	line "defense is a"
	cont "strong offense!"
	done

.BeatenText:
	text "Such energy… You"
	line "are truly without"
	cont "equal!"
	done
	
TrainerVeteranF2OpelucidGym:
	generictrainer VETERANF, VETERANF_OPELUCID_GYM_2, EVENT_BEAT_VETERANF_OPELUCID_GYM_2, .SeenText, .BeatenText

	text "A battle between"
	line "you and mayor"
	
	para "Drayden will be"
	line "stirring! Now go!"
	done
	
.SeenText:
	text "In battles, how"
	line "your #mon"
	
	para "follow each other"
	line "is key."
	done

.BeatenText:
	text "Your #mon all"
	line "supported each"
	cont "other well."
	done
	
TrainerVeteranF3OpelucidGym:
	generictrainer VETERANF, VETERANF_OPELUCID_GYM_3, EVENT_BEAT_VETERANF_OPELUCID_GYM_3, .SeenText, .BeatenText

	text "You are the wind."
	
	para "A supple and"
	line "comforting wind"
	
	para "blowing through to"
	line "the #mon"
	cont "League!"
	done
	
.SeenText:
	text "I just felt a"
	line "great wind… Are"
	
	para "you the one who"
	line "kicked it up?"
	done

.BeatenText:
	text "This defeat will"
	line "also be blown far"
	cont "away…"
	done
