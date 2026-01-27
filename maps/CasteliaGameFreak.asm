CasteliaGameFreak_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  9, CASTELIA_CITY_STREETS, 21
	warp_event  3,  9, CASTELIA_CITY_STREETS, 21

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_JUMPTEXT, GameFreakSignText
	bg_event  7,  0, BGEVENT_JUMPTEXT, GameFreakStairsText
	
	def_object_events
	object_event  2,  2, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, CasteliaGameFreakScript, -1

CasteliaGameFreakScript:
	faceplayer
	checkevent EVENT_BEAT_HILBERT_HILDA
	iffalse_jumptext .BusyText
	opentext
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Hilda
	writethistext
	text "Oh hey, you beat"
	line "Hilbert!"
	done
	sjumpfwd .FinishText
.Hilda
	writethistext
	text "Oh hey, you beat"
	line "Hilda!"
	done
.FinishText
	promptbutton
	writethistext
	text "Congrats!"
	
	para "Thanks for playing"
	line "my game! I've"
	
	para "worked really hard"
	line "on it, and I've"
	
	para "had help from a"
	line "lot of very"
	
	para "talented"
	line "individuals."
	
	para "I'm currently"
	line "working on porting"
	
	para "the game to the"
	line "Polished Crystal"
	cont "engine."
	
	para "It'll add a ton of"
	line "new features, and"
	
	para "general improve-"
	line "ments to the game!"
	
	para "Keep an eye out"
	line "for news about the"
	
	para "next release, and"
	line "once again,"
	
	para "Thank you for"
	line "playing!"
	done
	promptbutton
	closetext
	end
	
.BusyText:
	text "Shh, Game Freak"
	line "isn't open right"
	cont "now."
	
	para "Come back later,"
	line "I'm working on"
	
	para "porting this game"
	line "to the Polished"
	cont "Crystal engine…"
	done

GameFreakSignText:
	text "Game Freak HQ."
	done
	
GameFreakStairsText:
	text "Office closed for"
	line "vacation."
	
	para "Inquire at the"
	line "Kalos office for"
	cont "information."
	done
