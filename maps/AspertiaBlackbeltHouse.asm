AspertiaBlackbeltHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ASPERTIA_CITY, 4
	warp_event  3,  7, ASPERTIA_CITY, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AspertiaBlackBeltScript, -1
	
AspertiaBlackBeltScript:
	faceplayer
	checkevent EVENT_GOT_FOCUS_BAND
	iftrue_jumptext .GotBandText
	opentext
	writethistext
	text "Hm? Are you"
	line "training to become"
	cont "a master?"

	para "You must steel"
	line "your resolve and"
	cont "clear your focus!"
	
	para "Here, take this!"
	done
	promptbutton
	verbosegiveitem FOCUS_BAND
	iffalsefwd .done
	setevent EVENT_GOT_FOCUS_BAND
	writetext .GotBandText
	waitbutton
.done
	closetext
	end
	
.GotBandText:
	text "If your #mon"
	line "wears that band,"
	
	para "it may give it the"
	line "focus to survive"

	para "an attack that"
	line "would otherwise"
	cont "take it out."
	
	para "Wear it with"
	line "pride!"
	done
