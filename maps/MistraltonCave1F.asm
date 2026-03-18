MistraltonCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MistraltonCave1FSetTiles
	callback MAPCALLBACK_STONETABLE, MistraltonCave1FBoulderCallback

	def_warp_events
	warp_event  3,  3, ROUTE_6, 5
	warp_event  7, 12, MISTRALTON_CAVE_1F, 1 ; hole
	warp_event 17, 18, MISTRALTON_CAVE_1F, 1 ; hole
	warp_event  9,  4, MISTRALTON_CAVE_1F, 1 ; hole
	warp_event 13,  9, MISTRALTON_CAVE_2F, 1
	
	def_coord_events

	def_bg_events
	bg_event  9,  2, BGEVENT_ITEM + CARBOS, EVENT_MISTRALTON_CAVE_1F_CARBOS
	
	def_object_events
	strengthboulder_event  7,  8, EVENT_MISTRALTON_CAVE_1F_BOULDER_1
	strengthboulder_event 15, 18, EVENT_MISTRALTON_CAVE_1F_BOULDER_2
	strengthboulder_event 10,  4, EVENT_MISTRALTON_CAVE_1F_BOULDER_3
	object_event 12, 17, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHiker1MistraltonCave1F, -1
	object_event 18,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHiker2MistraltonCave1F, -1
	itemball_event 23,  4, NUGGET, 1, EVENT_MISTRALTON_CAVE_1F_NUGGET
	itemball_event 12, 14, SMOOTH_ROCK, 1, EVENT_MISTRALTON_CAVE_1F_SMOOTH_ROCK
	
	object_const_def
	const MISTRALTONCAVE1F_BOULDER_1
	const MISTRALTONCAVE1F_BOULDER_2
	const MISTRALTONCAVE1F_BOULDER_3
	
MistraltonCave1FSetTiles:
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_1
	iffalsefwd .next
	changeblock  6, 12, $6f
.next
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_2
	iffalsefwd .next2
	changeblock 16, 18, $6f
.next2
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_3
	iffalsefwd .done
	changeblock  8,  4, $6f
.done
	endcallback
	
MistraltonCave1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 2, MISTRALTONCAVE1F_BOULDER_1, .Disappear1
	stonetable 3, MISTRALTONCAVE1F_BOULDER_2, .Disappear2
	stonetable 4, MISTRALTONCAVE1F_BOULDER_3, .Disappear3
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear MISTRALTONCAVE1F_BOULDER_1
	changeblock  6, 12, $6f
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear MISTRALTONCAVE1F_BOULDER_2
	changeblock 16, 18, $6f
	sjumpfwd .DoneBoulder
	
.Disappear3:
	scall .FX
	disappear MISTRALTONCAVE1F_BOULDER_3
	changeblock  8,  4, $6f
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
	
TrainerHiker1MistraltonCave1F:
	generictrainer HIKER, HIKER_MISTRALTON_CAVE_1, EVENT_BEAT_HIKER_MISTRALTON_CAVE_1, .SeenText, .BeatenText

	text "Mountains are"
	line "sacred places. I"
	
	para "am here to purify"
	line "my heart and mind."
	done
	
.SeenText:
	text "Whooo! Mountain!!"
	done

.BeatenText:
	text "Let the scales"
	line "fall from your"
	cont "eyes!"
	done
	
TrainerHiker2MistraltonCave1F:
	generictrainer HIKER_D, HIKER_MISTRALTON_CAVE_2, EVENT_BEAT_HIKER_MISTRALTON_CAVE_2, .SeenText, .BeatenText

	text "As great as a"
	line "mountain… That's"
	
	para "right! I'll become"
	line "a mountain man!"
	
	para "Oh wait, I suppose"
	line "I already am!"
	done
	
.SeenText:
	text "I'll knock you"
	line "down with mountain"
	cont "power!"
	done

.BeatenText:
	text "Your power is off"
	line "the charts!"
	done
