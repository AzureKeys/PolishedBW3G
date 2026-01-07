LentimasSpellTagHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, LENTIMAS_TOWN, 3
	warp_event  4,  7, LENTIMAS_TOWN, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LentimasSpellTagHouseScript, -1
	
LentimasSpellTagHouseScript:
	faceplayer
	checkevent EVENT_GOT_SPELL_TAG
	iftrue_jumptext .IntroText
	opentext
	writetext .IntroText
	waitbutton
	writethistext
	text "If you aren't"
	line "afraid, take this…"
	done
	
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalsefwd .done
	setevent EVENT_GOT_SPELL_TAG
.done
	closetext
	end
	
.IntroText:
	text "The spirits are"
	line "strong in this"
	cont "place…"

	para "Beware the old"
	line "house outside of"
	
	para "town, there are"
	line "said to be ghosts"
	cont "that inhabit it…"
	done
