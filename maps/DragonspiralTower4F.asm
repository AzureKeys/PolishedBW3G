DragonspiralTower4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15,  8, DRAGONSPIRAL_TOWER_3F, 3
	warp_event 15,  9, DRAGONSPIRAL_TOWER_3F, 4
	warp_event  6,  0, DRAGONSPIRAL_TOWER_5F, 1
	warp_event  7,  0, DRAGONSPIRAL_TOWER_5F, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  2, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ORANGE, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTower4FBronius, EVENT_DRAGONSPIRAL_TOWER_SAGES
	itemball_event 12,  2, DRAGON_SCALE, 1, EVENT_DRAGONSPIRAL_TOWER_4F_DRAGON_SCALE
	
TrainerDragonspiralTower4FBronius:
	trainer BRONIUS, 2, EVENT_BEAT_BRONIUS_IN_DRAGONSPIRAL_TOWER, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .AfterText
	end
	
.SeenText:
	text "When I saw you in"
	line "Virbank, I did not"
	
	para "care about your"
	line "existence. Now,"
	
	para "I will put a stop"
	line "to your little"
	
	para "game! You shall"
	line "not interfere with"
	cont "Team Plasma!"
	done
	
.BeatenText:
	text "Accursed trainer!"
	done
	
.AfterText:
	text "When the way is"
	line "forgotten, duty"
	
	para "and justice will"
	line "appear. I… Have I"
	
	para "forgotten the way"
	line "as well…?"
	done
