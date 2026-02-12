FerryRight_MapScriptHeader:
	def_scene_scripts
	scene_script FerryRightTrigger

	def_callbacks

	def_warp_events
	warp_event  0,  1, CASTELIA_PORT, 3
	warp_event 17,  1, VIRBANK_PORT, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	
FerryRightTrigger:
	sdefer StartFerryRightScript
	end
	
StartFerryRightScript:
	wait 15
	applymovement PLAYER, .Movement1
	wait 25
	applymovement PLAYER, .Movement2
	warpcheck
	end

.Movement1:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

.Movement2:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	