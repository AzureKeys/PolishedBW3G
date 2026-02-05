MarlonsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script MarlonsHouseTrigger0
	scene_script MarlonsHouseTrigger1
	scene_script MarlonsHouseTrigger2

	def_callbacks

	def_warp_events
	warp_event  4,  7, HUMILAU_CITY, 6
	warp_event  5,  7, HUMILAU_CITY, 6

	def_coord_events
	coord_event  4,  7, 1, MarlonsHouseTryToLeaveScript
	coord_event  5,  7, 1, MarlonsHouseTryToLeaveScript

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MarlonsWifeScript, -1
	object_event  3,  2, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_KEY_ITEM, OBJECTTYPE_SCRIPT, 0, SnivyPokeballScript, EVENT_MARLONS_HOUSE_SNIVY_BALL
	object_event  4,  2, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_POKE_BALL, OBJECTTYPE_SCRIPT, 0, TepigPokeballScript, EVENT_MARLONS_HOUSE_TEPIG_BALL
	object_event  5,  2, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DECO_ITEM, OBJECTTYPE_SCRIPT, 0, OshawottPokeballScript, EVENT_MARLONS_HOUSE_OSHAWOTT_BALL
	
	object_const_def
	const MARLONSHOUSE_WIFE
	const MARLONSHOUSE_SNIVY_BALL
	const MARLONSHOUSE_TEPIG_BALL
	const MARLONSHOUSE_OSHAWOTT_BALL
	
MarlonsHouseTrigger0:
	sdefer MarlonsHouse_MeetWifeScript
MarlonsHouseTrigger1:
MarlonsHouseTrigger2:
	end
	
MarlonsHouse_MeetWifeScript:
	applymovement PLAYER, MarlonsHouse_WalkUpToWifeMovement
	opentext
	writetext MarlonsHouseIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, MARLONSHOUSE_WIFE, 15
	opentext
	writetext MarlonsHouseTakePokemonText
	waitbutton
	closetext
	setscene $1
	end
	
MarlonsWifeScript:
	faceplayer
	opentext
	checkevent EVENT_MET_MARLON_IN_UNDELLA
	iftrue_jumpopenedtext MarlonsHouseInGymText
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumpopenedtext MarlonsHouseFindMarlonText
	writetext MarlonsHousePickYourFavoriteText
	waitbutton
	closetext
	end
	
SnivyPokeballScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext MarlonsHouseLookPokeBallText
	turnobject MARLONSHOUSE_WIFE, UP
	reanchormap
	pokepic SNIVY
	cry SNIVY
	waitbutton
	closepokepic
	opentext
	writetext TakeSnivyText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear MARLONSHOUSE_SNIVY_BALL
	setevent EVENT_GOT_SNIVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke SNIVY, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	readvar VAR_FACING
	ifequalfwd RIGHT, .SnivyMovementRight
	applymovement PLAYER, AfterSnivyMovementBelow
	sjumpfwd MarlonsWifeDirectionsScript
.SnivyMovementRight
	applyonemovement PLAYER, step_down
	sjumpfwd MarlonsWifeDirectionsScript
	
TepigPokeballScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext MarlonsHouseLookPokeBallText
	turnobject MARLONSHOUSE_WIFE, RIGHT
	reanchormap
	pokepic TEPIG
	cry TEPIG
	waitbutton
	closepokepic
	opentext
	writetext TakeTepigText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear MARLONSHOUSE_TEPIG_BALL
	setevent EVENT_GOT_TEPIG
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke TEPIG, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	applymovement PLAYER, AfterTepigMovement
	sjumpfwd MarlonsWifeDirectionsScript
	
OshawottPokeballScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext MarlonsHouseLookPokeBallText
	turnobject MARLONSHOUSE_WIFE, RIGHT
	reanchormap
	pokepic OSHAWOTT
	cry OSHAWOTT
	waitbutton
	closepokepic
	opentext
	writetext TakeOshawottText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear MARLONSHOUSE_OSHAWOTT_BALL
	setevent EVENT_GOT_OSHAWOTT
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke OSHAWOTT, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	readvar VAR_FACING
	ifequalfwd LEFT, .OshawottMovementLeft
	applymovement PLAYER, AfterOshawottMovementBelow
	sjumpfwd MarlonsWifeDirectionsScript
.OshawottMovementLeft
	applymovement PLAYER, AfterOshawottMovementLeft
	
MarlonsWifeDirectionsScript:
	opentext
	writetext MarlonsHouseDirectionsText
	promptbutton
	;verbosegiveitem TOWN_MAP
	writetext MarlonsHouseDoneText
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_MOMS_PARTNERS_HOUSE_NEIGHBOR
	setscene $2
	setmapscene HUMILAU_CITY, $1
	end
	
MarlonsHouseTryToLeaveScript:
	turnobject MARLONSHOUSE_WIFE, DOWN
	opentext
	writetext MarlonsHouseWhereGoingText
	waitbutton
	closetext
	applyonemovement PLAYER, step_up
	end
	
MarlonsHouse_WalkUpToWifeMovement:
	step_up
	step_up
	step_up
	step_left
	step_end
	
AfterSnivyMovementBelow:
	step_left
	turn_head_down
	step_end
	
AfterTepigMovement:
	step_down
	step_left
	step_end
	
AfterOshawottMovementBelow:
	step_down
	step_left
	step_left
	step_end
	
AfterOshawottMovementLeft:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_end
	
MarlonsHouseIntroText:
	text "Oh, <PLAYER>!"
	
	para "Marlon was waiting"
	line "for you until just"
	cont "a few minutes ago."
	
	para "He got a phone"
	line "call and just left"
	cont "all of a sudden."
	
	para "Of course, he"
	line "didn't mention"
	cont "where he was"
	cont "going…"
	
	para "I think he was"
	line "headed to"
	cont "Route 22…"
	
	para "But it's dangerous"
	line "outside of town."
	
	para "There are wild"
	line "#mon out there,"
	
	para "You better not go"
	line "after him alone."
	done
	
MarlonsHouseTakePokemonText:
	text "Oh, wait!"
	
	para "Marlon brought"
	line "some #mon home"
	cont "with him today!"
	
	para "He left them in"
	line "those # Balls"
	cont "on the table."
	
	para "I'm sure he"
	line "wouldn't mind if"
	cont "you took one with"
	cont "you for safety."
	
	para "There are three"
	line "#mon here."
	
	para "Go ahead, pick"
	line "your favorite!"
	done
	
MarlonsHousePickYourFavoriteText:
	text "Go ahead, pick"
	line "your favorite!"
	done
	
MarlonsHouseWhereGoingText:
	text "Wait, where are"
	line "you going?"
	
	para "You should really"
	line "take a #mon"
	cont "with you!"
	done
	
MarlonsHouseDirectionsText:
	text "Route 22 is west"
	line "of town, across"
	cont "the bridge."
	
	para "Here, take this so"
	line "you don't get"
	cont "lost!"
	done
	
MarlonsHouseDoneText:
	text "Good luck,"
	line "<PLAYER>!"
	done
	
MarlonsHouseInGymText:
	text "Oh, <PLAYER>,"
	line "Marlon came back"
	cont "into town."
	
	para "You can find him"
	line "at the Gym."
	done
	
MarlonsHouseFindMarlonText:
	text "Did you find"
	line "Marlon?"
	
	para "Make sure he stays"
	line "out of trouble!"
	done
	
TakeSnivyText:
	text "You'll take"
	line "Snivy, the"
	cont "grass #mon?"
	done

TakeTepigText:
	text "Do you want"
	line "Tepig, the"
	cont "fire #mon?"
	done

TakeOshawottText:
	text "So, you like"
	line "Oshawott, the"
	cont "water #mon?"
	done

DidntChooseStarterText:
	text "Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "I think that's a"
	line "great #mon too!"
	done

MarlonsHouseLookPokeBallText:
	text "It contains one of"
	line "Marlon's #mon!"
	done
