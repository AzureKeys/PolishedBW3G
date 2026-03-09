RelicPassageBack_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RelicPassageBackSetTiles
	callback MAPCALLBACK_STONETABLE, RelicPassageBackBoulderCallback

	def_warp_events
	warp_event 25, 29, RELIC_PASSAGE_FRONT, 4
	warp_event 27, 23, RELIC_PASSAGE_FRONT, 5
	warp_event 27,  2, RELIC_PASSAGE_BACK, 4 ; hole
	warp_event 26,  2, RELIC_PASSAGE_BACK, 4 ; spawn from fall in hole
	warp_event 13,  4, RELIC_PASSAGE_BACK, 6 ; hole
	warp_event 14,  4, RELIC_PASSAGE_BACK, 6 ; spawn from fall in hole
	warp_event 27,  1, RELIC_CASTLE_B4F, 6
	warp_event  3,  3, PWT_OUTSIDE, 1
	
	def_coord_events

	def_bg_events
	bg_event 16, 25, BGEVENT_ITEM + YELLOW_SHARD, EVENT_RELIC_PASSAGE_BACK_YELLOW_SHARD
	bg_event 11, 16, BGEVENT_ITEM + GREEN_SHARD, EVENT_RELIC_PASSAGE_BACK_GREEN_SHARD
	bg_event  6,  8, BGEVENT_ITEM + BLUE_SHARD, EVENT_RELIC_PASSAGE_BACK_BLUE_SHARD
	
	def_object_events
	strengthboulder_event 27,  4, EVENT_RELIC_PASSAGE_BACK_BOULDER_1
	strengthboulder_event 10,  4, EVENT_RELIC_PASSAGE_BACK_BOULDER_2
	object_event 17, 22, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, TrainerWorkerRelicPassageBack, -1
	object_event 16, 13, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicFRelicPassageBack, -1
	object_event 23,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMRelicPassageBack, -1
	object_event  5,  4, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerHexManiacRelicPassageBack, -1
	itemball_event 17,  8, ULTRA_BALL, 3, EVENT_RELIC_PASSAGE_BACK_ULTRA_BALL
	itemball_event 25,  2, PROTEIN, 1, EVENT_RELIC_PASSAGE_BACK_PROTEIN
	itemball_event 11, 21, SMOOTH_ROCK, 1, EVENT_RELIC_PASSAGE_BACK_SMOOTH_ROCK
	tmhmball_event 26, 20, TM_ROCK_SLIDE, EVENT_RELIC_PASSAGE_BACK_TM_ROCK_SLIDE
	
	object_const_def
	const RELICPASSAGEBACK_BOULDER_1
	const RELICPASSAGEBACK_BOULDER_2
	
RelicPassageBackSetTiles:
	checkevent EVENT_RELIC_PASSAGE_BACK_BOULDER_1
	iffalsefwd .next
	changeblock 26,  2, $6f
.next
	checkevent EVENT_RELIC_PASSAGE_BACK_BOULDER_2
	iffalsefwd .done
	changeblock 12,  4, $6f
.done
	endcallback
	
RelicPassageBackBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, RELICPASSAGEBACK_BOULDER_1, .Disappear1
	stonetable 5, RELICPASSAGEBACK_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear RELICPASSAGEBACK_BOULDER_1
	changeblock 26,  2, $6f
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear RELICPASSAGEBACK_BOULDER_2
	changeblock 12,  4, $6f
	; fallthrough
.DoneBoulder:
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	end
	
TrainerWorkerRelicPassageBack:
	generictrainer WORKER, WORKER_RELIC_PASSAGE, EVENT_BEAT_WORKER_RELIC_PASSAGE, .SeenText, .BeatenText

	text "What? I got so"
	line "caught up in my"
	
	para "survey of the"
	line "sewer that I ended"
	
	para "up in the Relic"
	line "Passage?"
	done
	
.SeenText:
	text "The fact that you"
	line "are here means…"
	
	para "You are also part"
	line "of the sewers?!"
	
	para "Then I will survey"
	line "you too!"
	done

.BeatenText:
	text "Huh… Where am I?"
	line "Who are you?"
	done
	
TrainerPsychicFRelicPassageBack:
	generictrainer PSYCHICF_T, PSYCHICF_RELIC_PASSAGE, EVENT_BEAT_PSYCHICF_RELIC_PASSAGE, .SeenText, .BeatenText

	text "Modern men make"
	line "sewers, ancient"
	
	para "men made these"
	line "paths…"
	done
	
.SeenText:
	text "The sewer and this"
	line "Relic Passage…"
	
	para "Is it really"
	line "coincidence that"
	
	para "they exist so"
	line "close to each"
	cont "other?"
	done

.BeatenText:
	text "No! There must be"
	line "a reason why!"
	done
	
TrainerBackpackerMRelicPassageBack:
	generictrainer BACKPACKERM, BACKPACKERM_RELIC_PASSAGE, EVENT_BEAT_BACKPACKERM_RELIC_PASSAGE, .SeenText, .BeatenText

	text "The air that I"
	line "just breathed in…"
	
	para "It could actually"
	line "be really ancient"
	
	para "air that hasn't"
	line "changed for ages,"
	cont "you know?"
	done
	
.SeenText:
	text "First, one big"
	line "last gulp…"
	
	para "Hold your breath!"
	done

.BeatenText:
	text "Puuaaah!"
	line "Holding your"
	
	para "breath is really"
	line "tough…"
	done
	
TrainerHexManiacRelicPassageBack:
	generictrainer HEX_MANIAC, HEX_MANIAC_RELIC_PASSAGE, EVENT_BEAT_HEX_MANIAC_RELIC_PASSAGE, .SeenText, .BeatenText

	text "In ancient places,"
	line "magical energy"
	cont "remains…"

	para "I can understand"
	line "it. So much sorrow"
	cont "and joy…"
	done
	
.SeenText:
	text "Just being here"
	line "fills me with"
	cont "magical power…"
	done

.BeatenText:
	text "You seem to be"
	line "full of magical"
	cont "power, too…"
	done
