TwistMountainHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, TWIST_MOUNTAIN_OUTSIDE, 17
	warp_event  3,  7, TWIST_MOUNTAIN_OUTSIDE, 17

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TwistMountainHouseHealerScript, -1
	
TwistMountainHouseHealerScript:
	showtextfaceplayer .IntroText
	special FadeOutPalettes
	special LoadMapPalettes
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes_EnableDynNoApply
	showtext .DoneText
	end
	
.IntroText:
	text "Howdy traveler!"
	line "You must've come a"
	
	para "long way to get"
	line "here. How's about"

	para "a little rest for"
	line "your #mon, eh?"
	done
	
.DoneText:
	text "Be careful out"
	line "there now, hear?"
	done
