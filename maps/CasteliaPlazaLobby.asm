CasteliaPlazaLobby_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, CASTELIA_CITY_SOUTH, 13
	warp_event  4,  7, CASTELIA_CITY_SOUTH, 13
	warp_event  7,  0, CASTELIA_PLAZA_GAME_CORNER, 1
	warp_event 10,  0, CASTELIA_PLAZA_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  6,  0, BGEVENT_JUMPTEXT, CasteliaPlazaLobbyDirectoryText
	
	def_object_events
	object_event  3,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaLobbyReceptionist1Text, -1
	object_event  8,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaLobbyReceptionist1Text, -1
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaLobbyTeacherText, -1
	object_event  9,  4, SPRITE_MUSICIAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaLobbyMusicianText, -1
	
CasteliaPlazaLobbyDirectoryText:
	text "Castelia Game"
	line "Plaza."
	
	para "2F - Game Corner"
	line "3F - Prize Room"
	cont "4F - Restaurant"
	done

CasteliaPlazaLobbyReceptionist1Text:
	text "Welcome to"
	line "Castelia Game"
	cont "Plaza!"
	
	para "You can play games"
	line "upstairs and win"
	cont "prizes!"
	done
	
CasteliaPlazaLobbyReceptionist2Text:
	text "If you like to"
	line "travel, make sure"
	
	para "you also visit our"
	line "sister store in"
	cont "Virbank City!"
	done

CasteliaPlazaLobbyTeacherText:
	text "I prefer the slots"
	line "in this Game"
	
	para "Corner over the"
	line "one in Virbank"
	cont "City."
	
	para "I feel like the"
	line "odds are better"
	cont "somehow."
	done

CasteliaPlazaLobbyMusicianText:
	text "I'm raring to go"
	line "play the slots"
	cont "again today!"
	
	para "It's going to be a"
	line "good day, I can"
	cont "feel it!"
	done
