FloccesyRanchBarn_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, FLOCCESY_RANCH, 2
	warp_event  4,  7, FLOCCESY_RANCH, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FloccesyRanchBarnTwin1Script, -1
	object_event  4,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FloccesyRanchBarnTwin2Script, -1
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, FLAAFFY, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, FloccesyRanchBarnWoolieScript, -1
	
	object_const_def
	const FLOCCESYRANCHBARN_TWIN_1
	const FLOCCESYRANCHBARN_TWIN_2
	
FloccesyRanchBarnTwin1Script:
	scall FloccesyRanchBarnTwinScript
	turnobject FLOCCESYRANCHBARN_TWIN_1, RIGHT
	end
	
FloccesyRanchBarnTwin2Script:
	scall FloccesyRanchBarnTwinScript
	turnobject FLOCCESYRANCHBARN_TWIN_2, LEFT
	end
	
FloccesyRanchBarnTwinScript:
	faceplayer
	checkevent EVENT_HEALED_WOOLIE
	iffalse_jumptext .SickText
	checkevent EVENT_GOT_MAGIC_RIBBON
	iftrue_jumptext .AfterText
	opentext
	writethistext
	text "Thanks for helping"
	line "Woolie get better!"
	
	para "You can have her"
	line "special ribbon as"
	cont "thanks!"
	done
	promptbutton
	verbosegiveitem MAGIC_RIBBON
	iffalsefwd .NoRoom
	setevent EVENT_GOT_MAGIC_RIBBON
	writethistext
.AfterText:
	text "I want to put my"
	line "ribbon on one of"
	
	para "the Eevee that"
	line "play outside."
	
	para "It would look so"
	line "cute!"
	done
	waitbutton
.NoRoom
	closetext
	end
	
.SickText:
	text "Woolie is sick…"

	para "She needs lots of"
	line "Oran Berries."
	done
	
FloccesyRanchBarnWoolieScript:
	checkevent EVENT_HEALED_WOOLIE
	iftruefwd .HealedWoolie
	opentext
	writethistext
	text "Woolie: …Baa…"
	done
	setmonval FLAAFFY
	special PlaySlowCry
	promptbutton
	writethistext
	text "Its cry is weak…"
	done
	promptbutton
	checkitem ORAN_BERRY
	iftruefwd .AskOranBerry
	checkitem SITRUS_BERRY
	iffalse_jumpopenedtext .NoBerriesText
.AskSitrusBerry
	writethistext
	text "Give a Sitrus"
	line "Berry to Flaaffy?"
	done
	yesorno
	iffalse_jumpopenedtext .RefusedText
	takeitem SITRUS_BERRY
	readmem wMooMooBerries
	addval 3
	writemem wMooMooBerries
	sjumpfwd .GaveBerry
.AskOranBerry
	writethistext
	text "Give an Oran"
	line "Berry to Flaaffy?"
	done
	yesorno
	iftruefwd .GiveOranBerry
	checkitem SITRUS_BERRY
	iffalse_jumpopenedtext .RefusedText
	sjump .AskSitrusBerry
.GiveOranBerry
	takeitem ORAN_BERRY
	readmem wMooMooBerries
	addval 1
	writemem wMooMooBerries
	; fallthrough
.GaveBerry
	ifequalfwd 3, .QuiteHealthy
	ifequalfwd 4, .QuiteHealthy
	ifgreater 4, .TotallyHealthy
	writetext .GaveBerryText
	promptbutton
	jumpthisopenedtext
	text "Flaaffy became a"
	line "little healthier!"
	done
.QuiteHealthy
	writetext .GaveBerryText
	promptbutton
	jumpthisopenedtext
	text "Flaaffy became"
	line "quite healthy!"
	done
.TotallyHealthy
	playmusic MUSIC_HEAL
	writetext .GaveBerryText
	pause 60
	promptbutton
	special RestartMapMusic
	setevent EVENT_HEALED_WOOLIE
	jumpthisopenedtext
	text "Flaaffy became"
	line "totally healthy!"
	done
	
.HealedWoolie
	opentext
	writethistext
	text "Woolie: Baaa!"
	done
	cry FLAAFFY
	waitbutton
	closetext
	end
	
.RefusedText:
	text "<PLAYER> wouldn't"
	line "give a Berry."

	para "Flaaffy looks sad."
	done
	
.NoBerriesText:
	text "<PLAYER> has no"
	line "Oran Berries…"
	done
	
.GaveBerryText:
	text "<PLAYER> gave a"
	line "Berry to Flaaffy."
	done
