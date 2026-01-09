Route16LostlornGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, LOSTLORN_FOREST, 2
	warp_event  0,  5, LOSTLORN_FOREST, 3
	warp_event  9,  4, ROUTE_16, 1
	warp_event  9,  5, ROUTE_16, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, R16LostlornGateOfficerText, -1
	object_event  1,  3, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, R16LostlornGateNurseScript, -1
	
R16LostlornGateOfficerText:
	text "There are trainers"
	line "out on the road."

	para "It's a good place"
	line "to train."
	done
	
R16LostlornGateNurseScript:
	faceplayer
	showtext .HealText
	special FadeOutPalettes
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	waitsfx
	jumpthistext
	text "There, that should"
	line "do it."
	
	para "Be careful out"
	line "there!"
	done
	
.HealText:
	text "Oh dear, your"
	line "#mon look"
	
	para "tired. There are"
	line "trainers out on"
	
	para "Route 16, you"
	line "should let them"
	
	para "rest before going"
	line "out. Here, let"
	cont "me see…"
	done
