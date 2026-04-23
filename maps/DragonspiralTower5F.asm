DragonspiralTower5F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 19, DRAGONSPIRAL_TOWER_4F, 3
	warp_event  9, 19, DRAGONSPIRAL_TOWER_4F, 4
	warp_event  8,  0, DRAGONSPIRAL_TOWER_6F, 1
	warp_event  9,  0, DRAGONSPIRAL_TOWER_6F, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  9,  2, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTower5FGorm, EVENT_DRAGONSPIRAL_TOWER_SAGES
	itemball_event 16,  8, PP_MAX, 1, EVENT_DRAGONSPIRAL_TOWER_5F_PP_MAX
	itemball_event 10,  7, MAX_REVIVE, 1, EVENT_DRAGONSPIRAL_TOWER_5F_MAX_REVIVE
	itemball_event  3, 11, NUGGET, 1, EVENT_DRAGONSPIRAL_TOWER_5F_NUGGET
	
TrainerDragonspiralTower5FGorm:
	trainer GORM, 2, EVENT_BEAT_GORM_IN_DRAGONSPIRAL_TOWER, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .AfterText
	end
	
.SeenText:
	text "… … … …"
	
	para "Team Plasma…"
	done
	
.BeatenText:
	text "…"
	done
	
.AfterText:
	text "Team Plasma…"
	
	para "The seven Sages…"
	
	para "… … … …"
	
	para "Are we… being"
	line "used…?"
	
	para "The dream…"
	
	para "The dream is over…"
	done
