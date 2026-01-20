NimbasaVitaminMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NIMBASA_CITY, 8
	warp_event  3,  7, NIMBASA_CITY, 8

	def_coord_events

	def_bg_events
	
	def_object_events
	mart_clerk_event  1,  3, SPRITEMOVEDATA_STANDING_RIGHT, PAL_NPC_GREEN, MARTTYPE_STANDARD, MART_NIMBASA_VITAMIN
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaVitaminMartGrannyText, -1
	
NimbasaVitaminMartGrannyText:
	text "Vitamins will make"
	line "your #mon"
	cont "stronger."

	para "Protein increases"
	line "Attack, Iron makes"
	cont "Defense increase."
	
	para "Carbos boosts"
	line "Speed, Calcium is"
	
	para "good for Special"
	line "Attack, and Zinc"
	cont "raises Special"
	cont "Defense."
	
	para "I believe you can"
	line "figure out what"
	cont "HP Up does, hehe…"
	done
