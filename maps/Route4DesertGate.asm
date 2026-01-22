Route4DesertGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, DESERT_RESORT, 1
	warp_event  5,  0, DESERT_RESORT, 2
	warp_event  4,  7, ROUTE_4, 2
	warp_event  5,  7, ROUTE_4, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R4DesertGateOfficerText, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, R4DesertGateGrampsText, -1
	
R4DesertGateOfficerText:
	text "The Desert Resort"
	line "keeps growing"
	cont "every year."
	
	para "Make sure you're"
	line "prepared!"
	done
	
R4DesertGateGrampsText:
	text "I used to go and"
	line "visit the Relic"
	cont "Castle in the"
	cont "desert."

	para "But the sand has"
	line "gotten so thick,"

	para "the castle is"
	line "nearly buried."
	done
	