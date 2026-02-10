VirbankMuscleBandHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VIRBANK_CITY, 5
	warp_event  3,  7, VIRBANK_CITY, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, VirbankMuscleBandGuyScript, -1
	
VirbankMuscleBandGuyScript:
	faceplayer
	checkevent EVENT_GOT_POISON_BARB
	iftrue_jumptext .GotBarbText
	opentext
	writethistext
	text "What's the coolest"
	line "type of #mon?"
	
	para "Poison #mon!"
	
	para "Their sick powers"
	line "drain the life"
	cont "from their"
	cont "enemies!"
	
	para "Use this to power"
	line "up your Poison"
	cont "#mon!"
	done
	promptbutton
	verbosegiveitem POISON_BARB
	iffalsefwd .done
	setevent EVENT_GOT_POISON_BARB
	writetext .GotBarbText
	waitbutton
.done
	closetext
	end
	
.GotBarbText:
	text "Give that Barb to"
	line "a #mon to make"
	
	para "its Poison attacks"
	line "more powerful!"
	done
