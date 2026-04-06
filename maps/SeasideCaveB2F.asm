SeasideCaveB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 25,  2, SEASIDE_CAVE_B1F, 8
	warp_event  7, 15, SEASIDE_CAVE_CHAMBER, 1
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 19,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntM1SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  6,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntM2SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  6, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntM3SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	object_event 14,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF1SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  7,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF2SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  7, 13, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF3SeasideCaveB2F, EVENT_SEASIDE_CAVE_GRUNTS
	itemball_event 22,  9, ICE_STONE, 1, EVENT_SEASIDE_CAVE_B2F_ICE_STONE
	itemball_event  2,  2, NEVERMELTICE, 1, EVENT_SEASIDE_CAVE_B2F_NEVERMELTICE
	tmhmball_event 14, 10, TM_PSYCHIC, EVENT_SEASIDE_CAVE_B2F_TM_PSYCHIC
	
TrainerGruntM1SeasideCaveB2F:
	generictrainer GRUNTM, GRUNTM_SEASIDE_CAVE_1, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_1, .SeenText, .BeatenText

	text "We in Team Plasma"
	line "are trying to keep"
	
	para "all the world's"
	line "#mon for our-"
	cont "selves!"
	done
	
.SeenText:
	text "Target acquired!"
	line "Termination will"
	cont "now begin!"
	done

.BeatenText:
	text "I was terminated…?"
	line "What a trainer!"
	done
	
TrainerGruntM2SeasideCaveB2F:
	generictrainer GRUNTM, GRUNTM_SEASIDE_CAVE_2, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_2, .SeenText, .BeatenText

	text "The members of"
	line "Team Plasma who"
	
	para "left are the"
	line "real thugs who"
	
	para "want to take over"
	line "the world!"
	done
	
.SeenText:
	text "Aren't you pretty"
	line "confident, just"
	
	para "waltzing right"
	line "into the enemy!"
	done

.BeatenText:
	text "Argh… No wonder"
	line "you're confident"
	
	para "with that kind of"
	line "strength."
	done
	
TrainerGruntM3SeasideCaveB2F:
	generictrainer GRUNTM, GRUNTM_SEASIDE_CAVE_3, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_3, .SeenText, .BeatenText

	text "If that be the"
	line "case then… Forgive"
	cont "me!"
	done
	
.SeenText:
	text "Knave! I do ambush"
	line "thee!"
	done

.BeatenText:
	text "Woe is me!"
	done
	
TrainerGruntF1SeasideCaveB2F:
	generictrainer GRUNTF, GRUNTF_SEASIDE_CAVE_1, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_1, .SeenText, .BeatenText

	text "They said if I"
	line "joined Team Plasma"
	
	para "that I could get"
	line "powerful #mon"
	
	para "and do whatever I"
	line "liked!"
	
	para "But this #mon"
	line "is useless!"
	done
	
.SeenText:
	text "How about we see"
	line "how well I can use"
	
	para "this #MON I"
	line "just got!"
	done

.BeatenText:
	text "Hmph… No good,"
	line "huh?"
	done
	
TrainerGruntF2SeasideCaveB2F:
	generictrainer GRUNTF, GRUNTF_SEASIDE_CAVE_2, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_2, .SeenText, .BeatenText

	text "Maybe if Team"
	line "Plasma can take"
	
	para "over the Unova"
	line "region, our king"
	cont "will come back…"
	done
	
.SeenText:
	text "Even if we don't"
	line "have our king any-"
	
	para "more, we still"
	line "won't lose!"
	done

.BeatenText:
	text "Plasmaaa! Glory to"
	line "Team Plasma!"
	done
	
TrainerGruntF3SeasideCaveB2F:
	generictrainer GRUNTF, GRUNTF_SEASIDE_CAVE_3, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_3, .SeenText, .BeatenText

	text "Lose! J-just go"
	line "and lose already!"
	
	para "A kid like you"
	line "should definitely"
	cont "lose!"
	done
	
.SeenText:
	text "Oh-ho-ho! You've"
	line "been ambushed!"
	done

.BeatenText:
	text "I lost! No!"
	line "Plasmaaa!!"
	done
