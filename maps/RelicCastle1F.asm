RelicCastle1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15, 15, DESERT_RESORT, 3
	warp_event 16,  2, RELIC_CASTLE_B1F, 1
	warp_event  4, 12, RELIC_CASTLE_B1F, 2
	warp_event  5,  9, RELIC_CASTLE_B1F, 5
	warp_event 10,  9, RELIC_CASTLE_B1F, 6
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  9, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicMRelicCastle1F, -1
	itemball_event 14,  9, REVIVE, 1, EVENT_RELIC_CASTLE_1F_REVIVE
	
TrainerPsychicMRelicCastle1F:
	generictrainer PSYCHICM_T, PSYCHICM_RELIC_CASTLE, EVENT_BEAT_PSYCHICM_RELIC_CASTLE, .SeenText, .BeatenText

	text "Drawing out your"
	line "#mon's power"
	cont "like that…"

	para "I think that is a"
	line "real supernatural"
	cont "power!"
	done
	
.SeenText:
	text "I will use my"
	line "supernatural power"
	
	para "to help my #-"
	line "mon!"
	done

.BeatenText:
	text "Wow! That's"
	line "amazing!"
	done
