RelicCastleB3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8,  2, RELIC_CASTLE_B2F, 2
	warp_event 16,  7, RELIC_CASTLE_B2F, 3
	warp_event  2,  2, RELIC_CASTLE_B4F, 1
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  8,  7, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RelicCastleB3FCoverFossilScript, EVENT_RELIC_CASTLE_B3F_COVER_FOSSIL
	object_event  9,  7, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RelicCastleB3FPlumeFossilScript, EVENT_RELIC_CASTLE_B3F_PLUME_FOSSIL
	
	object_const_def
	const RELICCASTLEB3F_COVER_FOSSIL
	const RELICCASTLEB3F_PLUME_FOSSIL
	
RelicCastleB3FCoverFossilScript:
	opentext
	writethistext
	text "Take the Cover"
	line "Fossil?"
	done
	yesorno
	iftruefwd .TakeFossil
	closetext
	end
	
.TakeFossil
	disappear RELICCASTLEB3F_COVER_FOSSIL
	verbosegiveitem COVER_FOSSIL
	waitsfx
	closetext
	pause 15
	earthquake 30
	disappear RELICCASTLEB3F_PLUME_FOSSIL
	clearevent EVENT_RELIC_CASTLE_B4F_PLUME_FOSSIL
	sjumpfwd RelicCastleB3FFossilDisappearScript
	
RelicCastleB3FPlumeFossilScript:
	opentext
	writethistext
	text "Take the Plume"
	line "Fossil?"
	done
	yesorno
	iftruefwd .TakeFossil
	closetext
	end
	
.TakeFossil
	disappear RELICCASTLEB3F_PLUME_FOSSIL
	verbosegiveitem PLUME_FOSSIL
	waitsfx
	closetext
	pause 15
	earthquake 30
	disappear RELICCASTLEB3F_COVER_FOSSIL
	clearevent EVENT_RELIC_CASTLE_B4F_COVER_FOSSIL
	; fallthrough
	
RelicCastleB3FFossilDisappearScript:
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	showtext .DisappearText
	end
	
.DisappearText:
	text "The other fossil"
	line "disappeared into"
	cont "the sand…"
	done
