DragonspiralTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, DragonspiralTower2FTileScript
	callback MAPCALLBACK_STONETABLE, DragonspiralTower2FBoulderCallback

	def_warp_events
	warp_event  8, 21, DRAGONSPIRAL_TOWER_1F, 3
	warp_event  9, 21, DRAGONSPIRAL_TOWER_1F, 4
	warp_event  2,  8, DRAGONSPIRAL_TOWER_3F, 1
	warp_event  2,  9, DRAGONSPIRAL_TOWER_3F, 2
	warp_event  6, 11, DRAGONSPIRAL_TOWER_2F, 1 ; hole

	def_coord_events
	coord_event  2,  6, 1, DragonspiralTower2FBridgeOverheadTrigger
	coord_event  3,  6, 1, DragonspiralTower2FBridgeOverheadTrigger
	coord_event  3,  4, 0, DragonspiralTower2FBridgeUnderfootTrigger
	coord_event  3,  5, 0, DragonspiralTower2FBridgeUnderfootTrigger
	coord_event 14,  4, 0, DragonspiralTower2FBridgeUnderfootTrigger
	coord_event 14,  5, 0, DragonspiralTower2FBridgeUnderfootTrigger
	coord_event 15,  4, 1, DragonspiralTower2FBridgeOverheadTrigger
	coord_event 15,  5, 1, DragonspiralTower2FBridgeOverheadTrigger
	coord_event  8, 20, 1, DragonspiralTower2FBridgeOverheadTrigger
	coord_event  9, 20, 1, DragonspiralTower2FBridgeOverheadTrigger

	def_bg_events
	
	def_object_events
	strengthboulder_event  6, 10, EVENT_DRAGONSPIRAL_TOWER_2F_BOULDER
	object_event  2,  7, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTower2FGiallo, EVENT_DRAGONSPIRAL_TOWER_SAGES
	itemball_event 10, 15, ELIXIR, 1, EVENT_DRAGONSPIRAL_TOWER_2F_ELIXIR
	itemball_event  4, 15, FULL_RESTORE, 3, EVENT_DRAGONSPIRAL_TOWER_2F_FULL_RESTORE
	
	object_const_def
	const DRAGONSPIRALTOWER2F_BOULDER
	
DragonspiralTower2FTileScript:
	checkevent EVENT_DRAGONSPIRAL_TOWER_2F_BOULDER
	iffalsefwd .CheckBridge
	changeblock  6, 10, $11
.CheckBridge
	checkscene
	iftruefwd .underfoot
	callasm .overhead_asm
	endcallback
.underfoot
	callasm .underfoot_asm
	endcallback

.overhead_asm:
	changebridgeblock  2,  4, $a6, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  4,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  6,  4, $9c, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  8,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 10,  4, $9c, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 12,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 14,  4, $a0, DRAGONSPIRAL_TOWER_2F
	jmp BufferScreen

.underfoot_asm:
	changebridgeblock  2,  4, $a8, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  4,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  6,  4, $aa, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  8,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 10,  4, $aa, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 12,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 14,  4, $ab, DRAGONSPIRAL_TOWER_2F
	jmp BufferScreen
	
DragonspiralTower2FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 5, DRAGONSPIRALTOWER2F_BOULDER, .Disappear
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
	disappear DRAGONSPIRALTOWER2F_BOULDER
	changeblock  6, 10, $11
	refreshmap
	waitbutton
	closetext
	end
	
DragonspiralTower2FBridgeOverheadTrigger:
	callthisasm
	changebridgeblock  2,  4, $a6, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  4,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  6,  4, $9c, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  8,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 10,  4, $9c, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 12,  4, $9d, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 14,  4, $a0, DRAGONSPIRAL_TOWER_2F

	xor a
	jr DragonspiralTower2F_FinishBridge
	
DragonspiralTower2FBridgeUnderfootTrigger:
	callthisasm
	changebridgeblock  2,  4, $a8, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  4,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  6,  4, $aa, DRAGONSPIRAL_TOWER_2F
	changebridgeblock  8,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 10,  4, $aa, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 12,  4, $a9, DRAGONSPIRAL_TOWER_2F
	changebridgeblock 14,  4, $ab, DRAGONSPIRAL_TOWER_2F

	ld a, $1
DragonspiralTower2F_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wDragonspiralTower2FSceneID], a
	jmp GenericFinishBridge
	
TrainerDragonspiralTower2FGiallo:
	trainer GIALLO, 2, EVENT_BEAT_GIALLO_IN_DRAGONSPIRAL_TOWER, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .AfterText
	end
	
.SeenText:
	text "So, you've come."
	line "We, the Sages of"
	
	para "Team Plasma shall"
	line "defeat you here!"
	done
	
.BeatenText:
	text "Y-you!"
	done
	
.AfterText:
	text "Those in accord"
	line "with fate are pre-"
	cont "served, and those"
	
	para "who rebel against"
	line "fate perish!"
	done
