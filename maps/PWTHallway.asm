PWTHallway_MapScriptHeader:
	def_scene_scripts
	scene_script PWTHallwayTrigger0
	scene_script PWTHallwayTrigger1

	def_callbacks

	def_warp_events
	warp_event  9,  5, PWT_INSIDE, 3
	warp_event 10,  5, PWT_INSIDE, 3
	warp_event  4,  0, PWT_QUALIFIER_ROOM, 1
	warp_event 14,  0, PWT_BACK_ROOM, 1

	def_coord_events
	coord_event  4,  1, 0, PWTHallway_EnterFromLeftScript
	coord_event 14,  1, 0, PWTHallway_EnterFromRightScript

	def_bg_events
	
	def_object_events
	
PWTHallwayTrigger1:
	sdefer PWTHallwayEnterFromFrontScript
PWTHallwayTrigger0:
	end
	
PWTHallwayEnterFromFrontScript:
	setscene 0
	checkevent EVENT_FINISHED_PWT_QUALIFIER
	iftruefwd .GoMainRoom
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_M ; disappear trainer
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_F ; disappear trainer
	applymovement PLAYER, .LeftMovement
	warpcheck
	end
	
.GoMainRoom
	setmapscene PWT_BATTLE_ROOM, 0
	applymovement PLAYER, .RightMovement
	warpcheck
	end
	
.LeftMovement:
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_end
	
.RightMovement:
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_end
	
PWTHallway_EnterFromLeftScript:
	applymovement PLAYER, .Movement
	warpcheck
	end
.Movement:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_end
	
PWTHallway_EnterFromRightScript:
	applymovement PLAYER, .Movement
	warpcheck
	end
.Movement:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_down
	step_down
	step_end
