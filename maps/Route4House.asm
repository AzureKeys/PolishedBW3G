Route4House_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ROUTE_4, 5
	warp_event  4,  7, ROUTE_4, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route4HouseManScript, -1
	
Route4HouseManScript:
	faceplayer
	checkevent EVENT_GOT_TM_SANDSTORM
	iftrue_jumptext .GotTMText
	opentext
	writethistext
	text "This desert is"
	line "full of raging"
	cont "sand."

	para "A sandstorm can"
	line "even damage #-"
	cont "mon!"
	
	para "If you want to"
	line "make your own"
	
	para "sandstorms, then"
	line "take this!"
	done
	
	promptbutton
	verbosegivetmhm TM_SANDSTORM
	setevent EVENT_GOT_TM_SANDSTORM
	writetext .GotTMText
	waitbutton
	closetext
	end
	
.GotTMText:
	text "Use that move to"
	line "whip up a sand-"
	cont "storm in battle!"
	done
	