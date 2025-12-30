Route13UndellaTownGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_13, 3
	warp_event  5,  0, ROUTE_13, 4
	warp_event  4,  7, UNDELLA_TOWN, 1
	warp_event  5,  7, UNDELLA_TOWN, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R13UndellaGateSocialiteText, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R13UndellaGateFisherText, -1
	
R13UndellaGateSocialiteText:
	text "Living out here by"
	line "the beach is so"
	
	para "pleasant. The"
	line "Marine Tube has"
	
	para "made it convenient"
	line "to travel quickly"
	cont "to Humilau City."
	done
	
R13UndellaGateFisherText:
	text "I wonder how many"
	line "kinds of #mon"

	para "there are in the"
	line "world."

	para "We now know of"
	line "over 600 #-"
	cont "mon!"
	done
	