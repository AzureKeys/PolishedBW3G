TwistMountainEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, TwistMountainEntranceBoulderHole
	callback MAPCALLBACK_STONETABLE, TwistMountainEntranceBoulderCallback

	def_warp_events
	warp_event  3,  7, ROUTE_7_NORTH, 1
	warp_event  7,  1, TWIST_MOUNTAIN_OUTSIDE, 1
	warp_event  3,  4, TWIST_MOUNTAIN_ENTRANCE, 1 ; hole
	
	def_coord_events

	def_bg_events
	
	def_object_events
	strengthboulder_event  5,  3, EVENT_TWIST_MOUNTAIN_ENTRANCE_BOULDER
	itemball_event  3,  5, CHOICE_BAND, 1, EVENT_TWIST_MOUNTAIN_ENTRANCE_CHOICE_BAND
	
	object_const_def
	const TWISTMOUNTAINENTRANCE_BOULDER
	
TwistMountainEntranceBoulderHole:
	checkevent EVENT_TWIST_MOUNTAIN_ENTRANCE_BOULDER
	iffalsefwd .done
	changeblock  2,  4, $6f
.done
	endcallback
	
TwistMountainEntranceBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, TWISTMOUNTAINENTRANCE_BOULDER, .Disappear
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
	disappear TWISTMOUNTAINENTRANCE_BOULDER
	changeblock  2,  4, $6f
	refreshmap
	waitbutton
	closetext
	end
	