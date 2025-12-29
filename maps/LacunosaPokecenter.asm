LacunosaPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, LACUNOSA_TOWN, 1
	warp_event  5,  9, LACUNOSA_TOWN, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaPokecenterGameboyKidText, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_PURPLE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaPokecenterGentlemanText, -1
	object_event  1,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LacunosaPokecenterYoungsterText, -1
	
LacunosaPokecenterGameboyKidText:
	text "A lady named"
	line "Amanita made the"
	
	para "#mon PC storage"
	line "system."
	done

LacunosaPokecenterGentlemanText:
	text "It was several"
	line "years ago now."

	para "Team Plasma was up"
	line "to no good with"
	cont "#mon."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	
	para "Wait, that's twice"
	line "now it's happened."
	done


LacunosaPokecenterYoungsterText:
	text "Here is a little"
	line "advice! Keep a lot"

	para "of Potions! Keep a"
	line "lot of #Balls"
	cont "too!"
	done
