DriftveilEverstoneHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, DRIFTVEIL_CITY, 6
	warp_event  3,  7, DRIFTVEIL_CITY, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, DriftveilEverstoneHouseScript, -1
	
DriftveilEverstoneHouseScript:
	faceplayer
	checkevent EVENT_GOT_EVERSTONE
	iftrue_jumptext .GotStoneText
	opentext
	writethistext
	text "Driftveil City"
	line "is famous for our"
	cont "mines!"

	para "We have all sorts"
	line "of rare stones."
	
	para "Here, you can"
	line "have a sample!"
	done
	promptbutton
	verbosegiveitem EVERSTONE
	iffalsefwd .done
	setevent EVENT_GOT_EVERSTONE
	writetext .GotStoneText
	waitbutton
.done
	closetext
	end
	
.GotStoneText:
	text "Give that stone"
	line "to a #mon and"
	cont "it will never"
	cont "evolve."

	para "How strange is"
	line "that?"
	done
