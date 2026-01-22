DesertResort_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	
	def_coord_events

	def_bg_events
	bg_event 25, 43, BGEVENT_ITEM + NUGGET, EVENT_DESERT_RESORT_NUGGET
	bg_event  2, 43, BGEVENT_ITEM + HYPER_POTION, EVENT_DESERT_RESORT_HYPER_POTION
	
	def_object_events
	object_event 12,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DesertResortSandManScript, -1
	object_event 54, 38, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 0, TrainerNurseDesert, -1
	object_event 34, 26, SPRITE_ROUGHNECK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 3, TrainerRoughneckDesert, -1
	object_event  2, 28, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, TrainerHexManiacDesert, -1
	object_event 49, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 4, TrainerYoungsterDesert, -1
	object_event 21,  8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, TrainerBackpackerMDesert, -1
	object_event 14, 24, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerBackpackerFDesert, -1
	object_event 39, 38, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerMDesert, -1
	object_event 24, 14, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerPkmnRangerFDesert, -1
	object_event 51, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerLassDesert, -1
	itemball_event 25, 13, SUPER_POTION, 1, EVENT_DESERT_RESORT_SUPER_POTION
	itemball_event 10, 22, FRESH_WATER, 6, EVENT_DESERT_RESORT_FRESH_WATER
	itemball_event 11, 42, RARE_CANDY, 1, EVENT_DESERT_RESORT_RARE_CANDY
	itemball_event 39, 19, HEART_SCALE, 1, EVENT_DESERT_RESORT_HEART_SCALE
	itemball_event  3,  4, RED_SHARD, 1, EVENT_DESERT_RESORT_RED_SHARD
	itemball_event 25, 25, BLUE_SHARD, 1, EVENT_DESERT_RESORT_BLUE_SHARD
	itemball_event 55,  9, YELLOW_SHARD, 1, EVENT_DESERT_RESORT_YELLOW_SHARD
	itemball_event 22, 37, GREEN_SHARD, 1, EVENT_DESERT_RESORT_GREEN_SHARD
	
DesertResortSandManScript:
	faceplayer
	checkevent EVENT_GOT_SOFT_SAND
	iftrue_jumptext .GotSandText
	opentext
	writethistext
	text "You're a #mon"
	line "trainer, right?"

	para "Here, this may"
	line "help you."
	done
	
	promptbutton
	verbosegiveitem SOFT_SAND
	iffalsefwd .done
	setevent EVENT_GOT_SOFT_SAND
	writetext .GotSandText
	waitbutton
.done
	closetext
	end
	
.GotSandText:
	text "Give this special"
	line "sand to a #mon"
	
	para "to hold, and its"
	line "Ground-type"
	
	para "attacks will get"
	line "stronger."
	done
	
TrainerNurseDesert:
	trainer NURSE, NURSE_DESERT, EVENT_BEAT_NURSE_DESERT, .SeenText, .BeatenText, 0, .Script

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
	
TrainerRoughneckDesert:
	generictrainer ROUGHNECK, ROUGHNECK_DESERT, EVENT_BEAT_ROUGHNECK_DESERT, .SeenText, .BeatenText

	text "My dumb little bro"
	line "decided to follow"

	para "in my footsteps"
	line "and became a bad"
	
	para "dude. I really"
	line "wanted him to grow"
	
	para "up and live resp-"
	line "ectfully though…"
	done
	
.SeenText:
	text "My shiny head is a"
	line "reflection of my"
	cont "fighting spirit!"
	done

.BeatenText:
	text "My shine is set"
	line "to blind!"
	done
	
TrainerHexManiacDesert:
	generictrainer HEX_MANIAC, HEX_MANIAC_DESERT, EVENT_BEAT_HEX_MANIAC_DESERT, .SeenText, .BeatenText

	text "I like to play tag"
	line "with my #mon"
	cont "that teleport."
	done
	
.SeenText:
	text "Hm… You're strong,"
	line "aren't you?"
	
	para "It's tough when"
	line "you know that"
	
	para "before you even"
	line "start the fight."
	done

.BeatenText:
	text "Urk… I can't do"
	line "anything to you…"
	done
	
TrainerYoungsterDesert:
	generictrainer YOUNGSTER_D, YOUNGSTER_DESERT, EVENT_BEAT_YOUNGSTER_DESERT, .SeenText, .BeatenText

	text "I want to be like"
	line "my big bro and"
	cont "have a shiny head!"
	done
	
.SeenText:
	text "Starting a day"
	line "ago, I decided to"
	cont "become a bad dude!"
	done

.BeatenText:
	text "I guess I can't"
	line "just become a bad"
	
	para "dude. It's tougher"
	line "than it looks!"
	done
	
TrainerBackpackerMDesert:
	generictrainer BACKPACKERM, BACKPACKERM_DESERT, EVENT_BEAT_BACKPACKERM_DESERT, .SeenText, .BeatenText

	text "My backpack is"
	line "full of sand from"
	cont "the desert."
	done
	
.SeenText:
	text "If you want to"
	line "know what I've got"

	para "in my backpack,"
	line "why don't you try"
	cont "to beat me!"
	done

.BeatenText:
	text "Wooah! I'm going"
	line "to be buried!"
	done
	
TrainerBackpackerFDesert:
	generictrainer BACKPACKERF, BACKPACKERF_DESERT, EVENT_BEAT_BACKPACKERF_DESERT, .SeenText, .BeatenText

	text "I'll have to do"
	line "more training in"
	cont "the Desert Resort."
	done
	
.SeenText:
	text "A desert is like"
	line "one giant sandbox,"

	para "right? So come on,"
	line "let's let our"
	cont "#mon play!"
	done

.BeatenText:
	text "Since this is for"
	line "play, whoever has"
	cont "the most fun wins!"
	done
	
TrainerPkmnRangerMDesert:
	generictrainer PKMN_RANGERM, PKMN_RANGERM_DESERT, EVENT_BEAT_PKMN_RANGERM_DESERT, .SeenText, .BeatenText

	text "Beware of burns!"
	line "If a #mon gets"

	para "a burn, it also"
	line "weakens physical"
	cont "attacks."
	done
	
.SeenText:
	text "I will show you"
	line "the harshness of"
	
	para "the desert through"
	line "a battle!"
	done

.BeatenText:
	text "Desert… hot…"
	line "Mouth… dry…"
	done
	
TrainerPkmnRangerFDesert:
	generictrainer PKMN_RANGERF, PKMN_RANGERF_DESERT, EVENT_BEAT_PKMN_RANGERF_DESERT, .SeenText, .BeatenText

	text "Whether it's hot"
	line "or cold, there is"
	
	para "no problem if you"
	line "have passion!"
	done
	
.SeenText:
	text "A scorching"
	line "desert! A passion"
	
	para "for adventure! And"
	line "a heated battle!"
	done

.BeatenText:
	text "Hot! Hot! Hot!"
	line "Hot!!!"
	done
	
TrainerLassDesert:
	generictrainer LASS, LASS_DESERT, EVENT_BEAT_LASS_DESERT, .SeenText, .BeatenText

	text "Be careful, but"
	line "never be afraid"
	cont "of the journey."
	done
	
.SeenText:
	text "No matter how"
	line "desperately I try"
	
	para "to scoop up the"
	line "sand, it flows"
	cont "through my hands."
	
	para "It's kind of sad"
	line "somehow…"
	done

.BeatenText:
	text "Victory slips"
	line "away… Just like"
	cont "the sand…"
	done
