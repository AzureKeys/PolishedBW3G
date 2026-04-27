Route23East_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route23EastTileScript

	def_warp_events
	warp_event 25, 43, GIANT_CHASM_1F, 4
	warp_event 13, 40, ROUTE_23_GATE, 1
	warp_event 13, 41, ROUTE_23_GATE, 2
	warp_event 18, 40, ROUTE_23_GATE, 3
	warp_event 18, 41, ROUTE_23_GATE, 4
	warp_event 25,  5, ROUTE_23_HOUSE, 1
	warp_event  7, 41, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event 16, 26, 1, Route23EastBridge1OverheadTrigger
	coord_event 16, 27, 1, Route23EastBridge1OverheadTrigger
	coord_event 17, 26, 0, Route23EastBridge1UnderfootTrigger
	coord_event 17, 27, 0, Route23EastBridge1UnderfootTrigger
	coord_event 22, 26, 0, Route23EastBridge1UnderfootTrigger
	coord_event 22, 27, 0, Route23EastBridge1UnderfootTrigger
	coord_event 23, 26, 1, Route23EastBridge1OverheadTrigger
	coord_event 23, 27, 1, Route23EastBridge1OverheadTrigger
	coord_event 13, 12, 1, Route23EastBridge2OverheadTrigger
	coord_event 14, 12, 1, Route23EastBridge2OverheadTrigger
	coord_event 13, 13, 0, Route23EastBridge2UnderfootTrigger
	coord_event 14, 13, 0, Route23EastBridge2UnderfootTrigger
	coord_event 13, 18, 0, Route23EastBridge2UnderfootTrigger
	coord_event 14, 18, 0, Route23EastBridge2UnderfootTrigger
	coord_event 15, 18, 1, Route23EastBridge2OverheadTrigger
	coord_event 15, 19, 1, Route23EastBridge2OverheadTrigger
	coord_event  4, 10, 1, Route23EastBridgesOverheadTrigger
	coord_event  4, 11, 1, Route23EastBridgesOverheadTrigger
	coord_event 23, 41, 1, Route23EastBridgesOverheadTrigger
	coord_event 13, 37, -1, Route23EastSpookyBadgeCheck
	coord_event 14, 30, -1, Route23EastInsectBadgeCheck
	coord_event 15, 30, -1, Route23EastInsectBadgeCheck
	coord_event 24, 25, -1, Route23EastToxicBadgeCheck
	coord_event 25, 25, -1, Route23EastToxicBadgeCheck
	coord_event 23, 20, -1, Route23EastBasicBadgeCheck
	coord_event 13, 11, -1, Route23EastGarnishBadgeCheck
	coord_event 14, 11, -1, Route23EastGarnishBadgeCheck
	coord_event  4, 11, -1, Route23EastJetBadgeCheck

	def_bg_events
	bg_event 25, 31, BGEVENT_ITEM + YELLOW_SHARD, EVENT_ROUTE_23_EAST_YELLOW_SHARD
	bg_event  7, 41, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_23_EAST
	bg_event  8, 41, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_23_EAST
	
	def_object_events
	object_event 12, 37, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastSpookyOfficerScript, -1
	object_event 16, 30, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastInsectOfficerScript, -1
	object_event 23, 25, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastToxicOfficerScript, -1
	object_event 23, 19, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastBasicOfficerScript, -1
	object_event 12, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastGarnishOfficerScript, -1
	object_event  4, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route23EastJetOfficerScript, -1
	object_event 21, 11, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerAceTrainerMR23East, -1
	object_event  8, 18, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_GENERICTRAINER, 1, TrainerAceTrainerFR23East, -1
	itemball_event 19, 35, ULTRA_BALL, 3, EVENT_ROUTE_23_EAST_ULTRA_BALL
	itemball_event  5, 28, HP_UP, 1, EVENT_ROUTE_23_EAST_HP_UP
	itemball_event  9, 23, PP_UP, 1, EVENT_ROUTE_23_EAST_PP_UP
	itemball_event 14, 25, REPEAT_BALL, 3, EVENT_ROUTE_23_EAST_REPEAT_BALL
	itemball_event 16, 46, HEART_SCALE, 1, EVENT_ROUTE_23_EAST_HEART_SCALE
	itemball_event  7, 33, GREEN_SHARD, 1, EVENT_ROUTE_23_EAST_GREEN_SHARD
	
	object_const_def
	const ROUTE23EAST_OFFICER_1
	const ROUTE23EAST_OFFICER_2
	const ROUTE23EAST_OFFICER_3
	const ROUTE23EAST_OFFICER_4
	const ROUTE23EAST_OFFICER_5
	const ROUTE23EAST_OFFICER_6
	
Route23EastTileScript:
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	; bridge 1
	changebridgeblock 12, 14, $92, ROUTE_23_EAST
	changebridgeblock 14, 14, $93, ROUTE_23_EAST
	changebridgeblock 12, 16, $96, ROUTE_23_EAST
	changebridgeblock 14, 16, $97, ROUTE_23_EAST
	changebridgeblock 12, 18, $9a, ROUTE_23_EAST
	changebridgeblock 14, 18, $9b, ROUTE_23_EAST
	; bridge 2
	changebridgeblock 16, 26, $9c, ROUTE_23_EAST
	changebridgeblock 18, 26, $9d, ROUTE_23_EAST
	changebridgeblock 20, 26, $9d, ROUTE_23_EAST
	changebridgeblock 22, 26, $9e, ROUTE_23_EAST
	jmp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 12, 14, $90, ROUTE_23_EAST
	changebridgeblock 14, 14, $91, ROUTE_23_EAST
	changebridgeblock 12, 16, $94, ROUTE_23_EAST
	changebridgeblock 14, 16, $95, ROUTE_23_EAST
	changebridgeblock 12, 18, $98, ROUTE_23_EAST
	changebridgeblock 14, 18, $99, ROUTE_23_EAST
	; bridge 2
	changebridgeblock 16, 26, $a0, ROUTE_23_EAST
	changebridgeblock 18, 26, $a1, ROUTE_23_EAST
	changebridgeblock 20, 26, $a1, ROUTE_23_EAST
	changebridgeblock 22, 26, $a2, ROUTE_23_EAST
	jmp BufferScreen

Route23EastBridge1OverheadTrigger:
	callthisasm
	changebridgeblock 12, 14, $92, ROUTE_23_EAST
	changebridgeblock 14, 14, $93, ROUTE_23_EAST
	changebridgeblock 12, 16, $96, ROUTE_23_EAST
	changebridgeblock 14, 16, $97, ROUTE_23_EAST
	changebridgeblock 12, 18, $9a, ROUTE_23_EAST
	changebridgeblock 14, 18, $9b, ROUTE_23_EAST
	jp Route23East_FinishOverheadBridge
	
Route23EastBridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 12, 14, $90, ROUTE_23_EAST
	changebridgeblock 14, 14, $91, ROUTE_23_EAST
	changebridgeblock 12, 16, $94, ROUTE_23_EAST
	changebridgeblock 14, 16, $95, ROUTE_23_EAST
	changebridgeblock 12, 18, $98, ROUTE_23_EAST
	changebridgeblock 14, 18, $99, ROUTE_23_EAST
	jp Route23East_FinishUnderfootBridge
	
Route23EastBridge2OverheadTrigger:
	callthisasm
	changebridgeblock 16, 26, $9c, ROUTE_23_EAST
	changebridgeblock 18, 26, $9d, ROUTE_23_EAST
	changebridgeblock 20, 26, $9d, ROUTE_23_EAST
	changebridgeblock 22, 26, $9e, ROUTE_23_EAST
	jp Route23East_FinishOverheadBridge
	
Route23EastBridgesOverheadTrigger:
	callthisasm
	; bridge 1
	changebridgeblock 12, 14, $92, ROUTE_23_EAST
	changebridgeblock 14, 14, $93, ROUTE_23_EAST
	changebridgeblock 12, 16, $96, ROUTE_23_EAST
	changebridgeblock 14, 16, $97, ROUTE_23_EAST
	changebridgeblock 12, 18, $9a, ROUTE_23_EAST
	changebridgeblock 14, 18, $9b, ROUTE_23_EAST
	; bridge 2
	changebridgeblock 16, 26, $9c, ROUTE_23_EAST
	changebridgeblock 18, 26, $9d, ROUTE_23_EAST
	changebridgeblock 20, 26, $9d, ROUTE_23_EAST
	changebridgeblock 22, 26, $9e, ROUTE_23_EAST
	; fallthrough
Route23East_FinishOverheadBridge:
	xor a
	jr Route23East_FinishBridge
	
Route23EastBridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 16, 26, $a0, ROUTE_23_EAST
	changebridgeblock 18, 26, $a1, ROUTE_23_EAST
	changebridgeblock 20, 26, $a1, ROUTE_23_EAST
	changebridgeblock 22, 26, $a2, ROUTE_23_EAST
	; fallthrough
Route23East_FinishUnderfootBridge:
	ld a, $1
Route23East_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute23EastSceneID], a
	jmp GenericFinishBridge
	
Route23EastSpookyBadgeCheck:
	checkevent EVENT_SHOWED_SPOOKYBADGE
	iftruefwd .done
	turnobject PLAYER, LEFT
	turnobject ROUTE23EAST_OFFICER_1, RIGHT
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedSpookyBadgeText
	checkflag ENGINE_SPOOKYBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_SPOOKYBADGE
	writetext R23OfficerHaveSpookyBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23EastInsectBadgeCheck:
	checkevent EVENT_SHOWED_INSECTBADGE
	iftruefwd .done
	turnobject PLAYER, RIGHT
	turnobject ROUTE23EAST_OFFICER_2, LEFT
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedInsectBadgeText
	checkflag ENGINE_INSECTBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_INSECTBADGE
	writetext R23OfficerHaveInsectBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23EastToxicBadgeCheck:
	checkevent EVENT_SHOWED_TOXICBADGE
	iftruefwd .done
	turnobject PLAYER, LEFT
	turnobject ROUTE23EAST_OFFICER_3, RIGHT
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedToxicBadgeText
	checkflag ENGINE_TOXICBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_TOXICBADGE
	writetext R23OfficerHaveToxicBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23EastBasicBadgeCheck:
	checkevent EVENT_SHOWED_BASICBADGE
	iftruefwd .done
	turnobject PLAYER, UP
	turnobject ROUTE23EAST_OFFICER_4, DOWN
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedBasicBadgeText
	checkflag ENGINE_BASICBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_BASICBADGE
	writetext R23OfficerHaveBasicBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23EastGarnishBadgeCheck:
	checkevent EVENT_SHOWED_GARNISHBADGE
	iftruefwd .done
	turnobject PLAYER, LEFT
	turnobject ROUTE23EAST_OFFICER_5, RIGHT
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedGarnishBadgeText
	checkflag ENGINE_GARNISHBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_GARNISHBADGE
	writetext R23OfficerHaveGarnishBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepDownMovement
	end
	
Route23EastJetBadgeCheck:
	checkevent EVENT_SHOWED_JETBADGE
	iftruefwd .done
	turnobject PLAYER, UP
	turnobject ROUTE23EAST_OFFICER_6, DOWN
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedJetBadgeText
	checkflag ENGINE_JETBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_JETBADGE
	writetext R23OfficerHaveJetBadgeText
	waitbutton
	closetext
.done
	end
	
.NoBadge
	waitbutton
	closetext
	applymovement PLAYER, R23StepRightMovement
	end
	
Route23EastSpookyOfficerScript:
	checkevent EVENT_SHOWED_SPOOKYBADGE
	iftrue_jumptextfaceplayer R23OfficerHaveSpookyBadgeText
	faceplayer
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedSpookyBadgeText
	checkflag ENGINE_SPOOKYBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_SPOOKYBADGE
	writetext R23OfficerHaveSpookyBadgeText
.NoBadge
	waitbutton
	closetext
	end
	
Route23EastInsectOfficerScript:
	checkevent EVENT_SHOWED_INSECTBADGE
	iftrue_jumptextfaceplayer R23OfficerHaveInsectBadgeText
	faceplayer
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedInsectBadgeText
	checkflag ENGINE_INSECTBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_INSECTBADGE
	writetext R23OfficerHaveInsectBadgeText
.NoBadge
	waitbutton
	closetext
	end
	
Route23EastToxicOfficerScript:
	checkevent EVENT_SHOWED_TOXICBADGE
	iftrue_jumptextfaceplayer R23OfficerHaveToxicBadgeText
	faceplayer
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedToxicBadgeText
	checkflag ENGINE_TOXICBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_TOXICBADGE
	writetext R23OfficerHaveToxicBadgeText
.NoBadge
	waitbutton
	closetext
	end
	
Route23EastBasicOfficerScript:
	jumptextfaceplayer R23OfficerHaveBasicBadgeText
	
Route23EastGarnishOfficerScript:
	jumptextfaceplayer R23OfficerHaveGarnishBadgeText
	
Route23EastJetOfficerScript:
	checkevent EVENT_SHOWED_JETBADGE
	iftrue_jumptextfaceplayer R23OfficerHaveJetBadgeText
	faceplayer
	opentext
	writetext R23OfficerStopText
	promptbutton
	writetext R23OfficerNeedJetBadgeText
	checkflag ENGINE_JETBADGE
	iffalsefwd .NoBadge
	promptbutton
	setevent EVENT_SHOWED_JETBADGE
	writetext R23OfficerHaveJetBadgeText
.NoBadge
	waitbutton
	closetext
	end
	
TrainerAceTrainerMR23East:
	generictrainer ACE_TRAINERM, ACE_TRAINERM_R23_1, EVENT_BEAT_ACE_TRAINERM_R23_1, .SeenText, .BeatenText

	text "To be remembered"
	line "by someone… That"
	
	para "may be what it"
	line "means to be alive."
	done
	
.SeenText:
	text "Our battle will"
	line "surely be worth a"
	
	para "page in the book"
	line "of your journey!"
	done

.BeatenText:
	text "If only I could've"
	line "won, I would have"
	
	para "made an impression"
	line "on you."
	done
	
TrainerAceTrainerFR23East:
	generictrainer ACE_TRAINERF_D, ACE_TRAINERF_R23_1, EVENT_BEAT_ACE_TRAINERF_R23_1, .SeenText, .BeatenText

	text "I can see the plea"
	line "in my #mon's"
	
	para "eyes. They're say-"
	line "ing, Get back up!"
	cont "I'm okay!"
	done
	
.SeenText:
	text "I can see the plea"
	line "in my #mon's"
	
	para "eyes. To fight!"
	line "And to win!"
	done

.BeatenText:
	text "The eyes of your"
	line "#mon are"
	
	para "glimmering with"
	line "strength!"
	done
	
; Shared with Route23East
R23StepDownMovement:
	step_down
	step_end
	
; Shared with Route23Gate
R23StepRightMovement:
	step_right
	step_end
	
; Shared with Route23East and Route23Gate
R23OfficerStopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#mon League."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #mon"
	line "League Gym Badges"
	cont "may enter."
	done
	
R23OfficerNeedSpookyBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Spooky Badge."
	done
	
R23OfficerHaveSpookyBadgeText:
	text "Oh, that is the"
	line "Spooky Badge!"
	
	para "You may pass."
	done
	
R23OfficerNeedInsectBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Insect Badge."
	done
	
R23OfficerHaveInsectBadgeText:
	text "Oh, that is the"
	line "Insect Badge!"
	
	para "You may pass."
	done
	
R23OfficerNeedToxicBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Toxic Badge."
	done
	
R23OfficerHaveToxicBadgeText:
	text "Oh, that is the"
	line "Toxic Badge!"
	
	para "You may pass."
	done
	
R23OfficerNeedBasicBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Basic Badge."
	done
	
R23OfficerHaveBasicBadgeText:
	text "Oh, that is the"
	line "Basic Badge!"
	
	para "You may pass."
	done
	
R23OfficerNeedGarnishBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Garnish Badge."
	done
	
R23OfficerHaveGarnishBadgeText:
	text "Oh, that is the"
	line "Garnish Badge!"
	
	para "You may pass."
	done
	
R23OfficerNeedJetBadgeText:
	text "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "Jet Badge."
	done
	
R23OfficerHaveJetBadgeText:
	text "Oh, that is the"
	line "Jet Badge!"
	
	para "You may pass."
	done
