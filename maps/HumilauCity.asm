HumilauCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, HumilauFlyPoint

	def_warp_events
	warp_event  9,  7, PLAYERS_HOUSE_1F, 1

	def_coord_events
	coord_event  1,  9, 0, HumilauCity_NeighborStopsYouScene

	def_bg_events
	bg_event 11, 27, BGEVENT_JUMPTEXT, HumilauCitySignText
	bg_event 11, 16, BGEVENT_JUMPTEXT, HumilauMarlonSignText
	bg_event 15, 29, BGEVENT_JUMPTEXT, HumilauMarineTubeSignText
	
	def_object_events
	object_event  1,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HumilauNeighborTextScript, -1
	
	object_const_def
	const HUMILAUCITY_NEIGHBOR

HumilauFlyPoint:
	setflag ENGINE_FLYPOINT_HUMILAU
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
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
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
	cont "wild #MON!"
	done
	
HumilauCityNeighborText_Pokemon:
	text "Oh wow! What a"
	line "cute #MON!"
	done
	
HumilauCityNeighborText_Dangerous:
	text "Oh, hi, <PLAYER>."
	
	para "This is the way"
	line "to ROUTE 22."
	
	para "You'd better not"
	line "keep going."

	para "It's dangerous"
	line "outside of town."
	
	para "You could get"
	line "attacked by a"
	cont "wild #MON!"
	done
	
HumilauCitySignText:
	text "HUMILAU CITY"

	para "A resort with"
	line "calm and"
	cont "sparkling seas!"
	done
	
HumilauMarlonSignText:
	text "MARLON's house."
	done
	
HumilauMarineTubeSignText:
	text "MARINE TUBE"

	para "Undersea passage"
	line "to UNDELLA TOWN."
	done
