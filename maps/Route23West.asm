Route23West_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route23WestTileScript
	callback MAPCALLBACK_STONETABLE, Route23WestBoulderCallback

	def_warp_events
	warp_event 28, 15, ROUTE_23_WEST, 6 ; hole
	warp_event 20, 18, ROUTE_23_WEST, 6 ; hole
	warp_event 24, 17, ROUTE_23_WEST, 6 ; hole
	warp_event 29, 18, ROUTE_23_WEST, 6 ; hole
	warp_event 40, 18, ROUTE_23_WEST, 6 ; hole
	warp_event 29, 12, ROUTE_23_WEST, 6 ; spawn from fall in hole
	warp_event 52,  4, VICTORY_ROAD_ENTRANCE_SOUTH_EAST, 1
	warp_event 53,  4, VICTORY_ROAD_ENTRANCE_SOUTH_EAST, 2

	def_coord_events
	coord_event 48,  6, 1, Route23WestBridge1OverheadTrigger
	coord_event 48,  7, 1, Route23WestBridge1OverheadTrigger
	coord_event 49,  6, 0, Route23WestBridge1UnderfootTrigger
	coord_event 49,  7, 0, Route23WestBridge1UnderfootTrigger
	coord_event 56,  6, 0, Route23WestBridge1UnderfootTrigger
	coord_event 56,  7, 0, Route23WestBridge1UnderfootTrigger
	coord_event 57,  6, 1, Route23WestBridge1OverheadTrigger
	coord_event 57,  7, 1, Route23WestBridge1OverheadTrigger
	coord_event 58,  7, 1, Route23WestBridge2OverheadTrigger
	coord_event 59,  7, 1, Route23WestBridge2OverheadTrigger
	coord_event 58,  8, 0, Route23WestBridge2UnderfootTrigger
	coord_event 59,  8, 0, Route23WestBridge2UnderfootTrigger
	coord_event 58, 12, 0, Route23WestBridge2UnderfootTrigger
	coord_event 59, 12, 0, Route23WestBridge2UnderfootTrigger
	coord_event 57, 12, 1, Route23WestBridge2OverheadTrigger
	coord_event 57, 13, 1, Route23WestBridge2OverheadTrigger
	coord_event 64, 10, 1, Route23WestBridgesOverheadTrigger
	coord_event 64, 11, 1, Route23WestBridgesOverheadTrigger
	coord_event 52,  5, 1, Route23WestBridgesOverheadTrigger
	coord_event 53,  5, 1, Route23WestBridgesOverheadTrigger
	coord_event 54,  4, 1, Route23WestBridgesOverheadTrigger
	coord_event 52,  4, -1, Route23WestLegendBadgeCheck
	coord_event 53,  4, -1, Route23WestLegendBadgeCheck

	def_bg_events
	bg_event 12, 10, BGEVENT_ITEM + CALCIUM, EVENT_ROUTE_23_WEST_CALCIUM
	bg_event  4, 12, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_23_WEST_RARE_CANDY
	bg_event  8, 19, BGEVENT_ITEM + NUGGET, EVENT_ROUTE_23_WEST_NUGGET
	
	def_object_events
	strengthboulder_event 28, 13, EVENT_ROUTE_23_WEST_BOULDER_1
	strengthboulder_event 19, 18, EVENT_ROUTE_23_WEST_BOULDER_2
	strengthboulder_event 22, 14, EVENT_ROUTE_23_WEST_BOULDER_3
	strengthboulder_event 28, 16, EVENT_ROUTE_23_WEST_BOULDER_4
	strengthboulder_event 34, 17, EVENT_ROUTE_23_WEST_BOULDER_5
	object_event 51,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23WestLegendOfficerScript, -1
	object_event 70, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, -1 ; dummy object
	object_event 61, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerMR23West, -1
	object_event 56, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerFR23West, -1
	object_event 19,  8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBackpackerMR23West, -1
	object_event 31, 10, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerFR23West, -1
	object_event  5,  6, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerMR23West, -1
	object_event 50,  9, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerPkmnRangerFR23West, -1
	object_event 54, 13, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerBattleGirlR23West, -1
	object_event 23,  5, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerVeteranMR23West, -1
	itemball_event 47,  4, IRON, 1, EVENT_ROUTE_23_WEST_IRON
	itemball_event 25, 14, FULL_RESTORE, 3, EVENT_ROUTE_23_WEST_FULL_RESTORE
	itemball_event 41,  6, PP_MAX, 1, EVENT_ROUTE_23_WEST_PP_MAX
	tmhmball_event 41, 12, TM_FLAMETHROWER, EVENT_ROUTE_23_WEST_TM_FLAMETHROWER
	cuttree_event 43,  9, EVENT_ROUTE_23_CUT_TREE_1
	cuttree_event 34,  7, EVENT_ROUTE_23_CUT_TREE_2
	cuttree_event 20, 11, EVENT_ROUTE_23_CUT_TREE_3
	cuttree_event  6, 13, EVENT_ROUTE_23_CUT_TREE_4
	
	object_const_def
	const ROUTE23WEST_BOULDER_1
	const ROUTE23WEST_BOULDER_2
	const ROUTE23WEST_BOULDER_3
	const ROUTE23WEST_BOULDER_4
	const ROUTE23WEST_BOULDER_5
	const ROUTE23WEST_OFFICER
	
Route23WestBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 1, ROUTE23WEST_BOULDER_1, .Disappear1
	stonetable 2, ROUTE23WEST_BOULDER_2, .Disappear2
	stonetable 3, ROUTE23WEST_BOULDER_3, .Disappear3
	stonetable 4, ROUTE23WEST_BOULDER_4, .Disappear4
	stonetable 5, ROUTE23WEST_BOULDER_5, .Disappear5
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear ROUTE23WEST_BOULDER_1
	changeblock 28, 14, $be
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear ROUTE23WEST_BOULDER_2
	changeblock 20, 18, $c5
	sjumpfwd .DoneBoulder
	
.Disappear3:
	scall .FX
	disappear ROUTE23WEST_BOULDER_3
	changeblock 24, 16, $c7
	sjumpfwd .DoneBoulder
	
.Disappear4:
	scall .FX
	disappear ROUTE23WEST_BOULDER_4
	changeblock 28, 18, $c9
	sjumpfwd .DoneBoulder
	
.Disappear5:
	scall .FX
	disappear ROUTE23WEST_BOULDER_5
	changeblock 40, 18, $c5
	; fallthrough
.DoneBoulder:
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	end
	
Route23WestTileScript:
	checkevent EVENT_ROUTE_23_WEST_BOULDER_1
	iffalsefwd .check2
	changeblock 28, 14, $be
.check2
	checkevent EVENT_ROUTE_23_WEST_BOULDER_2
	iffalsefwd .check3
	changeblock 20, 18, $c5
.check3
	checkevent EVENT_ROUTE_23_WEST_BOULDER_3
	iffalsefwd .check4
	changeblock 24, 16, $c7
.check4
	checkevent EVENT_ROUTE_23_WEST_BOULDER_4
	iffalsefwd .check5
	changeblock 28, 18, $c9
.check5
	checkevent EVENT_ROUTE_23_WEST_BOULDER_5
	iffalsefwd .HandleBridges
	changeblock 40, 18, $c5
.HandleBridges
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 48,  6, $d6, ROUTE_23_WEST
	changebridgeblock 50,  6, $d8, ROUTE_23_WEST
	changebridgeblock 52,  6, $d8, ROUTE_23_WEST
	changebridgeblock 54,  6, $d8, ROUTE_23_WEST
	changebridgeblock 56,  6, $d7, ROUTE_23_WEST
	; bridge 2
	changebridgeblock 58,  8, $dc, ROUTE_23_WEST
	changebridgeblock 58, 10, $dd, ROUTE_23_WEST
	changebridgeblock 58, 12, $e1, ROUTE_23_WEST
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 48,  6, $da, ROUTE_23_WEST
	changebridgeblock 50,  6, $a1, ROUTE_23_WEST
	changebridgeblock 52,  6, $a1, ROUTE_23_WEST
	changebridgeblock 54,  6, $a1, ROUTE_23_WEST
	changebridgeblock 56,  6, $db, ROUTE_23_WEST
	; bridge 2
	changebridgeblock 58,  8, $e0, ROUTE_23_WEST
	changebridgeblock 58, 10, $e0, ROUTE_23_WEST
	changebridgeblock 58, 12, $02, ROUTE_23_WEST
	jmp BufferScreen

Route23WestBridge1OverheadTrigger:
	callthisasm
	changebridgeblock 48,  6, $d6, ROUTE_23_WEST
	changebridgeblock 50,  6, $d8, ROUTE_23_WEST
	changebridgeblock 52,  6, $d8, ROUTE_23_WEST
	changebridgeblock 54,  6, $d8, ROUTE_23_WEST
	changebridgeblock 56,  6, $d7, ROUTE_23_WEST
	jp Route23West_FinishOverheadBridge
	
Route23WestBridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 48,  6, $da, ROUTE_23_WEST
	changebridgeblock 50,  6, $a1, ROUTE_23_WEST
	changebridgeblock 52,  6, $a1, ROUTE_23_WEST
	changebridgeblock 54,  6, $a1, ROUTE_23_WEST
	changebridgeblock 56,  6, $db, ROUTE_23_WEST
	jp Route23West_FinishUnderfootBridge
	
Route23WestBridge2OverheadTrigger:
	callthisasm
	changebridgeblock 58,  8, $dc, ROUTE_23_WEST
	changebridgeblock 58, 10, $dd, ROUTE_23_WEST
	changebridgeblock 58, 12, $e1, ROUTE_23_WEST
	jp Route23West_FinishOverheadBridge
	
Route23WestBridgesOverheadTrigger:
	callthisasm
	; bridge 1
	changebridgeblock 48,  6, $d6, ROUTE_23_WEST
	changebridgeblock 50,  6, $d8, ROUTE_23_WEST
	changebridgeblock 52,  6, $d8, ROUTE_23_WEST
	changebridgeblock 54,  6, $d8, ROUTE_23_WEST
	changebridgeblock 56,  6, $d7, ROUTE_23_WEST
	; bridge 2
	changebridgeblock 58,  8, $dc, ROUTE_23_WEST
	changebridgeblock 58, 10, $dd, ROUTE_23_WEST
	changebridgeblock 58, 12, $e1, ROUTE_23_WEST
	; fallthrough
Route23West_FinishOverheadBridge:
	xor a
	jr Route23West_FinishBridge
	
Route23WestBridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 58,  8, $e0, ROUTE_23_WEST
	changebridgeblock 58, 10, $e0, ROUTE_23_WEST
	changebridgeblock 58, 12, $02, ROUTE_23_WEST
	; fallthrough
Route23West_FinishUnderfootBridge:
	ld a, $1
Route23West_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute23WestSceneID], a
	jmp GenericFinishBridge
	
Route23WestLegendBadgeCheck:
	checkevent EVENT_SHOWED_LEGENDBADGE
	iftruefwd .done
	turnobject PLAYER, LEFT
	turnobject ROUTE23WEST_OFFICER, RIGHT
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedLegendBadgeText
	checkflag ENGINE_LEGENDBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_LEGENDBADGE
	writetext R23OfficerHaveLegendBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23WestLegendOfficerScript:
	checkevent EVENT_SHOWED_LEGENDBADGE
	iftrue_jumptextfaceplayer R23OfficerHaveLegendBadgeText
	faceplayer
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedLegendBadgeText
	checkflag ENGINE_LEGENDBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_LEGENDBADGE
	writetext R23OfficerHaveLegendBadgeText
.NoBadge
	waitbutton
	closetext
	end
	
TrainerAceTrainerMR23West:
	generictrainer ACE_TRAINERM_D, ACE_TRAINERM_R23_2, EVENT_BEAT_ACE_TRAINERM_R23_2, .SeenText, .BeatenText

	text "I'm not interested"
	line "in anything but"
	cont "#mon!"
	
	para "It may not be"
	line "balanced, but I'm"
	
	para "satisfied living"
	line "like this!"
	done
	
.SeenText:
	text "I keep a tally of"
	line "all of the times"
	
	para "that I have won or"
	line "lost up until"
	
	para "today. If I battle"
	line "you, I wonder"
	
	para "which number will"
	line "be increased."
	done

.BeatenText:
	text "So my number of"
	line "losses went up…"
	done
	
TrainerAceTrainerFR23West:
	generictrainer ACE_TRAINERF, ACE_TRAINERF_R23_2, EVENT_BEAT_ACE_TRAINERF_R23_2, .SeenText, .BeatenText

	text "I have been"
	line "together with"
	
	para "#mon since I"
	line "was born, and I've"
	
	para "battled my whole"
	line "life. I hope we're"
	
	para "together even at"
	line "the end of all"
	cont "things."
	done
	
.SeenText:
	text "This is the"
	line "concerto I perform"
	
	para "with my most"
	line "beloved #mon!"
	done

.BeatenText:
	text "Your side is much"
	line "more in harmony!"
	done
	
TrainerBackpackerMR23West:
	generictrainer BACKPACKERM, BACKPACKERM_R23, EVENT_BEAT_BACKPACKERM_R23, .SeenText, .BeatenText

	text "Accept your own"
	line "weaknesses. That"
	
	para "is the first step"
	line "to getting"
	cont "stronger."
	done
	
.SeenText:
	text "You look like an"
	line "opponent who will"
	
	para "highlight my"
	line "weaknesses."
	done

.BeatenText:
	text "Now I see my"
	line "faults clearly."
	done
	
TrainerBackpackerFR23West:
	generictrainer BACKPACKERF, BACKPACKERF_R23, EVENT_BEAT_BACKPACKERF_R23, .SeenText, .BeatenText

	text "Burning competit-"
	line "iveness and cool"
	
	para "logic… You'll need"
	line "both if you're"
	
	para "going to go up"
	line "against the #-"
	cont "mon League."
	done
	
.SeenText:
	text "A heated battle is"
	line "good, but get too"
	
	para "hot and you might"
	line "end up getting"
	cont "burned!"
	done

.BeatenText:
	text "Amazing! I think I"
	line "got a bit singed…"
	done
	
TrainerPkmnRangerMR23West:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_R23, EVENT_BEAT_PKMN_RANGERM_R23, .SeenText, .BeatenText

	text "I've been lying in"
	line "wait for ages!"
	
	para "An Amoonguss"
	line "couldn't have"
	
	para "pulled off a"
	line "better ambush…"
	cont "right?"
	done
	
.SeenText:
	text "I've been waiting"
	line "for this! Waiting"
	
	para "for this very"
	line "moment!"
	done

.BeatenText:
	text "I had been waiting"
	line "for such a strong"
	
	para "trainer as your-"
	line "self!"
	done
	
TrainerPkmnRangerFR23West:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_R23, EVENT_BEAT_PKMN_RANGERF_R23, .SeenText, .BeatenText

	text "Beyond the stairs"
	line "to the north,"
	
	para "Victory Road lies"
	line "before you…"
	done
	
.SeenText:
	text "Oh trainer,"
	line "embarking on the"
	
	para "path to Victory"
	line "Road! Won't you"
	
	para "show me your true"
	line "power?!"
	done

.BeatenText:
	text "You didn't have to"
	line "show me quite that"
	cont "much power…"
	done
	
TrainerBattleGirlR23West:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_R23, EVENT_BEAT_BATTLE_GIRL_R23, .SeenText, .BeatenText

	text "It's lots of fun"
	line "here, cause there"
	
	para "are only awesome"
	line "#mon. I'm so"
	cont "pumped!"
	done
	
.SeenText:
	text "Your #mon must"
	line "be really some-"
	
	para "thing if you're"
	line "here on Route 23!"
	done

.BeatenText:
	text "Hahaha! #mon"
	line "are so much fun!"
	done
	
TrainerVeteranMR23West:
	generictrainer VETERANM, VETERANM_R23, EVENT_BEAT_VETERANM_R23, .SeenText, .BeatenText

	text "If there were no"
	line "#mon, we would"
	
	para "not worry about"
	line "who's strong or"
	
	para "weak. But we also"
	line "wouldn't have had"
	
	para "the chance to meet"
	line "and battle like"
	cont "this, I suppose."
	done
	
.SeenText:
	text "Hey there, future"
	line "champion!"
	done

.BeatenText:
	text "When someone wins,"
	line "their opponent has"
	cont "to lose, right?"
	done
	
R23OfficerNeedLegendBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Legend Badge."
	done
	
R23OfficerHaveLegendBadgeText:
	text "Oh, that is the"
	line "Legend Badge!"
	
	para "You may pass."
	done
