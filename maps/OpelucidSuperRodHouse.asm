OpelucidSuperRodHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OPELUCID_CITY, 6
	warp_event  3,  7, OPELUCID_CITY, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OpelucidFishingGuruScript, -1
	
OpelucidFishingGuruScript:
	faceplayer
	checkevent EVENT_GOT_SUPER_ROD
	iftrue_jumptext .GotRodText
	opentext
	writethistext
	text "Fishing is great,"
	line "but to catch the"

	para "best fish, you"
	line "need the best rod."

	para "Do you have what"
	line "it takes to be a"
	cont "pro angler?"
	done
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writethistext	
	text "Yeah, that's the"
	line "spirit!"

	para "Now you can be a"
	line "pro too!"
	done
	promptbutton
	verbosegivekeyitem SUPER_ROD
	setevent EVENT_GOT_SUPER_ROD
	jumpthisopenedtext
.GotRodText:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your Rod."
	done
	
.DeclinedText:
	text "Oh. That's rather"
	line "disappointing…"
	done
