FloccesyFairyFeatherHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, FLOCCESY_TOWN, 2
	warp_event  3,  7, FLOCCESY_TOWN, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, FloccesyFairyFeatherGirlScript, -1
	
FloccesyFairyFeatherGirlScript:
	faceplayer
	checkevent EVENT_GOT_FAIRYFEATHER
	iftrue_jumptext .GotFeatherText
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
	verbosegiveitem FAIRYFEATHER
	iffalsefwd .done
	setevent EVENT_GOT_FAIRYFEATHER
	writetext .GotFeatherText
	waitbutton
.done
	closetext
	end
	
.GotFeatherText:
	text "This pretty"
	line "feather makes"
	
	para "fairy moves"
	line "stronger!"
	
	para "Give it to your"
	line "favorite Fairy"
	cont "#mon!"
	done
