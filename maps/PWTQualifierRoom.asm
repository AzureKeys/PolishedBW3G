PWTQualifierRoom_MapScriptHeader:
	def_scene_scripts
	scene_script PWTQualifierRoomTrigger0
	scene_script PWTQualifierRoomTrigger1

	def_callbacks

	def_warp_events
	warp_event  0,  5, PWT_HALLWAY, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 14,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_M
	object_event 14,  5, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_F
	object_event  9,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, -1
	
	object_const_def
	const PWTQUALIFIERROOM_ACE_TRAINER_M
	const PWTQUALIFIERROOM_ACE_TRAINER_F
	const PWTQUALIFIERROOM_RECEPTIONIST
	
PWTQualifierRoomTrigger0:
	sdefer PWTQualifierRoomEnterScript
PWTQualifierRoomTrigger1:
	end
	
PWTQualifierRoomEnterScript:
	applymovement PLAYER, .PlayerEnterMovement
	pause 15
	playsound SFX_ENTER_DOOR
	appear PWTQUALIFIERROOM_ACE_TRAINER_M
	waitsfx
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_M, .EnemyEnterMovement
	showtext .ReceptionistText1
	applymovement PLAYER, .PlayerStepForwardMovement
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_M, .EnemyStepForwardMovement
	showtext .SeenText1
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_M ; disappear in case we lose
	winlosstext .BeatenText1, 0
	loadtrainer ACE_TRAINERM, ACE_TRAINERM_PWT
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, .PlayerStepBackMovement
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_M, .EnemyExitMovement
	disappear PWTQUALIFIERROOM_ACE_TRAINER_M
	playsound SFX_ENTER_DOOR
	waitsfx
	showtext .AfterText1
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, .ReceptionistApproachMovement
	playsound SFX_FULL_HEAL
	waitsfx
	special HealParty
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, .ReceptionistResetMovement
	playsound SFX_ENTER_DOOR
	appear PWTQUALIFIERROOM_ACE_TRAINER_F
	waitsfx
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_F, .EnemyEnterMovement
	showtext .ReceptionistText2
	applymovement PLAYER, .PlayerStepForwardMovement
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_F, .EnemyStepForwardMovement
	showtext .SeenText2
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_F ; disappear in case we lose
	winlosstext .BeatenText2, 0
	loadtrainer ACE_TRAINERF_D, ACE_TRAINERF_PWT
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, .PlayerStepBackMovement
	applymovement PWTQUALIFIERROOM_ACE_TRAINER_F, .EnemyExitMovement
	disappear PWTQUALIFIERROOM_ACE_TRAINER_F
	playsound SFX_ENTER_DOOR
	waitsfx
	showtext .AfterText2
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, .ReceptionistApproachMovement
	playsound SFX_FULL_HEAL
	waitsfx
	special HealParty
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, .ReceptionistResetMovement
	showtext .FinishedText
	setevent EVENT_FINISHED_PWT_QUALIFIER
	setscene 1
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
	
.EnemyEnterMovement:
	step_left
	step_left
	step_left
	step_end
	
.EnemyStepForwardMovement:
	step_left
	step_end
	
.EnemyExitMovement:
	step_right
	step_right
	step_right
	step_right
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
	
.ReceptionistText1:
	text "This qualifier"
	line "will determine the"
	
	para "contestants for"
	line "the #mon World"
	cont "Tournament."
	
	para "Applicants, please"
	line "begin your battle."
	done
	
.ReceptionistText2:
	text "This match will"
	line "determine which"
	
	para "contestant will"
	line "qualify for the"
	
	para "#mon World"
	line "Tournament."
	
	para "Applicants, please"
	line "begin your battle."
	done
	
.SeenText1:
	text "The #mon World"
	line "Tournament brings"
	
	para "great trainers"
	line "from all over!"
	
	para "There's no way I'm"
	line "missing out!"
	done
	
.BeatenText1:
	text "Not good enough!"
	done
	
.AfterText1:
	text "Congratulations,"
	line "I'll now heal your"
	
	para "#mon, then the"
	line "next applicant"
	cont "will enter."
	done
	
.SeenText2:
	text "You're the last"
	line "one I need to beat"
	
	para "to make it into"
	line "the tournament."
	
	para "I'm taking you"
	line "down!"
	done
	
.BeatenText2:
	text "It… It can't be!"
	done
	
.AfterText2:
	text "Congratulations!"
	line "You've qualified"
	
	para "for the World"
	line "Tournament!"
	
	para "First, I'll heal"
	line "your #mon."
	done

.FinishedText:
	text "Please enter the"
	line "room down the hall"
	
	para "and join the"
	line "others who've"
	cont "qualified."
	done
