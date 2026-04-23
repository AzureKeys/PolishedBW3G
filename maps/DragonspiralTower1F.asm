DragonspiralTower1F_MapScriptHeader:
	def_scene_scripts
	scene_script DragonspiralTower1FTrigger0
	scene_script DragonspiralTower1FTrigger1

	def_callbacks

	def_warp_events
	warp_event  2, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 3
	warp_event  3, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 4
	warp_event  8,  0, DRAGONSPIRAL_TOWER_2F, 1
	warp_event  9,  0, DRAGONSPIRAL_TOWER_2F, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5, 14, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_1F_DRAYDEN
	
	object_const_def
	const DRAGONSPIRALTOWER1F_DRAYDEN
	
DragonspiralTower1FTrigger0:
	sdefer DragonspiralTower1F_DraydenScene
DragonspiralTower1FTrigger1:
	end
	
DragonspiralTower1F_DraydenScene:
	showemote EMOTE_SHOCK, DRAGONSPIRALTOWER1F_DRAYDEN, 15
	applymovement DRAGONSPIRALTOWER1F_DRAYDEN, .ApproachMovement
	showtext .DraydenText
	applymovement DRAGONSPIRALTOWER1F_DRAYDEN, .LeaveMovement
	playsound SFX_ENTER_DOOR
	disappear DRAGONSPIRALTOWER1F_DRAYDEN
	waitsfx
	setscene 1
	end

.ApproachMovement:
	big_step_left
	big_step_left
	big_step_down
	step_end
	
.LeaveMovement:
	step_up
	step_right
	step_right
	step_up
	step_up
	step_end
	
.DraydenText:
	text "Oh! You…"
	
	para "You don't look"
	line "like you're with"
	cont "Team Plasma."
	
	para "You're a trainer,"
	line "right? Are you"
	
	para "looking to take on"
	line "my Gym?"
	
	para "Sorry, but you'll"
	line "have to wait."
	
	para "There's something"
	line "I need to take"
	cont "care of first."
	
	para "You'd better go,"
	line "it could be"
	cont "dangerous."
	
	para "Oh? You say you've"
	line "battled with Team"
	cont "Plasma before?"
	
	para "Well, then I won't"
	line "stop you."
	
	para "This tower is a"
	line "mystical place."
	
	para "It's been the site"
	line "of many rituals."
	
	para "I was informed"
	line "of suspicious"
	
	para "activity going on"
	line "around the tower,"
	
	para "and I fear Team"
	line "Plasma may be"
	
	para "planning something"
	line "dangerous."
	
	para "I'm going on ahead"
	line "up the tower. What"
	
	para "you do now is up"
	line "to you."
	done
