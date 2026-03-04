NuvemaMomHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, HandleHilbertHilda

	def_warp_events
	warp_event  4,  7, NUVEMA_TOWN, 2
	warp_event  5,  7, NUVEMA_TOWN, 2
	warp_event  9,  0, NUVEMA_MOM_HOUSE, 4
	warp_event  7, 12, NUVEMA_MOM_HOUSE, 3

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPTEXT, NuvemaMomHouseFridgeText
	bg_event  4, 17, BGEVENT_JUMPTEXT, NuvemaMomHouseConsoleText
	
	def_object_events
	object_event  3, 14, SPRITE_HILBERT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NuvemaHilbertHildaScript, EVENT_NUVEMA_MOM_HOUSE_HILBERT
	object_event  3, 14, SPRITE_HILDA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, NuvemaHilbertHildaScript, EVENT_NUVEMA_MOM_HOUSE_HILDA
	object_event  4,  4, SPRITE_REDS_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NuvemaMomScript, -1
	
	object_const_def
	const NUVEMAMOMHOUSE_HILBERT
	const NUVEMAMOMHOUSE_HILDA
	
HandleHilbertHilda:
	checkevent EVENT_HILBERT_HILDA_READY_FOR_BATTLE
	iffalsefwd .Disappear
	checkevent EVENT_BEAT_HILBERT_HILDA
	iffalsefwd .Appear
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .Disappear
	checkflag ENGINE_HILBERT_HILDA
	iftruefwd .Disappear
.Appear
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Female
	disappear NUVEMAMOMHOUSE_HILDA
	appear NUVEMAMOMHOUSE_HILBERT
	sjumpfwd .Done
.Female
	disappear NUVEMAMOMHOUSE_HILBERT
	appear NUVEMAMOMHOUSE_HILDA
	sjumpfwd .Done
.Disappear
	disappear NUVEMAMOMHOUSE_HILBERT
	disappear NUVEMAMOMHOUSE_HILDA
.Done
	endcallback
	
NuvemaHilbertHildaScript:
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	readvar VAR_PLAYERGENDER
	ifequalfwd 1, .Hilda
; Hilbert
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .HilbertOshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .HilbertSnivy
; HilbertTepig
	loadtrainer HILBERT, HILBERT_TEPIG
	sjumpfwd .BattleStart
.HilbertOshawott
	loadtrainer HILBERT, HILBERT_OSHAWOTT
	sjumpfwd .BattleStart
.HilbertSnivy
	loadtrainer HILBERT, HILBERT_SNIVY
	sjumpfwd .BattleStart
.Hilda
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .HildaOshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .HildaSnivy
; HildaTepig
	loadtrainer HILDA, HILDA_TEPIG
	sjumpfwd .BattleStart
.HildaOshawott
	loadtrainer HILDA, HILDA_OSHAWOTT
	sjumpfwd .BattleStart
.HildaSnivy
	loadtrainer HILDA, HILDA_SNIVY
	; fallthrough
.BattleStart:
	startbattle
	reloadmapafterbattle
	showtext .AfterText
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NUVEMAMOMHOUSE_HILBERT
	disappear NUVEMAMOMHOUSE_HILDA
	pause 15
	special Special_FadeInQuickly
	setflag ENGINE_HILBERT_HILDA
	checkevent EVENT_BEAT_HILBERT_HILDA
	iffalsefwd .Credits
	playmapmusic
	end
	
.Credits
	pause 30
	special HealParty
	reanchormap
	setevent EVENT_BEAT_HILBERT_HILDA
	credits
	end
	
.SeenText:
	text "..."
	done
	
.BeatenText:
	text "...!"
	done
	
.AfterText:
	text "..."
	done
	
NuvemaMomScript:
	faceplayer
	checkevent EVENT_GOT_TM_HIDDEN_POWER
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
	writethistext
	text "Each #mon has"
	line "its own special"
	cont "power."
	
	para "Here, take this"
	line "TM."
	done
	promptbutton
	verbosegivetmhm TM_HIDDEN_POWER
	setevent EVENT_GOT_TM_HIDDEN_POWER
	jumpthisopenedtext
.GotTMText:
	text "Hidden Power is a"
	line "special move with"

	para "a different type"
	line "based on the #-"
	cont "mon using it."
	
	para "Try it with all"
	line "kinds of different"
	cont "#mon!"
	done
	
NuvemaMomHouseFridgeText:
	text "Better not mess"
	line "around in their"
	cont "fridge."
	done
	
NuvemaMomHouseConsoleText:
	text "It's a classic"
	line "game console, a"
	cont "Nintendo 64!"
	
	para "Whoever lived here"
	line "must have been"
	
	para "excited when they"
	line "got this as a kid!"
	done
