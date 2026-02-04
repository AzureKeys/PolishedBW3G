AspertiaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, ASPERTIA_CITY, 2
	warp_event  5,  9, ASPERTIA_CITY, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE_D
	object_event  8,  2, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaPokecenterRangerFText, -1
	object_event  1,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaPokecenterTeacherText, -1
	object_event  0,  4, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_COMMAND, jumptextfaceplayer, AspertiaPokecenterCooltrainerFText, -1
	
AspertiaPokecenterRangerFText:
	text "Some #mon will"
	line "evolve if they"
	cont "know a particular"
	cont "move."

	para "My Yanma learned"
	line "the move Ancient"
	cont "Power, and all of"
	
	para "a sudden, it"
	line "evolved!"
	done

AspertiaPokecenterTeacherText:
	text "There's a #mon"
	line "called Eevee that"

	para "can evolve into"
	line "many different"
	cont "#mon!"
	done

AspertiaPokecenterCooltrainerFText:
	text "Do any of your"
	line "#mon know the"

	para "move for carrying"
	line "people on water?"
	
	para "It's very useful!"
	done
