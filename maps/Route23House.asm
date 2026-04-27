Route23House_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_23_EAST, 6
	warp_event  3,  7, ROUTE_23_EAST, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R23HouseOldManScript, -1
	
R23HouseOldManScript:
	faceplayer
	checkevent EVENT_GOT_CHOICE_SPECS
	iftrue_jumptext .GotSpecsText
	opentext
	writethistext
	text "Hm, you must be"
	line "an accomplished"

	para "trainer to have"
	line "made it all the"
	cont "way out here."
	
	para "Are you planning"
	line "to climb Victory"
	cont "Road?"
	
	para "Then you should"
	line "take these with"
	cont "you."
	done
	promptbutton
	verbosegiveitem CHOICE_SPECS
	iffalsefwd .done
	setevent EVENT_GOT_CHOICE_SPECS
	writetext .GotSpecsText
	waitbutton
.done
	closetext
	end
	
.GotSpecsText:
	text "Those specs will"
	line "greatly boost the"
	
	para "wearer's Sp.Atk,"
	line "but restrict its"
	
	para "move choice. Use"
	line "them if they"
	cont "appeal to you."
	done
