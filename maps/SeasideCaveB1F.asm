SeasideCaveB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SeasideCaveB1FSetTiles
	callback MAPCALLBACK_STONETABLE, SeasideCaveB1FBoulderCallback

	def_warp_events
	warp_event  5, 13, SEASIDE_CAVE_1F, 3
	warp_event 13, 11, SEASIDE_CAVE_1F, 4
	warp_event  8, 20, SEASIDE_CAVE_B1F, 1 ; hole
	warp_event 16, 18, SEASIDE_CAVE_B1F, 1 ; hole
	warp_event 16, 13, SEASIDE_CAVE_B1F, 1 ; hole
	warp_event 17, 16, SEASIDE_CAVE_B1F, 1 ; hole
	warp_event 19, 12, SEASIDE_CAVE_B1F, 1 ; hole
	warp_event 15,  3, SEASIDE_CAVE_B2F, 1
	
	def_coord_events

	def_bg_events
	
	def_object_events
	strengthboulder_event  6, 20, EVENT_SEASIDE_CAVE_B1F_BOULDER_1
	strengthboulder_event 18, 18, EVENT_SEASIDE_CAVE_B1F_BOULDER_2
	strengthboulder_event 15, 16, EVENT_SEASIDE_CAVE_B1F_BOULDER_3
	strengthboulder_event 17, 13, EVENT_SEASIDE_CAVE_B1F_BOULDER_4
	strengthboulder_event 19, 14, EVENT_SEASIDE_CAVE_B1F_BOULDER_5
	object_event 16, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerBlackbeltSeasideCaveB1F, -1
	object_event 15, 20, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, TrainerBattleGirlSeasideCaveB1F, -1
	itemball_event 20, 20, ICY_ROCK, 1, EVENT_SEASIDE_CAVE_B1F_ICY_ROCK
	
	object_const_def
	const SEASIDECAVEB1F_BOULDER_1
	const SEASIDECAVEB1F_BOULDER_2
	const SEASIDECAVEB1F_BOULDER_3
	const SEASIDECAVEB1F_BOULDER_4
	const SEASIDECAVEB1F_BOULDER_5
	
SeasideCaveB1FSetTiles:
	checkevent EVENT_SEASIDE_CAVE_B1F_BOULDER_1
	iffalsefwd .check2
	changeblock  8, 20, $62
.check2
	checkevent EVENT_SEASIDE_CAVE_B1F_BOULDER_2
	iffalsefwd .check3
	changeblock 16, 18, $62
.check3
	checkevent EVENT_SEASIDE_CAVE_B1F_BOULDER_3
	iffalsefwd .check4
	changeblock 16, 12, $6b
.check4
	checkevent EVENT_SEASIDE_CAVE_B1F_BOULDER_4
	iffalsefwd .check5
	changeblock 16, 16, $66
.check5
	checkevent EVENT_SEASIDE_CAVE_B1F_BOULDER_5
	iffalsefwd .done
	changeblock 18, 12, $66
.done
	endcallback
	
SeasideCaveB1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, SEASIDECAVEB1F_BOULDER_1, .Disappear1
	stonetable 4, SEASIDECAVEB1F_BOULDER_2, .Disappear2
	stonetable 5, SEASIDECAVEB1F_BOULDER_3, .Disappear3
	stonetable 6, SEASIDECAVEB1F_BOULDER_4, .Disappear4
	stonetable 7, SEASIDECAVEB1F_BOULDER_5, .Disappear5
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear SEASIDECAVEB1F_BOULDER_1
	changeblock  8, 20, $62
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear SEASIDECAVEB1F_BOULDER_2
	changeblock 16, 18, $62
	sjumpfwd .DoneBoulder
	
.Disappear3:
	scall .FX
	disappear SEASIDECAVEB1F_BOULDER_3
	changeblock 16, 12, $6b
	sjumpfwd .DoneBoulder
	
.Disappear4:
	scall .FX
	disappear SEASIDECAVEB1F_BOULDER_4
	changeblock 16, 16, $66
	sjumpfwd .DoneBoulder
	
.Disappear5:
	scall .FX
	disappear SEASIDECAVEB1F_BOULDER_5
	changeblock 18, 12, $66
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
	
TrainerBlackbeltSeasideCaveB1F:
	generictrainer BLACKBELT_T, BLACKBELT_SEASIDE_CAVE_2, EVENT_BEAT_BLACKBELT_SEASIDE_CAVE_2, .SeenText, .BeatenText

	text "I will reexamine"
	line "my own weaknesses."

	para "At times I may"
	line "hate myself for"
	
	para "doing so, but I"
	line "cannot run from"
	cont "myself!"
	done
	
.SeenText:
	text "I will never turn"
	line "my back and run!"
	done

.BeatenText:
	text "Ugh… Sometimes you"
	line "must retreat to"
	cont "win."
	done
	
TrainerBattleGirlSeasideCaveB1F:
	generictrainer BATTLE_GIRL, BATTLE_GIRL_SEASIDE_CAVE_2, EVENT_BEAT_BATTLE_GIRL_SEASIDE_CAVE_2, .SeenText, .BeatenText

	text "Defeat leads to"
	line "enlightenment. I"

	para "realize now my own"
	line "deficiency… But I"
	
	para "will not make"
	line "excuses! I will"
	
	para "use this knowledge"
	line "as fuel for"
	cont "tomorrow!"
	done
	
.SeenText:
	text "My training will"
	line "never betray me."

	para "After training"
	line "this much, I am"
	cont "certain to win!"
	done

.BeatenText:
	text "…how can that be?"
	line "even after I"
	cont "trained so much?"
	done
