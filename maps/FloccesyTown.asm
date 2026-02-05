FloccesyTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FloccesyFlyPoint
	callback MAPCALLBACK_OBJECTS, FloccesyTownHandleBlocker

	def_warp_events

	def_coord_events
	coord_event  0, 26, 0, FloccesyTownJuniperScript4
	coord_event  0, 27, 0, FloccesyTownJuniperScript3
	coord_event  0, 28, 0, FloccesyTownJuniperScript2
	coord_event  0, 29, 0, FloccesyTownJuniperScript1

	def_bg_events
	bg_event 11, 25, BGEVENT_JUMPTEXT, FloccesyTownSignText
	
	def_object_events
	object_event  0, 24, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_FLOCCESY_TOWN_JUNIPER
	object_event 11,  8, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyTownBlockerText, EVENT_FLOCCESY_TOWN_BLOCKER
	object_event 12, 19, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_PINK, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyTownTwinText, -1
	object_event 13, 27, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FloccesyTownPokefanMText, -1
	itemball_event 21, 16, LOVE_BALL, 3, EVENT_FLOCCESY_TOWN_LOVE_BALL
	itemball_event -2, 24, RARE_CANDY, 1, EVENT_ROUTE_19_RARE_CANDY ; dummy item
		
	object_const_def
	const FLOCCESYTOWN_JUNIPER
	const FLOCCESYTOWN_BLOCKER
	
FloccesyFlyPoint:
	setflag ENGINE_FLYPOINT_FLOCCESY
	endcallback
	
FloccesyTownHandleBlocker:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalsefwd .done
	checkevent EVENT_BEAT_ALDER
	iffalsefwd .disappear
	checkflag ENGINE_ALDER
	iftruefwd .disappear
	readvar VAR_WEEKDAY
	ifequalfwd WEDNESDAY, .disappear
	appear FLOCCESYTOWN_BLOCKER
	sjumpfwd .done
.disappear
	disappear FLOCCESYTOWN_BLOCKER
.done
	endcallback
	
FloccesyTownJuniperScript1:
	applymovement PLAYER, .Movement
	sjumpfwd FloccesyTownJuniperScript
.Movement:
	step_up
	step_up
	step_up
	step_end
	
FloccesyTownJuniperScript2:
	applymovement PLAYER, .Movement
	sjumpfwd FloccesyTownJuniperScript
.Movement:
	step_up
	step_up
	step_end
	
FloccesyTownJuniperScript3:
	applymovement PLAYER, .Movement
	sjumpfwd FloccesyTownJuniperScript
.Movement:
	step_up
	step_end
	
FloccesyTownJuniperScript4:
	turnobject PLAYER, UP
	; fallthrough
FloccesyTownJuniperScript:
	showtext .JuniperText
	applymovement FLOCCESYTOWN_JUNIPER, .JuniperMovement
	disappear FLOCCESYTOWN_JUNIPER
	setscene 1
	end
.JuniperMovement:
	step_right
	step_right
	step_up
	step_up
	step_up
	step_end
	
.JuniperText:
	text "You there,"
	line "trainer!"
	
	para "You're <PLAYER>,"
	line "right?"
	
	para "My name is Aurea"
	line "Juniper. I'm a"
	cont "friend of Prof."
	cont "Bianca."
	
	para "In fact, she used"
	line "to be my pupil."
	
	para "I was the Prof who"
	line "gave her and"
	cont "Cheren their first"
	cont "#mon."
	
	para "They've both told"
	line "me good things"
	cont "about you."
	
	para "Cheren's gone to"
	line "the Complex in"
	cont "Virbank City."
	
	para "He believes Team"
	line "Plasma may be up"
	cont "to something"
	cont "there."
	
	para "I'm sure he'd"
	line "appreciate if you"
	cont "helped."
	
	para "I'm eager to see"
	line "how far you'll go,"
	cont "<PLAYER>."
	done
	
FloccesyTownBlockerText:
	text "Mister Alder isn't"
	line "home right now."
	
	para "Aw man, I wanted"
	line "to train with him!"
	done
	
FloccesyTownTwinText:
	text "I want to go to"
	line "the ranch! I want"
	cont "to get some milk!"
	done
	
FloccesyTownPokefanMText:
	text "Welcome to our"
	line "little town. It"
	
	para "ain't much, but"
	line "the ranch outside"
	
	para "of town delivers"
	line "milk all over"
	cont "Unova."
	done
	
FloccesyTownSignText:
	text "Floccesy Town"
	
	para "Prophecy flocks"
	line "here!"
	done
