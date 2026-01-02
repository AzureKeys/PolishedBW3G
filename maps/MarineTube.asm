MarineTube_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 26, MARINE_TUBE_ENTRANCE, 3
	warp_event  5, 26, MARINE_TUBE_ENTRANCE, 4
	warp_event  4,  2, MARINE_TUBE_ENTRANCE, 7
	warp_event  5,  2, MARINE_TUBE_ENTRANCE, 8

	def_coord_events

	def_bg_events
	bg_event  3,  8, BGEVENT_ITEM + FULL_RESTORE, EVENT_MARINE_TUBE_FULL_RESTORE
	bg_event  6, 16, BGEVENT_ITEM + ELIXIR, EVENT_MARINE_TUBE_ELIXIR

	def_object_events
	object_event  4, 17, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 0, TrainerNurseryAideMarineTube, -1
	object_event  6, 19, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 0, TrainerTwinsMarineTube, -1
	object_event  6, 20, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_GENERICTRAINER, 0, TrainerTwinsMarineTube, -1
	object_event  3, 22, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 0, TrainerPreschoolerMMarineTube, -1
	object_event  6, 13, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 0, TrainerPreschoolerFMarineTube, -1
	object_event  3, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, MarineTubeCooltrainerFText, -1
	object_event  3, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MarineTubeCooltrainerMText, -1
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, MarineTubeLassText, -1
	object_event  5,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MarineTubePokefanMText, -1
	
TrainerNurseryAideMarineTube:
	generictrainer NURSERY_AIDE, NURSERY_AIDE_MARINE_TUBE, EVENT_BEAT_NURSERY_AIDE_MARINE_TUBE, .SeenText, .BeatenText

	text "A precocious child"
	line "or a childish"
	
	para "adult… Both can be"
	line "hard to deal with,"
	
	para "but both are also"
	line "cute in their way!"
	done
	
.SeenText:
	text "You… are a rather"
	line "adult looking kid…"
	
	para "A kiddish adult…"
	line "Oh, jeez! I'll"
	
	para "just find out when"
	line "we battle!"
	done
	
.BeatenText:
	text "You are an alto-"
	line "gether mysterious"
	cont "trainer!"
	done
	
TrainerTwinsMarineTube:
	generictrainer TWINS, TWINS_MARINE_TUBE, EVENT_BEAT_TWINS_MARINE_TUBE, .SeenText, .BeatenText

	text "Being able to play"
	line "together is a"
	cont "great thing!"
	done
	
.SeenText:
	text "It's so fun to"
	line "battle along with"
	cont "my sister!"
	done
	
.BeatenText:
	text "Wow! What a"
	line "surprise!"
	done
	
TrainerPreschoolerMMarineTube:
	generictrainer PRESCHOOLERM, PRESCHOOLERM_MARINE_TUBE, EVENT_BEAT_PRESCHOOLERM_MARINE_TUBE, .SeenText, .BeatenText

	text "Teacher took us to"
	line "see all the pretty"
	cont "#mon!"
	done
	
.SeenText:
	text "Teacher?"
	
	para "Oh, you're not"
	line "Teacher! You're a"
	cont "trainer!"
	done
	
.BeatenText:
	text "It's hard to see"
	line "in here!"
	done
	
TrainerPreschoolerFMarineTube:
	generictrainer PRESCHOOLERF, PRESCHOOLERF_MARINE_TUBE, EVENT_BEAT_PRESCHOOLERF_MARINE_TUBE, .SeenText, .BeatenText

	text "There are so many"
	line "pretty #mon"
	cont "outside!"
	done
	
.SeenText:
	text "Roar!"
	
	para "I'm a #mon!"
	done
	
.BeatenText:
	text "I'm not really a"
	line "#mon!"
	done
	
MarineTubeCooltrainerFText:
	text "Wow, look at all"
	line "of the #mon"
	cont "underwater!"
	done
	
MarineTubeCooltrainerMText:
	text "The Marine Tube"
	line "is a great date"
	cont "destination!"
	done
	
MarineTubeLassText:
	text "This tube serves"
	line "as a shortcut to"
	
	para "Humilau City, but"
	line "there are so many"
	
	para "tourists that it's"
	line "hard to get"
	cont "through!"
	done
	
MarineTubePokefanMText:
	text "Some people drop"
	line "their valuables"
	
	para "on the floor since"
	line "it's so dark."
	done
	