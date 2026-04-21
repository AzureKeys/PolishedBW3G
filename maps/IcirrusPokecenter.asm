IcirrusPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, ICIRRUS_CITY_SOUTH, 1
	warp_event  5,  9, ICIRRUS_CITY_SOUTH, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  7, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusPokecenterVeteranMText, -1
	object_event  1,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusPokecenterTwinText, -1
	object_event  8,  4, SPRITE_RANGER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusPokecenterRangerMText, -1
	
IcirrusPokecenterVeteranMText:
	text "The tower north of"
	line "town is called"
	
	para "Dragonspiral"
	line "Tower."

	para "A mystical power"
	line "is said to rest at"
	cont "that place."
	done
	
IcirrusPokecenterTwinText:
	text "I went to the"
	line "#mon Fan Club,"

	para "but they said I"
	line "wasn't good enough"
	cont "at battling #-"
	cont "mon."

	para "Those guys are"
	line "so picky!"
	done
	
IcirrusPokecenterRangerMText:
	text "You can't buy Max"
	line "Revive, but it"

	para "fully restores a"
	line "fainted #mon."

	para "Beware--it won't"
	line "restore PP, the"

	para "Power Points"
	line "needed for moves."
	done
