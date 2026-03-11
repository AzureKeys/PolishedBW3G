PWTBattleRoom_MapScriptHeader:
	def_scene_scripts
	scene_script PWTBattleRoomTrigger0
	scene_script PWTBattleRoomTrigger1

	def_callbacks

	def_warp_events
	warp_event  0,  5, PWT_BACK_ROOM, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  9,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 11,  5, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_BIANCA
	object_event 11,  5, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_INFER
	object_event 11,  5, SPRITE_VIO, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_VIO
	
	object_const_def
	const PWTBATTLEROOM_RECEPTIONIST
	const PWTBATTLEROOM_BIANCA
	const PWTBATTLEROOM_INFER
	const PWTBATTLEROOM_VIO
	
PWTBattleRoomTrigger0:
	sdefer PWTBattleRoomEnterScript
	setscene 1
PWTBattleRoomTrigger1:
	end
	
PWTBattleRoomEnterScript:
	applymovement PLAYER, .PlayerEnterMovement
	checkevent EVENT_PWT_BEAT_INFER
	iftruefwd .FinalRound
	checkevent EVENT_PWT_BEAT_BIANCA
	iftruefwd .SecondRound
; First round
	showtext .FirstRoundText
	applymovement PLAYER, .PlayerStepForwardMovement
	applymovement PWTBATTLEROOM_BIANCA, .EnemyStepForwardMovement
	showtext .BiancaSeenText
	winlosstext .BiancaBeatenText, 0
	loadtrainer BIANCA, 1
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, .PlayerStepBackMovement
	applymovement PWTBATTLEROOM_BIANCA, .EnemyStepBackMovement
	showtext .BiancaAfterText
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistApproachMovement
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistResetMovement
	showtext .LeaveText
	setevent EVENT_PWT_BEAT_BIANCA
	setmapscene PWT_BACK_ROOM, 1
	applymovement PLAYER, .PlayerExitMovement
	warpcheck
	end
	
.SecondRound:
	showtext .SecondRoundText
	applymovement PLAYER, .PlayerStepForwardMovement
	applymovement PWTBATTLEROOM_INFER, .EnemyStepForwardMovement
	showtext .InferSeenText
	winlosstext .InferBeatenText, 0
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
;Tepig
	loadtrainer INFER1, INFER5_OSHAWOTT
	sjumpfwd .StartInferBattle
.Oshawott
	loadtrainer INFER1, INFER5_SNIVY
	sjumpfwd .StartInferBattle
.Snivy
	loadtrainer INFER1, INFER5_TEPIG
	; fallthrough
.StartInferBattle
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, .PlayerStepBackMovement
	applymovement PWTBATTLEROOM_INFER, .EnemyStepBackMovement
	showtext .InferAfterText
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistApproachMovement
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistResetMovement
	showtext .LeaveText
	setevent EVENT_PWT_BEAT_INFER
	setmapscene PWT_BACK_ROOM, 2
	applymovement PLAYER, .PlayerExitMovement
	warpcheck
	end
	
.FinalRound:
	showtext .FinalRoundText
	applymovement PLAYER, .PlayerStepForwardMovement
	applymovement PWTBATTLEROOM_VIO, .EnemyStepForwardMovement
	showtext .VioSeenText
	winlosstext .VioBeatenText, 0
	loadtrainer MYSTERYMAN, 1
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, .PlayerStepBackMovement
	applymovement PWTBATTLEROOM_VIO, .EnemyStepBackMovement
	showtext .VioAfterText
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistApproachMovement
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, .ReceptionistResetMovement
	showtext .FinalLeaveText
	setmapscene PWT_BACK_ROOM, 3
	applymovement PLAYER, .PlayerExitMovement
	warpcheck
	end
	
.PlayerEnterMovement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
.PlayerStepForwardMovement:
	step_right
	step_end
	
.PlayerStepBackMovement:
	step_left
	turn_head_right
	step_end
	
.PlayerExitMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
.EnemyStepForwardMovement:
	step_left
	step_end
	
.EnemyStepBackMovement:
	step_right
	turn_head_left
	step_end
	
.ReceptionistApproachMovement:
	step_down
	step_left
	step_down
	step_end

.ReceptionistResetMovement:
	step_up
	step_right
	step_up
	turn_head_down
	step_end
	
.FirstRoundText:
	text "The winner of this"
	line "match will move on"
	cont "to the second"
	cont "round."
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
.BiancaSeenText:
	text "Bianca: Now I'll"
	line "get to see first"
	
	para "hand how strong of"
	line "a trainer you've"
	cont "become, <PLAYER>!"
	done
	
.BiancaBeatenText:
	text "Oh! You're strong!"
	done

.BiancaAfterText:
	text "Bianca: Wow, you"
	line "are good! Marlon"
	
	para "sure was right to"
	line "pick you to be a"
	cont "#mon trainer!"
	
	para "Receptionist:"
	line "Congratulations,"
	cont "<PLAYER>."
	
	para "Allow me to heal"
	line "your #mon."
	done
	
.LeaveText:
	text "Now then, please"
	line "exit back into the"
	
	para "competitors' room"
	line "until your next"
	cont "match."
	done
	
.SecondRoundText:
	text "The winner of this"
	line "match will move on"
	cont "to the final"
	cont "round."
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
.InferSeenText:
	text "Infer: I've been"
	line "waiting for a"
	cont "rematch with you."
	
	para "This time, I'll"
	line "show you how"
	cont "strong I've"
	cont "become! Come on!"
	done
	
.InferBeatenText:
	text "No! How is it"
	line "still not enough!"
	done
	
.InferAfterText:
	text "Infer: Rrgh… This"
	line "is a fluke!"
	
	para "You may have won"
	line "today, but I will"
	cont "defeat you!"
	
	para "Receptionist:"
	line "Congratulations,"
	cont "<PLAYER>."
	
	para "Allow me to heal"
	line "your #mon."
	done

.FinalRoundText:
	text "Congratulations to"
	line "both of you for"
	cont "making it to the"
	cont "final round!"
	
	para "The winner of this"
	line "match will be the"
	
	para "winner of the"
	line "#mon World"
	cont "Tournament!"
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
.VioSeenText:
	text "Vio: … … … …"
	done
	
.VioBeatenText:
	text "…!"
	done
	
.VioAfterText:
	text "Congratulations,"
	line "<PLAYER>!"
	
	para "You've won the"
	line "#mon World"
	cont "Tournament!"
	
	para "Allow me to heal"
	line "your #mon."
	done
	
.FinalLeaveText:
	text "Now then, please"
	line "exit back into the"
	
	para "competitors' room"
	line "to receive your"
	cont "prize!"
	done
