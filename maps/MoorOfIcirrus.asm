MoorOfIcirrus_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MoorOfIcirrusBoulderHoles
	callback MAPCALLBACK_STONETABLE, MoorOfIcirrusBoulderCallback

	def_warp_events
	warp_event 41, 13, ROUTE_8, 3
	warp_event 41, 14, ROUTE_8, 4
	warp_event  9, 25, MOOR_OF_ICIRRUS, 1 ; hole
	
	def_coord_events

	def_bg_events
	bg_event 45, 26, BGEVENT_ITEM + MAX_ETHER, EVENT_MOOR_OF_ICIRRUS_MAX_ETHER
	bg_event 13, 36, BGEVENT_ITEM + NUGGET, EVENT_MOOR_OF_ICIRRUS_NUGGET
	bg_event 26, 24, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_MOOR_OF_ICIRRUS_BIG_MUSHROOM
	bg_event 12, 20, BGEVENT_ITEM + REVIVE, EVENT_MOOR_OF_ICIRRUS_REVIVE
	
	def_object_events
	strengthboulder_event 11, 25, EVENT_MOOR_OF_ICIRRUS_BOULDER
	object_event 16,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerFisher1MoorOfIcirrus, -1
	object_event 40, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerFisher2MoorOfIcirrus, -1
	object_event  9, 27, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerFMoorOfIcirrus, -1
	object_event 18, 26, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerMMoorOfIcirrus, -1
	itemball_event 37, 36, MAX_POTION, 3, EVENT_MOOR_OF_ICIRRUS_MAX_POTION
	itemball_event 23,  8, MAX_REVIVE, 1, EVENT_MOOR_OF_ICIRRUS_MAX_REVIVE
	itemball_event 30,  4, MAX_ELIXIR, 1, EVENT_MOOR_OF_ICIRRUS_MAX_ELIXIR
	itemball_event 36, 30, CARBOS, 1, EVENT_MOOR_OF_ICIRRUS_CARBOS
	itemball_event 29, 18, HEART_SCALE, 1, EVENT_MOOR_OF_ICIRRUS_HEART_SCALE
	itemball_event  6, 11, GREEN_SHARD, 1, EVENT_MOOR_OF_ICIRRUS_GREEN_SHARD
	tmhmball_event  7, 37, TM_FOCUS_BLAST, EVENT_MOOR_OF_ICIRRUS_TM_FOCUS_BLAST
	
	object_const_def
	const MOOROFICIRRUS_BOULDER
	
MoorOfIcirrusBoulderHoles:
	checkevent EVENT_MOOR_OF_ICIRRUS_BOULDER
	iffalsefwd .done
	changeblock  8, 24, $cc
.done
	endcallback
	
MoorOfIcirrusBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, MOOROFICIRRUS_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	disappear MOOROFICIRRUS_BOULDER
	changeblock  8, 24, $cc
	refreshmap
	waitbutton
	closetext
	end
	
TrainerFisher1MoorOfIcirrus:
	generictrainer FISHER, FISHER_MOOR_OF_ICIRRUS_1, EVENT_BEAT_FISHER_MOOR_OF_ICIRRUS_1, .SeenText, .BeatenText

	text "There are other"
	line "#mon of the"
	
	para "same kind, but I"
	line "feel like I was"
	
	para "destined to be"
	line "with these!"
	done
	
.SeenText:
	text "Check out my #-"
	line "mon! It took me"
	
	para "100 # Balls to"
	line "catch it!"
	done

.BeatenText:
	text "It doesn't mean"
	line "much if it can't"
	cont "win in battle…"
	done
	
TrainerFisher2MoorOfIcirrus:
	generictrainer FISHER_D, FISHER_MOOR_OF_ICIRRUS_2, EVENT_BEAT_FISHER_MOOR_OF_ICIRRUS_2, .SeenText, .BeatenText

	text "I may have just"
	line "caught them, but"
	
	para "I'll raise them to"
	line "be strong!"
	done
	
.SeenText:
	text "I'll have a battle"
	line "with you using my"
	
	para "freshly caught"
	line "#mon!"
	done

.BeatenText:
	text "I had no idea how"
	line "my #mon would"
	cont "fight…"
	done
	
TrainerPkmnRangerMMoorOfIcirrus:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_MOOR_OF_ICIRRUS, EVENT_BEAT_PKMN_RANGERM_MOOR_OF_ICIRRUS, .SeenText, .BeatenText

	text "If you know what"
	line "kind of wild #-"
	cont "mon inhabit an"
	
	para "area, you can"
	line "bring along #-"
	cont "mon who are strong"
	
	para "against them and"
	line "will have no prob-"
	cont "lem moving ahead."
	done
	
.SeenText:
	text "Knowing oneself,"
	line "knowing the other,"
	
	para "and knowing the"
	line "surroundings…"
	
	para "That's a Ranger!"
	done

.BeatenText:
	text "Knowing your "
	line "opponent is a"
	cont "difficult feat!"
	done
	
TrainerPkmnRangerFMoorOfIcirrus:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_MOOR_OF_ICIRRUS, EVENT_BEAT_PKMN_RANGERF_MOOR_OF_ICIRRUS, .SeenText, .BeatenText

	text "Stay still and"
	line "listen carefully!"
	
	para "Hear the sounds of"
	line "nearby #mon…"
	
	para "The breath of"
	line "trees and swamps."
	done
	
.SeenText:
	text "#mon trainers"
	line "nurture friendship"
	cont "with battles!"
	done

.BeatenText:
	text "This feeling of"
	line "defeat… It's like a"
	cont "bottomless swamp…"
	done
	