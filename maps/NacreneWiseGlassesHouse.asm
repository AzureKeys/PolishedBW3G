NacreneWiseGlassesHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, NACRENE_CITY, 3
	warp_event  4,  7, NACRENE_CITY, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_MUSICIAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NacreneCharcoalGuyScript, -1
	
NacreneWiseGlassesGuyScript:
	faceplayer
	checkevent EVENT_GOT_CHARCOAL
	iftrue_jumptext .GotCharcoalText
	opentext
	writethistext
	text "Hi, did you come"
	line "to see my art?"

	para "Nacrene City has a"
	line "lively scene for"
	cont "local artists."
	
	para "Here, you should"
	line "try too, take"
	cont "this!"
	done
	promptbutton
	verbosegiveitem CHARCOAL
	iffalsefwd .done
	setevent EVENT_GOT_CHARCOAL
	writetext .GotCharcoalText
	waitbutton
.done
	closetext
	end
	
.GotCharcoalText:
	text "Fire type #mon"
	line "love Charcoal too."
	
	para "Give it to one to"
	line "hold, and you'll"
	cont "see, it'll become"
	cont "stronger!"
	done
