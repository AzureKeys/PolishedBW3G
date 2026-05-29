ClayTunnelB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, ClayTunnelB1FTileScript
	callback MAPCALLBACK_STONETABLE, ClayTunnelB1FBoulderCallback

	def_warp_events
	warp_event 14,  9, CLAY_TUNNEL_B1F, 2 ; hole
	warp_event 13,  9, CLAY_TUNNEL_B1F, 2 ; spawn after fall in hole
	warp_event  3, 28, CLAY_TUNNEL_B1F, 2 ; hole

	def_coord_events

	def_bg_events
	bg_event 21,  4, BGEVENT_READ, ClayTunnelB1FMinecart1Script
	bg_event  9,  2, BGEVENT_READ, ClayTunnelB1FMinecart2Script
	
	def_object_events
	strengthboulder_event 16,  9, EVENT_CLAY_TUNNEL_B1F_BOULDER_1
	strengthboulder_event  3, 26, EVENT_CLAY_TUNNEL_B1F_BOULDER_2
	
	object_const_def
	const CLAYTUNNELB1F_BOULDER_1
	const CLAYTUNNELB1F_BOULDER_2
	
ClayTunnelB1FTileScript:
	checkevent EVENT_CLAY_TUNNEL_B1F_BOULDER_1
	iffalsefwd .check2
	changeblock 14,  8, $ab
.check2
	checkevent EVENT_CLAY_TUNNEL_B1F_BOULDER_2
	iffalsefwd .done
	changeblock  2, 28, $6f
.done
	endcallback
	
ClayTunnelB1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 1, CLAYTUNNELB1F_BOULDER_1, .Disappear1
	stonetable 3, CLAYTUNNELB1F_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear CLAYTUNNELB1F_BOULDER_1
	changeblock 14,  8, $ab
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear CLAYTUNNELB1F_BOULDER_2
	changeblock  2, 28, $6f
	; fallthrough
.DoneBoulder:
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
	
ClayTunnelB1FMinecart1Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_1F, 20, 26
.done
	closetext
	end
	
ClayTunnelB1FMinecart2Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing UP, CLAY_TUNNEL_B2F, 15, 54
.done
	closetext
	end
