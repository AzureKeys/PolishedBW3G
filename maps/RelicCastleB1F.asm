RelicCastleB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 14,  2, RELIC_CASTLE_1F, 2
	warp_event  2, 12, RELIC_CASTLE_1F, 3
	warp_event  8,  2, RELIC_CASTLE_B2F, 1
	warp_event 14, 11, RELIC_CASTLE_B2F, 4
	warp_event  3,  9, RELIC_CASTLE_1F, 4
	warp_event  8,  9, RELIC_CASTLE_1F, 5
	
	def_coord_events

	def_bg_events
	bg_event 14, 10, BGEVENT_ITEM + ELIXIR, EVENT_RELIC_CASTLE_B1F_ELIXIR
	
	def_object_events
	object_event  9,  8, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicFRelicCastleB1F, -1
	itemball_event  2,  6, MAX_POTION, 1, EVENT_RELIC_CASTLE_B1F_MAX_POTION
	
TrainerPsychicFRelicCastleB1F:
	generictrainer PSYCHICF_T, PSYCHICF_RELIC_CASTLE_1, EVENT_BEAT_PSYCHICF_RELIC_CASTLE_1, .SeenText, .BeatenText

	text "Relic Castle…"
	
	para "Apparently people"
	line "and #mon came"
	
	para "together here to"
	line "create Unova."
	done
	
.SeenText:
	text "My psychic type"
	line "#mom just"

	para "started making"
	line "noises. Is that"
	
	para "because we're in"
	line "the ruins… or is"
	cont "it because of you?"
	done

.BeatenText:
	text "So… strong! Who"
	line "are you?"
	done
