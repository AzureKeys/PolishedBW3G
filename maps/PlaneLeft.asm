PlaneLeft_MapScriptHeader:
	def_scene_scripts
	scene_script PlaneLeftTrigger

	def_callbacks

	def_warp_events
	warp_event  4,  5, LENTIMAS_AIRPORT, 3
	warp_event 20,  5, MISTRALTON_AIRPORT, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	
PlaneLeftTrigger:
	sdefer StartPlaneLeftScript
	end
	
StartPlaneLeftScript:
	wait 10
	applymovement PLAYER, .Movement
	wait 25
	applymovement PLAYER, .Movement
	warpcheck
	end

.Movement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	