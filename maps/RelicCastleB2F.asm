RelicCastleB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8,  2, RELIC_CASTLE_B1F, 3
	warp_event  2,  2, RELIC_CASTLE_B3F, 1
	warp_event 10,  7, RELIC_CASTLE_B3F, 2
	warp_event 14, 11, RELIC_CASTLE_B1F, 4
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  6, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, TrainerPsychicFRelicCastleB2F, -1
	tmhmball_event  2,  7, TM_DIG, EVENT_RELIC_CASTLE_B2F_TM_DIG
	
TrainerPsychicFRelicCastleB2F:
	generictrainer PSYCHICF_T, PSYCHICF_RELIC_CASTLE_2, EVENT_BEAT_PSYCHICF_RELIC_CASTLE_2, .SeenText, .BeatenText

	text "This castle will"
	line "be buried by the"
	
	para "sands and for-"
	line "gotten in time…"
	done
	
.SeenText:
	text "…When I am here, I"
	line "feel like I might"

	para "be crushed by"
	line "sorrow. You there…"
	cont "Let's have a bout!"
	done

.BeatenText:
	text "This bout… I will"
	line "not forget it…"
	done
