PWTOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 13, RELIC_PASSAGE_BACK, 8
	warp_event 26,  9, PWT_INSIDE, 1
	warp_event 27,  9, PWT_INSIDE, 2
	warp_event 12,  5, PWT_DRIFTVEIL_GATE, 3

	def_coord_events
	coord_event  8, 13, 0, PWTOutside_CherenBiancaScript

	def_bg_events
	
	def_object_events
	object_event 10, 13, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_OUTSIDE_CHEREN_BIANCA
	object_event 10, 14, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_OUTSIDE_CHEREN_BIANCA
	object_event 20,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PWTOutsideHiddenPowerScript, -1
	object_event 13,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTOutsideBugCatcherText, -1
	object_event 32, 11, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTOutsideCooltrainerMText, -1
	object_event 22, 12, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_DARK_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTOutsideCooltrainerFText, -1
	object_event 26, 24, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PWTOutsideSailorText, -1
	itemball_event 20, 25, CARBOS, 1, EVENT_PWT_OUTSIDE_CARBOS
	
	object_const_def
	const PWTOUTSIDE_CHEREN
	const PWTOUTSIDE_BIANCA
	
PWTOutside_CherenBiancaScript:
	turnobject PWTOUTSIDE_CHEREN, LEFT
	turnobject PWTOUTSIDE_BIANCA, LEFT
	showtext .MeetText
	follow PWTOUTSIDE_CHEREN, PWTOUTSIDE_BIANCA
	applymovement PWTOUTSIDE_CHEREN, .Movement
	stopfollow
	disappear PWTOUTSIDE_CHEREN
	disappear PWTOUTSIDE_BIANCA
	clearevent EVENT_ASPERTIA_CITY_BLOCKER ; Cheren no longer at his Gym
	setscene 1
	end
.Movement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
.MeetText:
	text "Cheren: Ah,"
	line "<PLAYER>. Good to"
	cont "see you."
	
	para "Are you here to"
	line "enter the #mon"
	cont "World Tournament?"
	
	para "Bianca: It's where"
	line "all the strongest"
	
	para "trainers come to"
	line "test their"
	cont "strength!"
	
	para "Cheren: Well if"
	line "you do enter, keep"
	cont "an eye out. We"
	
	para "think something"
	line "suspicious may be"
	cont "going on…"
	
	para "Bianca: See you"
	line "at the Tournament,"
	cont "<PLAYER>!"
	done
	
PWTOutsideHiddenPowerScript:
	faceplayer
	opentext
	writethistext
	text "I can sense the"
	line "hidden potential"
	cont "of #mon."
	
	para "Would you like me"
	line "to tell you the"
	cont "Hidden Power"
	cont "of your #mon?"
	done
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writethistext
	text "Which #mon"
	line "should I check?"
	done
	promptbutton
	special Special_HiddenPowerGuru
	iffalse_jumpopenedtext .DeclinedText
	ifequalfwd $1, .egg
	jumpthisopenedtext
	text "I can sense it…"
	
	para "Your "
	text_ram wStringBuffer3
	line "has a Hidden Power"
	cont "of "
	text_ram wStringBuffer1
	text "!"
	done
	
.egg
	jumpthisopenedtext
	text "Even I can't sense"
	line "the potential of"
	cont "an Egg!"
	done
	
.DeclinedText:
	text "Oh, well come back"
	line "if you want me to"
	
	para "sense your #-"
	line "mon's hidden"
	cont "potential."
	done

PWTOutsideBugCatcherText:
	text "Are you going to"
	line "compete in the"
	cont "Tournament?"
	done
	
PWTOutsideCooltrainerMText:
	text "I wonder who's"
	line "going to be"
	cont "competing this"
	cont "time."
	
	para "Sometimes the Gym"
	line "Leaders even"
	cont "compete!"
	done

PWTOutsideCooltrainerFText:
	text "All the best"
	line "trainers in the"
	
	para "region come to"
	line "compete here."
	
	para "I'm getting all"
	line "fired up!"
	done

PWTOutsideSailorText:
	text "Aye! We ship in"
	line "materials from"
	
	para "Castelia for the"
	line "Tournament."
	done
