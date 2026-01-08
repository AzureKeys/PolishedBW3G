LentimasLostlornGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, LENTIMAS_OUTSKIRT, 3
	warp_event  5,  0, LENTIMAS_OUTSKIRT, 4
	warp_event  4, 15, LOSTLORN_FOREST, 1
	warp_event  5, 15, LOSTLORN_FOREST, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  9,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateSocialiteScript, -1
	object_event  3,  9, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LentimasLostlornGateLassText, -1
	pokemon_event  9,  5, YANMA, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_RED, LentimasLostlornGateYanmaText, -1

LentimasLostlornGateSocialiteScript:
	faceplayer
	checkevent EVENT_GOT_CLEANSE_TAG
	iftrue_jumptext .GotTagText
	opentext
	writethistext
	text "Oh, honey. You're"
	line "going into the"
	cont "woods?"

	para "It must be scary"
	line "when wild #mon"
	cont "are always around."
	
	para "Here, have this."
	done
	
	promptbutton
	verbosegiveitem CLEANSE_TAG
	iffalsefwd .done
	setevent EVENT_GOT_CLEANSE_TAG
	writetext .GotTagText
	waitbutton
.done
	closetext
	end
	
.GotTagText:
	text "Use that tag and"
	line "you'll be"
	
	para "protected from"
	line "wild #mon"
	cont "attacks."
	done
	
LentimasLostlornGateLassText:
	text "Be careful, this"
	line "forest is dark."

	para "Lots of people"
	line "have gotten lost"
	cont "in there."

	para "I think there must"
	line "be some #mon"
	
	para "with tricky powers"
	line "living in there."
	done
	
LentimasLostlornGateYanmaText:
	text "Yaan!"
	done
	