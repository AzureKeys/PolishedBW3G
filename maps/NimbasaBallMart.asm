NimbasaBallMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NIMBASA_CITY, 8
	warp_event  3,  7, NIMBASA_CITY, 8

	def_coord_events

	def_bg_events
	
	def_object_events
	mart_clerk_event  1,  3, SPRITEMOVEDATA_STANDING_RIGHT, PAL_NPC_BLUE_D, MARTTYPE_STANDARD, MART_NIMBASA_BALL
	object_event  5,  2, SPRITE_RANGER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaBallMartRangerMText, -1
	object_event  6,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaBallMartSchoolgirlText, -1
	
NimbasaBallMartRangerMText:
	text "Different kinds of"
	line "#Balls are good"

	para "for different"
	line "situations. Use"
	
	para "the best Ball for"
	line "the job!"
	done

NimbasaBallMartSchoolgirlText:
	text "Net Balls are good"
	line "for catching bug"
	cont "and water type"
	cont "#mon."
	done
