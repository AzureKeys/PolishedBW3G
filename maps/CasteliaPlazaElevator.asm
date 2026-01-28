CasteliaPlazaElevator_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  3, CASTELIA_PLAZA_LOBBY, -1
	warp_event  2,  3, CASTELIA_PLAZA_LOBBY, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CasteliaPlazaElevatorButton
	
	def_object_events
	
CasteliaPlazaElevatorButton:
	opentext
	elevator .Floors
	closetext
	iffalse DoNothingScript
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	end
	
.Floors:
	db 4 ; floors
	elevfloor FLOOR_1F,  4, CASTELIA_PLAZA_LOBBY
	elevfloor FLOOR_2F,  3, CASTELIA_PLAZA_GAME_CORNER
	elevfloor FLOOR_3F,  3, CASTELIA_PLAZA_PRIZE_ROOM
	elevfloor FLOOR_4F,  2, CASTELIA_PLAZA_RESTAURANT
	db -1 ; end
