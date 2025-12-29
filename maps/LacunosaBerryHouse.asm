LacunosaBerryHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LACUNOSA_TOWN, 3
	warp_event  3,  7, LACUNOSA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LacunosaBerryHousePechaGirlScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaBerryHouseCheriGirlScript, -1
	
LacunosaBerryHousePechaGirlScript:
	checkevent EVENT_GOT_LACUNOSA_PECHA_BERRY
	iftrue_jumptextfaceplayer LacunosaBerryHouseGotBerryText
	faceplayer
	opentext
	writetext LacunosaBerryHouseGiveBerryText
	promptbutton
	verbosegiveitem PECHA_BERRY, 3
	setevent EVENT_GOT_LACUNOSA_PECHA_BERRY
	writetext LacunosaBerryHouseGotBerryText
	waitbutton
	closetext
	end
	
LacunosaBerryHouseCheriGirlScript:
	checkevent EVENT_GOT_LACUNOSA_CHERI_BERRY
	iftrue_jumptextfaceplayer LacunosaBerryHouseGotBerryText
	faceplayer
	opentext
	writetext LacunosaBerryHouseGiveBerryText
	promptbutton
	verbosegiveitem CHERI_BERRY, 3
	setevent EVENT_GOT_LACUNOSA_CHERI_BERRY
	writetext LacunosaBerryHouseGotBerryText
	waitbutton
	closetext
	end
	
LacunosaBerryHouseGiveBerryText:
	text "You know, #mon"
	line "eat Berries."

	para "Different Berries"
	line "help #mon in"
	cont "different ways."

	para "Here. I'll share"
	line "some with you!"
	done
	
LacunosaBerryHouseGotBerryText:
	text "Check trees for"
	line "Berries. They just"
	cont "drop right off."
	done
	