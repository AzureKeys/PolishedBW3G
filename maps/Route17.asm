Route17_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 39, 28, ROUTE_1_ROUTE_17_GATE, 1
	warp_event 39, 29, ROUTE_1_ROUTE_17_GATE, 2
	
	def_coord_events

	def_bg_events
	bg_event 37, 27, BGEVENT_JUMPTEXT, R17SignText
	
	def_object_events
	object_event 35,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 0, TrainerDoctorR17, -1
	object_event 27, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerFisher1R17, -1
	object_event 18,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerFisher2R17, -1
	object_event  7, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerSwimmerM1R17, -1
	object_event 14, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerSwimmerM2R17, -1
	object_event  7, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerSwimmerF1R17, -1
	object_event 17, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerSwimmerF2R17, -1
	itemball_event 10, 28, BIG_PEARL, 1, EVENT_ROUTE_17_BIG_PEARL
	itemball_event 29, 13, DIVE_BALL, 3, EVENT_ROUTE_17_DIVE_BALL
	itemball_event 18, 11, RARE_CANDY, 1, EVENT_ROUTE_17_RARE_CANDY
	itemball_event 20, 20, DAMP_ROCK, 1, EVENT_ROUTE_17_DAMP_ROCK
	itemball_event 24, 24, BLUE_SHARD, 1, EVENT_ROUTE_17_BLUE_SHARD
	
TrainerDoctorR17:
	trainer DOCTOR, DOCTOR_R17, EVENT_BEAT_DOCTOR_R17, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerFisher1R17:
	generictrainer FISHER, FISHER_R17_1, EVENT_BEAT_FISHER_R17_1, .SeenText, .BeatenText

	text "I want to see all"
	line "kinds of scenery!"

	para "You can only truly"
	line "have hope for"

	para "tomorrow when you"
	line "learn how big the"
	
	para "world is and how"
	line "small you are!"
	done
	
.SeenText:
	text "I'm showing off"
	line "the sea to my"
	cont "beloved #mon…"
	done

.BeatenText:
	text "Wow! How powerful!"
	done
	
TrainerFisher2R17:
	generictrainer FISHER_D, FISHER_R17_2, EVENT_BEAT_FISHER_R17_2, .SeenText, .BeatenText

	text "I feel rejuvenated"
	line "when I get the"

	para "chance to have a"
	line "battle with some-"

	para "one younger than"
	line "myself!"
	done
	
.SeenText:
	text "The sounds of"
	line "gently crashing"
	
	para "waves… The smell"
	line "of salt in the"
	
	para "air… And a battle"
	line "with a trainer!"
	done

.BeatenText:
	text "Simply excellent!"
	line "That's what being"
	cont "young is about!"
	done
	
TrainerSwimmerM1R17:
	generictrainer SWIMMERM, SWIMMERM_R17_1, EVENT_BEAT_SWIMMERM_R17_1, .SeenText, .BeatenText

	text "It's fine! I just"
	line "want to have fun"

	para "with #mon"
	line "battles!"
	done
	
.SeenText:
	text "I've been taking"
	line "on the #mon"
	
	para "Gyms all across"
	line "the world!"
	done

.BeatenText:
	text "I couldn't defeat"
	line "them all, but I"
	
	para "learned a lot, and"
	line "became stronger!"
	done
	
TrainerSwimmerM2R17:
	generictrainer SWIMMERM_D, SWIMMERM_R17_2, EVENT_BEAT_SWIMMERM_R17_2, .SeenText, .BeatenText

	text "My #mon and I"
	line "saw it with our"
	
	para "own eyes! I'm"
	line "talking about the"
	
	para "secret lab on the"
	line "island here!"
	done
	
.SeenText:
	text "We spend our lives"
	line "swimming! Of"

	para "course we battle"
	line "while swimming,"
	cont "too!"
	done

.BeatenText:
	text "I lost, but I'm"
	line "still cool. Not"
	
	para "many people can"
	line "say they've"
	
	para "battled while"
	line "swimming!"
	done
	
TrainerSwimmerF1R17:
	generictrainer SWIMMERF, SWIMMERF_R17_1, EVENT_BEAT_SWIMMERF_R17_1, .SeenText, .BeatenText

	text "Sometimes jelly-"
	line "fish #mon are"

	para "floating in the"
	line "water around here!"
	done
	
.SeenText:
	text "Time for an"
	line "aquatic battle in"
	cont "the sea!"
	done

.BeatenText:
	text "I'm just going to"
	line "float on by…"
	done
	
TrainerSwimmerF2R17:
	generictrainer SWIMMERF_D, SWIMMERF_R17_2, EVENT_BEAT_SWIMMERF_R17_2, .SeenText, .BeatenText

	text "It appears that my"
	line "vacation shall"
	cont "never end."
	
	para "I wonder if that's"
	line "okay…"
	done
	
.SeenText:
	text "Seeing a #mon"
	line "use its best moves"

	para "against another"
	line "#mon is really"
	cont "an adventure!"
	done

.BeatenText:
	text "The adventure is"
	line "over already."
	done
	
R17SignText:
	text "Route 17."
	
	para "Watch for strong"
	line "currents!"
	done
	