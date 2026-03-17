DriftveilStoneEmporium_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, DRIFTVEIL_CITY, 10
	warp_event  5, 11, DRIFTVEIL_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_UP, DriftveilStoneEmporiumElevator
	bg_event  2,  7, BGEVENT_JUMPTEXT, DriftveilStoneEmporiumSignText
	bg_event  7,  7, BGEVENT_JUMPTEXT, DriftveilStoneEmporiumSignText
	
	def_object_events
	object_event  2, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilStoneEmporiumReceptionistText, -1

DriftveilStoneEmporiumElevator:
	jumpthistext
	text "Entry to the mines"
	line "is restricted to"
	cont "staff. -Clay"
	done
	
DriftveilStoneEmporiumReceptionistText:
	text "Welcome to the"
	line "Driftveil Stone"
	cont "Emporium!"
	
	para "People come from"
	line "all over to seek"
	cont "out rare stones."
	done
	
DriftveilStoneEmporiumSignText:
	text "Driftveil Stone"
	line "Emporium"
	
	para "Proprietor: Clay"
	done
