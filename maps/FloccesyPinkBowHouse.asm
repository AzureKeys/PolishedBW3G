FloccesyPinkBowHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, FLOCCESY_TOWN, 2
	warp_event  3,  7, FLOCCESY_TOWN, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, FloccesyPinkBowGirlScript, -1
	
FloccesyPinkBowGirlScript:
	faceplayer
	checkevent EVENT_GOT_PINK_BOW
	iftrue_jumptext .GotBowText
	opentext
	writethistext
	text "I love Fairy type"
	line "#mon! They're"
	cont "so cute!"
	
	para "Do you like Fairy"
	line "type #mon too?"
	
	para "You should give"
	line "them this!"
	done
	promptbutton
	verbosegiveitem PINK_BOW
	iffalsefwd .done
	setevent EVENT_GOT_PINK_BOW
	writetext .GotBowText
	waitbutton
.done
	closetext
	end
	
.GotBowText:
	text "This pretty bow"
	line "makes Fairy moves"
	cont "stronger!"
	
	para "Give it to your"
	line "favorite Fairy"
	cont "#mon!"
	done
