UndellaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, UNDELLA_TOWN, 2
	warp_event  5,  9, UNDELLA_TOWN, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE_D
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndellaPokecenterGentlemanText, -1
	object_event  1,  7, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndellaPokecenterGameboyKidText, -1
	
UndellaPokecenterGentlemanText:
	text "Do you know how"
	line "to fish?"

	para "There's a master"
	line "who lives in town."

	para "I'm sure he could"
	line "teach you."
	done

UndellaPokecenterGameboyKidText:
	text "Amanita's PC can"
	line "store up to 20"
	cont "#mon per BOX."
	done
