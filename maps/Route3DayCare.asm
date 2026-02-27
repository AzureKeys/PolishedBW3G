Route3DayCare_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCallback

	def_warp_events
	warp_event  2,  7, ROUTE_3, 3
	warp_event  3,  7, ROUTE_3, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, DayCareManInsideScript, EVENT_INSIDE_DAY_CARE_MAN
	object_event  3,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
	
DayCareEggCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftruefwd .DayCareManOutside
	clearevent EVENT_INSIDE_DAY_CARE_MAN
	setevent EVENT_ROUTE_3_DAY_CARE_MAN
	endcallback
	
.DayCareManOutside
	clearevent EVENT_ROUTE_3_DAY_CARE_MAN
	setevent EVENT_INSIDE_DAY_CARE_MAN
	endcallback
	
DayCareManInsideScript:
	faceplayer
	opentext
	special Special_DayCareMan
	waitendtext
	
DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue_jumpopenedtext .ManHasEggText
	special Special_DayCareLady
	waitendtext
	
.ManHasEggText:
	text "Gramps was waiting"
	line "for you outside."
	done
