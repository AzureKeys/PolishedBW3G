Route6House_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_6, 4
	warp_event  3,  7, ROUTE_6, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route6HouseHealerScript, -1
	
Route6HouseHealerScript:
	showtextfaceplayer .IntroText
	special FadeOutPalettes
	special LoadMapPalettes
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes_EnableDynNoApply
	showtext .DoneText
	end
	
.IntroText:
	text "Oh, your #mon"
	line "look tired. You"

	para "should let them"
	line "rest for a bit."
	done
	
.DoneText:
	text "Your #mon are"
	line "all refreshed!"
	done
