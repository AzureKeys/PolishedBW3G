DragonspiralTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12, 14, DRAGONSPIRAL_TOWER_2F, 3
	warp_event 12, 15, DRAGONSPIRAL_TOWER_2F, 4
	warp_event  2,  2, DRAGONSPIRAL_TOWER_4F, 1
	warp_event  2,  3, DRAGONSPIRAL_TOWER_4F, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  4, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTower3FRyoku, EVENT_DRAGONSPIRAL_TOWER_SAGES
	itemball_event  9,  6, REVIVE, 3, EVENT_DRAGONSPIRAL_TOWER_3F_REVIVE
	itemball_event 14,  1, IRON, 1, EVENT_DRAGONSPIRAL_TOWER_3F_IRON
	itemball_event  8,  9, LIGHT_CLAY, 1, EVENT_DRAGONSPIRAL_TOWER_3F_LIGHT_CLAY
	
TrainerDragonspiralTower3FRyoku:
	trainer RYOKU, 2, EVENT_BEAT_RYOKU_IN_DRAGONSPIRAL_TOWER, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .AfterText
	end
	
.SeenText:
	text "I… I will once"
	line "again test how"
	
	para "much power you"
	line "have. I will see"
	
	para "if you can stand"
	line "up to Team Plasma!"
	done
	
.BeatenText:
	text "I- I can't…"
	done
	
.AfterText:
	text "I've done every-"
	line "thing in my power."
	
	para "I can only do my"
	line "best and leave the"
	cont "rest up to fate."
	done
