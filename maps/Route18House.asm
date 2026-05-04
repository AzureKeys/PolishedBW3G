Route18House_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_18, 1
	warp_event  3,  7, ROUTE_18, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, Route18HouseHealerScript, -1
	
Route18HouseHealerScript:
	showtextfaceplayer .IntroText
	special FadeOutPalettes
	special LoadMapPalettes
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes_EnableDynNoApply
	showtext .DoneText
	end
	
.IntroText:
	text "Oh, you must have"
	line "traveled a long"
	cont "way to get here."

	para "You should let"
	line "your #mon rest."
	done
	
.DoneText:
	text "Good luck with"
	line "your journey!"
	done
