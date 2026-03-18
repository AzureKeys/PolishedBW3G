MistraltonCave3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MistraltonCave3FSetTiles
	callback MAPCALLBACK_STONETABLE, MistraltonCave3FBoulderCallback

	def_warp_events
	warp_event 15, 23, MISTRALTON_CAVE_2F, 5
	warp_event 15, 12, MISTRALTON_CAVE_3F, 1 ; hole
	warp_event 11, 18, MISTRALTON_CAVE_3F, 1 ; hole
	
	def_coord_events

	def_bg_events
	bg_event  6, 10, BGEVENT_ITEM + ELIXIR, EVENT_MISTRALTON_CAVE_3F_ELIXIR
	bg_event  3, 21, BGEVENT_ITEM + ULTRA_BALL, EVENT_MISTRALTON_CAVE_3F_ULTRA_BALL
	
	def_object_events
	strengthboulder_event 15, 10, EVENT_MISTRALTON_CAVE_3F_BOULDER_1
	strengthboulder_event 13, 15, EVENT_MISTRALTON_CAVE_3F_BOULDER_2
	itemball_event 25,  4, RARE_CANDY, 1, EVENT_MISTRALTON_CAVE_3F_RARE_CANDY
	itemball_event  7,  8, IRON, 1, EVENT_MISTRALTON_CAVE_3F_IRON
	itemball_event 16,  4, YELLOW_SHARD, 1, EVENT_MISTRALTON_CAVE_3F_YELLOW_SHARD
	itemball_event  6, 19, GREEN_SHARD, 1, EVENT_MISTRALTON_CAVE_3F_GREEN_SHARD
	tmhmball_event  5,  3, TM_STONE_EDGE, EVENT_MISTRALTON_CAVE_3F_TM_STONE_EDGE
	
	object_const_def
	const MISTRALTONCAVE3F_BOULDER_1
	const MISTRALTONCAVE3F_BOULDER_2
	
MistraltonCave3FSetTiles:
	checkevent EVENT_MISTRALTON_CAVE_3F_BOULDER_1
	iffalsefwd .next
	changeblock 14, 12, $6f
.next
	checkevent EVENT_MISTRALTON_CAVE_3F_BOULDER_2
	iffalsefwd .done
	changeblock 10, 18, $6f
.done
	endcallback
	
MistraltonCave3FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 2, MISTRALTONCAVE3F_BOULDER_1, .Disappear1
	stonetable 3, MISTRALTONCAVE3F_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear MISTRALTONCAVE3F_BOULDER_1
	changeblock 14, 12, $6f
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear MISTRALTONCAVE3F_BOULDER_2
	changeblock 10, 18, $6f
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
