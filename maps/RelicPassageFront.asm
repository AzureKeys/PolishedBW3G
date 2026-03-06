RelicPassageFront_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RelicPassageFrontSetTiles
	callback MAPCALLBACK_STONETABLE, RelicPassageFrontBoulderCallback

	def_warp_events
	warp_event 37, 23, CASTELIA_SEWERS, 8
	warp_event 17, 14, RELIC_PASSAGE_FRONT, 3 ; hole
	warp_event 18, 14, RELIC_PASSAGE_FRONT, 3 ; spawn from fall in hole
	
	def_coord_events

	def_bg_events
	bg_event 35, 14, BGEVENT_ITEM + MAX_REPEL, EVENT_RELIC_PASSAGE_FRONT_MAX_REPEL
	bg_event 43, 19, BGEVENT_ITEM + RARE_CANDY, EVENT_RELIC_PASSAGE_FRONT_RARE_CANDY
	bg_event 22, 10, BGEVENT_ITEM + RED_SHARD, EVENT_RELIC_PASSAGE_FRONT_RED_SHARD
	
	def_object_events
	strengthboulder_event 13, 15, EVENT_RELIC_PASSAGE_FRONT_BOULDER
	object_event 38, 22, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 0, TrainerNurseRelicPassageFront, -1
	object_event 43,  8, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, TrainerPsychicMRelicPassageFront, -1
	object_event 13, 20, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerHiker1RelicPassageFront, -1
	object_event 31, 14, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHiker2RelicPassageFront, -1
	object_event 27, 16, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerFRelicPassageFront, -1
	itemball_event 28,  8, HARD_STONE, 1, EVENT_RELIC_PASSAGE_FRONT_HARD_STONE
	itemball_event 29, 18, ESCAPE_ROPE, 3, EVENT_RELIC_PASSAGE_FRONT_ESCAPE_ROPE

	object_const_def
	const RELICPASSAGEFRONT_BOULDER
	
RelicPassageFrontSetTiles:
	checkevent EVENT_RELIC_PASSAGE_FRONT_BOULDER
	iffalsefwd .done
	changeblock 16, 14, $6f
.done
	endcallback
	
RelicPassageFrontBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 2, RELICPASSAGEFRONT_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	disappear RELICPASSAGEFRONT_BOULDER
	changeblock 16, 14, $6f
	refreshmap
	waitbutton
	closetext
	end
	
TrainerNurseRelicPassageFront:
	trainer NURSE, NURSE_RELIC_PASSAGE, EVENT_BEAT_NURSE_RELIC_PASSAGE, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
	
TrainerPsychicMRelicPassageFront:
	generictrainer PSYCHICM_T, PSYCHICM_RELIC_PASSAGE, EVENT_BEAT_PSYCHICM_RELIC_PASSAGE, .SeenText, .BeatenText

	text "I feel an extra-"
	line "ordinary power"
	
	para "emanating from up"
	line "ahead!"
	
	para "Yes! It is a power"
	line "that burns as warm"
	
	para "and bright as the"
	line "sun!"
	done
	
.SeenText:
	text "It's coming… It's"
	line "coming! The"
	
	para "ancient spiritual"
	line "power!"
	done

.BeatenText:
	text "The ancient power!"
	line "The sacred power!"
	done
	
TrainerHiker1RelicPassageFront:
	generictrainer HIKER, HIKER_RELIC_PASSAGE_1, EVENT_BEAT_HIKER_RELIC_PASSAGE_1, .SeenText, .BeatenText

	text "Did people really"
	line "make a tunnel this"
	
	para "long all those"
	line "ages ago?"
	
	para "No, they must have"
	line "had many #mon"
	
	para "helping them with"
	line "the work."
	done
	
.SeenText:
	text "Hold up! Did you"
	line "know this path was"
	
	para "supposedly made"
	line "ages and ages ago?"
	done

.BeatenText:
	text "S-sorry… I just"
	line "got so excited…"
	done
	
TrainerHiker2RelicPassageFront:
	generictrainer HIKER_D, HIKER_RELIC_PASSAGE_2, EVENT_BEAT_HIKER_RELIC_PASSAGE_2, .SeenText, .BeatenText

	text "This tunnel was"
	line "dug out of the"
	cont "rock by #mon!"
	done
	
.SeenText:
	text "Just because you"
	line "work hard doesn't"
	
	para "mean you're gonna"
	line "get what you want!"
	
	para "But if you don't"
	line "work hard, there"
	
	para "are many things"
	line "you can't do!"
	done

.BeatenText:
	text "Everything went"
	line "dark all of a"
	cont "sudden!"
	done
	
TrainerBackpackerFRelicPassageFront:
	generictrainer BACKPACKERF, BACKPACKERF_RELIC_PASSAGE, EVENT_BEAT_BACKPACKERF_RELIC_PASSAGE, .SeenText, .BeatenText

	text "I am going"
	line "wherever I can"
	
	para "have glorious"
	line "battles against"
	cont "new people…"
	
	para "It sounds quite"
	line "daring, doesn't"
	cont "it?"
	done
	
.SeenText:
	text "My path and yours…"
	line "They cross here"
	cont "and now…"
	done

.BeatenText:
	text "Now that I think"
	line "about it, I've"
	cont "come quite far…"
	done
