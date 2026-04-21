IcirrusBoutique_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ICIRRUS_CITY_NORTH, 1
	warp_event  3,  7, ICIRRUS_CITY_NORTH, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	mart_clerk_event  1,  3, SPRITEMOVEDATA_STANDING_RIGHT, PAL_NPC_BLUE, MARTTYPE_BOUTIQUE, MART_ICIRRUS_BOUTIQUE
	object_event  7,  6, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusBoutiqueCooltrainerFText, -1
	object_event  5,  2, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusBoutiqueLadyText, -1
	
IcirrusBoutiqueCooltrainerFText:
	text "The Boutique sells"
	line "fashion for #-"
	cont "mon."

	para "Some of the pieces"
	line "have useful"
	cont "effects in battle!"
	done
	
IcirrusBoutiqueLadyText:
	text "I just love seeing"
	line "the selections!"

	para "Oh? You're not"
	line "interested in"
	cont "fashion?"
	
	para "You should pick"
	line "out some cute"
	
	para "things for your"
	line "#mon instead!"
	done
