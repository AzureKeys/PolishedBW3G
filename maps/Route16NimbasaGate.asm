Route16NimbasaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  4, ROUTE_16, 3
	warp_event  9,  5, ROUTE_16, 4
	warp_event  0,  4, NIMBASA_CITY, 1
	warp_event  0,  5, NIMBASA_CITY, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R16NimbasaGateOfficerText, -1
	object_event  1,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, R16NimbasaGateCooltrainerFText, -1
	
R16NimbasaGateOfficerText:
	text "Nimbasa City is"
	line "a bustling burg!"
	
	para "Stay out of"
	line "trouble, now!"
	done
	
R16NimbasaGateCooltrainerFText:
	text "There are a lot"
	line "of shops in"
	cont "Nimbasa City!"
	done
	