TwistMountainB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, TwistMountainB1FTileScript
	callback MAPCALLBACK_STONETABLE, TwistMountainB1FBoulderCallback

	def_warp_events
	warp_event  3, 15, TWIST_MOUNTAIN_1F, 8
	warp_event 21, 15, CLAY_TUNNEL_B2F, 4
	warp_event 21, 12, TWIST_MOUNTAIN_B1F, 2 ; hole

	def_coord_events

	def_bg_events
	bg_event 15, 14, BGEVENT_ITEM + ELIXIR, EVENT_TWIST_MOUNTAIN_B1F_ELIXIR
	
	def_object_events
	strengthboulder_event 21, 10, EVENT_TWIST_MOUNTAIN_B1F_BOULDER
	itemball_event 11,  5, BLUE_SHARD, 1, EVENT_TWIST_MOUNTAIN_B1F_BLUE_SHARD
	itemball_event 16,  7, REVIVE, 3, EVENT_TWIST_MOUNTAIN_B1F_REVIVE
	itemball_event 17, 15, LUCKY_EGG, 1, EVENT_TWIST_MOUNTAIN_B1F_LUCKY_EGG
	
	object_const_def
	const TWISTMOUNTAINB1F_BOULDER
	
TwistMountainB1FTileScript:
	checkevent EVENT_TWIST_MOUNTAIN_B1F_BOULDER
	iffalsefwd .done
	changeblock 20, 12, $6f
.done
	endcallback
	
TwistMountainB1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 3, TWISTMOUNTAINB1F_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	scall .FX
	disappear TWISTMOUNTAINB1F_BOULDER
	changeblock 20, 12, $6f
	refreshmap
	waitbutton
	closetext
	end

.FX:
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writethistext
	text "The boulder fell"
	line "through!"
	done
	end
