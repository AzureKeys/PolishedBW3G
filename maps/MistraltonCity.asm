MistraltonCity_MapScriptHeader:
	def_scene_scripts
	scene_script MistraltonCityTrigger0
	scene_script MistraltonCityTrigger1
	scene_script MistraltonCityTrigger2

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MistraltonFlyPoint

	def_warp_events
	warp_event 23, 23, CHARGESTONE_CAVE_1F, 5
	warp_event 27, 15, MISTRALTON_POKECENTER, 1
	warp_event 35, 17, MISTRALTON_SHARP_BEAK_HOUSE, 1
	warp_event 23,  9, MISTRALTON_MOVE_REMINDER, 1
	warp_event 14,  9, MISTRALTON_AIRPORT, 2

	def_coord_events
	coord_event  6,  6, 0, MistraltonCityBlockerScript
	coord_event  7,  6, 0, MistraltonCityBlockerScript
	
	def_bg_events
	bg_event 21,  9, BGEVENT_JUMPTEXT, MistraltonCitySignText
	bg_event 11,  9, BGEVENT_JUMPTEXT, MistraltonAirportSignText
	bg_event  8, 28, BGEVENT_ITEM + ELIXIR, EVENT_MISTRALTON_CITY_ELIXIR
	
	def_object_events
	object_event  6,  5, SPRITE_SKYLA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, 0, EVENT_MISTRALTON_CITY_SKYLA
	object_event  5,  6, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonCityBlockerText, EVENT_SKYLA_RETURNED_TO_GYM
	object_event  5, 10, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonCityOfficerText, -1
	object_event 10, 16, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonCitySchoolboyText, -1
	object_event  8, 22, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonCityTeacherText, -1
	object_event 31, 17, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_PINK, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonCityTwinText, -1
	itemball_event  3,  2, PARALYZEHEAL, 3, EVENT_MISTRALTON_CITY_PARALYZEHEAL
	itemball_event 20, 17, MAX_REPEL, 3, EVENT_MISTRALTON_CITY_MAX_REPEL
	itemball_event  3, 28, HEAVY_BALL, 3, EVENT_MISTRALTON_CITY_HEAVY_BALL
		
	object_const_def
	const MISTRALTONCITY_SKYLA
	const MISTRALTONCITY_BLOCKER
	
MistraltonCityTrigger2:
	sdefer MistraltonCity_GivePassScene
MistraltonCityTrigger0:
MistraltonCityTrigger1:
	end
	
MistraltonFlyPoint:
	setflag ENGINE_FLYPOINT_MISTRALTON
	endcallback
	
MistraltonCity_GivePassScene:
	applymovement PLAYER, .PlayerMovement
	playsound SFX_ENTER_DOOR
	appear MISTRALTONCITY_SKYLA
	waitsfx
	applymovement MISTRALTONCITY_SKYLA, MistraltonCityDownMovement
	opentext
	writethistext
	text "Skyla: Wait,"
	line "<PLAYER>!"
	
	para "Before you go,"
	line "I have something"
	cont "to give you!"
	done
	promptbutton
	verbosegivekeyitem BOARDINGPASS
	writethistext
	text "You're going to"
	line "Humilau City,"
	cont "right?"
	
	para "That BoardingPass"
	line "will let you take"
	
	para "the plane from the"
	line "airport here to"
	cont "Lentimas Town."
	
	para "That'll get you a"
	line "lot closer to"
	cont "Humilau City than"
	cont "walking from here!"
	
	para "Consider it a gift"
	line "for such a good"
	cont "match!"
	done
	waitbutton
	closetext
	applymovement MISTRALTONCITY_SKYLA, .UpMovement
	pause 5
	disappear MISTRALTONCITY_SKYLA
	playsound SFX_ENTER_DOOR
	waitsfx
	setscene 1
	end
	
.PlayerMovement:
	step_down
	turn_head_up
	step_end
	
.UpMovement:
	step_up
	step_end
	
MistraltonCityBlockerScript:
	turnobject MISTRALTONCITY_BLOCKER, RIGHT
	showtext MistraltonCityBlockerText
	applymovement PLAYER, MistraltonCityDownMovement
	end
	
MistraltonCityDownMovement:
	step_down
	step_end
	
MistraltonCityBlockerText:
	text "Oh, are you here"
	line "to challenge the"
	cont "Gym Leader?"
	
	para "Sorry, she's not"
	line "in right now."
	
	para "I think she may"
	line "have gone off to"
	cont "Celestial Tower,"
	cont "up on Route 7."
	done
	
MistraltonCityOfficerText:
	text "Mistralton City"
	line "has the biggest"
	cont "airport in Unova."
	done
	
MistraltonCitySchoolboyText:
	text "I love airplanes!"
	line "I want to be a"
	
	para "pilot when I grow"
	line "up, just like"
	cont "Miss Skyla!"
	done
	
MistraltonCityTeacherText:
	text "We can grow crops"
	line "in the greenhouses"
	cont "all year long!"
	
	para "We export them all"
	line "over Unova."
	done
	
MistraltonCityTwinText:
	text "I love playing in"
	line "the puddles!"
	done
	
MistraltonCitySignText:
	text "Mistralton City."
	
	para "The city where"
	line "winds gather the"
	cont "flowers."
	done
	
MistraltonAirportSignText:
	text "Mistralton City"
	line "Airport."
	done
