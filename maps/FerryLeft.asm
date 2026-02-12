FerryLeft_MapScriptHeader:
	def_scene_scripts
	scene_script FerryLeftTrigger

	def_callbacks

	def_warp_events
	warp_event  0,  1, CASTELIA_PORT, 3
	warp_event 17,  1, VIRBANK_PORT, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	
FerryLeftTrigger:
	sdefer StartFerryLeftScript
	end
	
StartFerryLeftScript:
	wait 15
	applymovement PLAYER, .Movement1
	wait 25
	applymovement PLAYER, .Movement2
	warpcheck
	end

.Movement1:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

.Movement2:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	