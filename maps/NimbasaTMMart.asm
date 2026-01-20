NimbasaTMMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NIMBASA_CITY, 8
	warp_event  3,  7, NIMBASA_CITY, 8

	def_coord_events

	def_bg_events
	
	def_object_events
	mart_clerk_event  1,  3, SPRITEMOVEDATA_STANDING_RIGHT, PAL_NPC_RED, MARTTYPE_TM, MART_NIMBASA_TM
	object_event  5,  2, SPRITE_ROUGHNECK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaTMMartRoughneckText, -1
	object_event  6,  6, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaTMMartSocialiteText, -1
	
NimbasaTMMartRoughneckText:
	text "Hey. I love strong"
	line "#mon."

	para "I want to use TMs"
	line "to make my #mon"
	cont "even stronger!"
	done

NimbasaTMMartSocialiteText:
	text "There are sure to"
	line "be TMs that are"

	para "just perfect for"
	line "your #mon."
	done
