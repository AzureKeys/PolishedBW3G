Route4CasteliaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_4, 3
	warp_event  5,  0, ROUTE_4, 4
	;warp_event  4,  7, ROUTE_4, 2
	;warp_event  5,  7, ROUTE_4, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R4CasteliaGateAideScript, -1
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, R4CasteliaGateOfficerText, -1
	
R4CasteliaGateAideScript:
	faceplayer
	checkevent EVENT_GOT_ITEMFINDER
	iftrue_jumptext .GotItemfinderText
	opentext
	writethistext
	text "Hi, you must be"
	line "<PLAYER>!"
	
	para "I'm one of Prof."
	line "Bel's aides."
	
	para "I came to give"
	line "you this!"
	done
	
	promptbutton
	verbosegivekeyitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
	writetext .GotItemfinderText
	waitbutton
	closetext
	end
	
.GotItemfinderText:
	text "That Item Finder"
	line "is a useful tool."
	
	para "You can use it to"
	line "discover hidden"
	cont "items on the"
	cont "ground!"
	done

R4CasteliaGateOfficerText:
	text "Welcome to"
	line "Castelia City,"
	
	para "the largest city"
	line "in the Unova"
	cont "region!"
	done
	