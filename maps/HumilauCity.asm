HumilauCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, HumilauFlyPoint
	callback MAPCALLBACK_OBJECTS, HumilauBlockers

	def_warp_events
	warp_event  9,  7, PLAYERS_HOUSE_1F, 1
	warp_event  3, 27, HUMILAU_POKECENTER, 1

	def_coord_events
	coord_event  1,  9, 0, HumilauCity_NeighborStopsYouScene

	def_bg_events
	bg_event 11, 27, BGEVENT_JUMPTEXT, HumilauCitySignText
	bg_event 11, 16, BGEVENT_JUMPTEXT, HumilauMarlonSignText
	bg_event 15, 29, BGEVENT_JUMPTEXT, HumilauMarineTubeSignText
	
	def_object_events
	object_event  1,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HumilauNeighborTextScript, -1
	object_event  3, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, HumilauPCBlockerText, EVENT_HUMILAU_CITY_PC_BLOCKER
	object_event  1,  8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauGymBlockerText, EVENT_HUMILAU_CITY_BLOCKERS
	object_event  1,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauMarineTubeBlockerText, EVENT_HUMILAU_CITY_BLOCKERS
	object_event  1,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HumilauRoamingBlockerText, EVENT_HUMILAU_CITY_ROAMING_BLOCKER
	
	object_const_def
	const HUMILAUCITY_NEIGHBOR
	const HUMILAUCITY_PC_BLOCKER
	const HUMILAUCITY_GYM_BLOCKER
	const HUMILAUCITY_MARINETUBE_BLOCKER
	const HUMILAUCITY_BLOCKER_ROAMING

HumilauFlyPoint:
	setflag ENGINE_FLYPOINT_HUMILAU
	checkevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	iftrue .done
	checkflag ENGINE_WAVEBADGE
	iffalse .done
	;specialphonecall SPECIALCALL_MOM_LECTURE
.done
	endcallback

HumilauBlockers:
	checkevent EVENT_GOT_A_POKEMON
	iffalse .done
	disappear HUMILAUCITY_PC_BLOCKER
	checkevent EVENT_MET_MARLON_IN_UNDELLA
	iffalse .done
	disappear HUMILAUCITY_GYM_BLOCKER
	disappear HUMILAUCITY_MARINETUBE_BLOCKER
	appear HUMILAUCITY_BLOCKER_ROAMING
.done
	endcallback
	
HumilauCity_NeighborStopsYouScene:
	turnobject HUMILAUCITY_NEIGHBOR, DOWN
	showemote EMOTE_SHOCK, HUMILAUCITY_NEIGHBOR, 15
	turnobject PLAYER, UP
	opentext
	writetext HumilauCityNeighborText_DontLeave
	waitbutton
	closetext
	applymovement PLAYER, HumilauCity_DontLeaveMovement
	end
	
HumilauNeighborTextScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON
	iftrue HumilauCityNeighborText_PokemonScript
	writetext HumilauCityNeighborText_Dangerous
	waitbutton
	closetext
	end
	
HumilauCityNeighborText_PokemonScript:
	writetext HumilauCityNeighborText_Pokemon
	waitbutton
	closetext
	end

HumilauCity_DontLeaveMovement:
	step_right
	step_end
	
HumilauCityNeighborText_DontLeave:
	text "Wait, <PLAYER>!"

	para "It's dangerous"
	line "outside of town!"
	
	para "You could get"
	line "attacked by a"
	cont "wild #mon!"
	done
	
HumilauCityNeighborText_Pokemon:
	text "Oh wow! What a"
	line "cute #mon!"
	done
	
HumilauCityNeighborText_Dangerous:
	text "Oh, hi, <PLAYER>."
	
	para "This is the way"
	line "to Route 22."
	
	para "You'd better not"
	line "keep going."

	para "It's dangerous"
	line "outside of town."
	
	para "You could get"
	line "attacked by a"
	cont "wild #mon!"
	done
	
HumilauMarineTubeBlockerText:
	text "I was trying to"
	line "get into the"
	
	para "Marine Tube to"
	line "reach Undella"
	cont "Town…"

	para "But it's crowded"
	line "with tourists!"
	done
	
HumilauRoamingBlockerText:
	text "Whew! The tourists"
	line "have finally gone"
	cont "home…"
	done
	
HumilauGymBlockerText:
	text "It looks like the"
	line "Gym Leader is"
	cont "away…"

	para "Darn! I wanted to"
	line "challenge the gym!"
	done
	
HumilauPCBlockerText:
	text "Hmm…"

	para "Which #mon"
	line "should I take"
	cont "with me today…?"
	done
	
HumilauCitySignText:
	text "Humilau City"

	para "A resort with"
	line "calm and"
	cont "sparkling seas!"
	done
	
HumilauMarlonSignText:
	text "Marlon's house."
	done
	
HumilauMarineTubeSignText:
	text "Marine Tube"

	para "Undersea passage"
	line "to Undella Town."
	done
