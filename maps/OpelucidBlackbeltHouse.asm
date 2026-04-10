OpelucidBlackbeltHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OPELUCID_CITY, 7
	warp_event  3,  7, OPELUCID_CITY, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OpelucidBlackBeltScript, -1
	
OpelucidBlackBeltScript:
	faceplayer
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue_jumptext .GotBeltText
	opentext
	writethistext
	text "Hm, I can see that"
	line "your training has"
	cont "made you strong."

	para "But you are not"
	line "yet a master!"
	
	para "Give your #mon"
	line "this belt to hone"
	cont "your training."
	done
	promptbutton
	verbosegiveitem EXPERT_BELT
	iffalsefwd .done
	setevent EVENT_GOT_EXPERT_BELT
	writetext .GotBeltText
	waitbutton
.done
	closetext
	end
	
.GotBeltText:
	text "A #mon wearing"
	line "that belt will"
	
	para "strike with more"
	line "power when landing"

	para "a super-effective"
	line "blow!"
	done
