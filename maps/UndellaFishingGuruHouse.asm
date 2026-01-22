UndellaFishingGuruHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, UNDELLA_TOWN, 3
	warp_event  3,  7, UNDELLA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, UndellaFishingGuruScript, -1
	
UndellaFishingGuruScript:
	checkevent EVENT_GOT_OLD_ROD
	iftrue_jumptextfaceplayer .DoneText
	faceplayer
	opentext
	writetext .IntroText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	verbosegivekeyitem OLD_ROD
	writetext .AfterText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end
	
.IntroText:
	text "This town is a"
	line "great fishing"
	cont "spot."

	para "How about"
	line "you?"

	para "Would you like one"
	line "of my rods?"
	done
	
.YesText:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done
	
.NoText:
	text "Oh. That's rather"
	line "disappointing…"
	done
	
.AfterText:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your rod."
	done
	
.DoneText:
	text "Yo, kid. How are"
	line "they biting?"
	done
	