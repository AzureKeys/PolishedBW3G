AspertiaMomHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, ASPERTIA_CITY, 6
	warp_event  5,  7, ASPERTIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_JUMPTEXT, AspertiaMomHouseFridgeText
	
	def_object_events
	object_event  5,  4, SPRITE_REDS_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaMomScript, -1
	
AspertiaMomScript:
	faceplayer
	checkevent EVENT_GOT_TM_RETURN
	iftrue_jumptext .GotTMText
	opentext
	writethistext
	text "You're a #MON"
	line "trainer, right?"
	done
	promptbutton
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Female
	writethistext
	text "My son is a #-"
	line "mon trainer too."
	
	para "He always treated"
	line "his #mon with"
	cont "care."
	done
	sjumpfwd .DoneGender
.Female
	writethistext
	text "My daughter is a"
	line "#mon trainer"
	cont "too."
	
	para "She always treated"
	line "her #mon with"
	cont "care."
	done
.DoneGender
	promptbutton
	special GetFirstPokemonHappiness
	ifgreater FRIEND_BALL_HAPPINESS - 1, .VeryHappy
	ifgreater 50 - 1, .SomewhatHappy
; Not very happy
	jumpthisopenedtext
	text "Oh, your #mon"
	line "is not happy at"
	cont "all…"

	para "You should really"
	line "treat it better…"
	done
	
.SomewhatHappy
	jumpthisopenedtext
	text "Oh, your #mon"
	line "is pretty happy."

	para "You should come"
	line "show it to me when"
	cont "it's even happier!"
	done
	
.VeryHappy
	writethistext
	text "Oh! Your #mon"
	line "is very happy!"

	para "Here, you should"
	line "give it this TM!"
	done
	promptbutton
	verbosegiveitem TM_RETURN
	setevent EVENT_GOT_TM_RETURN
	closetext
	end
	
.GotTMText:
	text "The move Return"
	line "becomes stronger"

	para "the friendlier"
	line "your #mon is"
	cont "toward you."
	
	para "Give it to your"
	line "favorite #mon!"
	done
	
AspertiaMomHouseFridgeText:
	text "Better not mess"
	line "around in their"
	cont "fridge."
	done
