MistraltonSharpBeakHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, MISTRALTON_CITY, 3
	warp_event  3,  7, MISTRALTON_CITY, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, MistraltonSharpBeakGuyScript, -1
	
MistraltonSharpBeakGuyScript:
	faceplayer
	checkevent EVENT_GOT_SHARP_BEAK
	iftrue_jumptext .GotBeakText
	opentext
	writethistext
	text "Flying type #-"
	line "mon are the"
	cont "coolest!"
	
	para "You should train"
	line "Flying type #-"
	cont "mon too!"
	
	para "Here, I'll show"
	line "you how cool they"
	cont "are!"
	done
	promptbutton
	verbosegiveitem SHARP_BEAK
	iffalsefwd .done
	setevent EVENT_GOT_SHARP_BEAK
	writetext .GotBeakText
	waitbutton
.done
	closetext
	end
	
.GotBeakText:
	text "That will make"
	line "Flying attacks"
	cont "even stronger!"
	done
