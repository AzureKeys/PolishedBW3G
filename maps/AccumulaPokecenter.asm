AccumulaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, ACCUMULA_TOWN, 3
	warp_event  5,  9, ACCUMULA_TOWN, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_DARK_GREEN
	object_event  1,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaPokecenterPharmacistText, -1
	object_event  8,  3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AccumulaPokecenterCooltrainerFText, -1

AccumulaPokecenterPharmacistText:
	text "Team Plasma came"
	line "to town years ago."

	para "They tried to"
	line "convince the"
	cont "townspeople to"

	para "give up their"
	line "#mon!"
	done
	
AccumulaPokecenterCooltrainerFText:
	text "The Gym over in"
	line "Striaton City"
	
	para "reopened just"
	line "recently."
	
	para "Cilan is a master"
	line "of grass #mon."

	para "He'll make you"
	line "pay if you don't"
	cont "watch yourself."
	done
