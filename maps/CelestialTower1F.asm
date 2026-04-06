CelestialTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, ROUTE_7_SOUTH, 2
	warp_event  5, 11, ROUTE_7_SOUTH, 2
	warp_event  2,  9, CELESTIAL_TOWER, 1
	warp_event  2, 10, CELESTIAL_TOWER, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  6, SPRITE_SKYLA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, CelestialTowerSkylaScript, EVENT_CELESTIAL_TOWER_1F_SKYLA
	object_event  3,  9, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 0, TrainerNurseCelestialTower, -1
	
	object_const_def
	const CELESTIALTOWER1F_SKYLA
	
CelestialTowerSkylaScript:
	faceplayer
	showtext .SkylaText
	readvar VAR_FACING
	ifequalfwd UP, .GoAround
	applymovement CELESTIALTOWER1F_SKYLA, .NormalMovement
	sjumpfwd .DoneMoving
.GoAround
	applymovement CELESTIALTOWER1F_SKYLA, .GoAroundMovement
.DoneMoving
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear CELESTIALTOWER1F_SKYLA
	setmapscene MISTRALTON_CITY, 1 ; can enter gym
	end
	
.NormalMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
.GoAroundMovement:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
.SkylaText:
	text "Hi, I'm Skyla!"
	line "I'm the Mistralton"
	cont "City Gym Leader."

	para "Did you come to"
	line "honor the spirits?"
	
	para "Whenever I'm here,"
	line "I always feel so"
	cont "zen."
	
	para "You know what I"
	line "mean?"
	
	para "What?"
	
	para "Oh! You wanted to"
	line "battle me at the"
	cont "Gym?"
	
	para "Hee hee, I guess I"
	line "lost track of"
	cont "time. Whoops!"
	
	para "I'd better get"
	line "back to town."
	
	para "Come by if you"
	line "want to challenge"
	cont "me!"
	done
	
TrainerNurseCelestialTower:
	trainer NURSE, NURSE_CELESTIAL_TOWER, EVENT_BEAT_NURSE_CELESTIAL_TOWER, .SeenText, .BeatenText, 0, .Script

.Script:
	showtext .HealText
	playsound SFX_FULL_HEAL
	special HealParty
	end

.SeenText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "mon trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#mon."
	done
	
.BeatenText:
	text "Ah, I see."
	done
	
.HealText:
	text "I'll restore your"
	line "#mon back to"
	cont "full health."
	done
