NimbasaSootheBellHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, NIMBASA_CITY, 6
	warp_event  7,  7, NIMBASA_CITY, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaSootheBellHouseScript, -1
	
NimbasaSootheBellHouseScript:
	faceplayer
	checkevent EVENT_GOT_SOOTHE_BELL
	iftrue_jumptext .GotBellText
	opentext
	writethistext
	text "You're a #mon"
	line "trainer, right?"

	para "You seem like the"
	line "kind of trainer"
	
	para "who is kind to"
	line "your #mon."
	
	para "Here, have this."
	done
	
	promptbutton
	verbosegiveitem SOOTHE_BELL
	iffalsefwd .done
	setevent EVENT_GOT_SOOTHE_BELL
	writetext .GotBellText
	waitbutton
.done
	closetext
	end
	
.GotBellText:
	text "Give that Bell to"
	line "your #mon, and"
	
	para "it will make them"
	line "happier!"
	done
