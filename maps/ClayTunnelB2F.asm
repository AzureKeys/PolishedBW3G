ClayTunnelB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, ClayTunnelB2FTileScript
	callback MAPCALLBACK_STONETABLE, ClayTunnelB2FBoulderCallback

	def_warp_events
	warp_event 15, 22, CLAY_TUNNEL_B2F, 2 ; hole
	warp_event 14, 22, CLAY_TUNNEL_B2F, 2 ; spawn after fall in hole
	warp_event 27, 28, CLAY_TUNNEL_CONNECTOR, 2

	def_coord_events

	def_bg_events
	bg_event 15, 55, BGEVENT_READ, ClayTunnelB2FMinecart1Script
	bg_event 17, 10, BGEVENT_READ, ClayTunnelB2FMinecart2Script
	bg_event 27, 44, BGEVENT_READ, ClayTunnelB2FMinecart3Script
	bg_event 27, 22, BGEVENT_READ, ClayTunnelB2FMinecart4Script
	
	def_object_events
	strengthboulder_event 17, 22, EVENT_CLAY_TUNNEL_B2F_BOULDER
	
	object_const_def
	const CLAYTUNNELB2F_BOULDER
	
ClayTunnelB2FTileScript:
	checkevent EVENT_CLAY_TUNNEL_B2F_BOULDER
	iffalsefwd .done
	changeblock 14, 22, $6f
.done
	endcallback
	
ClayTunnelB2FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 1, CLAYTUNNELB2F_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	scall .FX
	disappear CLAYTUNNELB2F_BOULDER
	changeblock 14, 22, $6f
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
	
ClayTunnelB2FMinecart1Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing DOWN, CLAY_TUNNEL_B1F,  9,  3
.done
	closetext
	end
	
ClayTunnelB2FMinecart2Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing DOWN, CLAY_TUNNEL_1F,  9,  3
.done
	closetext
	end
	
ClayTunnelB2FMinecart3Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_CONNECTOR, 18,  6
.done
	closetext
	end
	
ClayTunnelB2FMinecart4Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing DOWN, CLAY_TUNNEL_CONNECTOR,  9,  5
.done
	closetext
	end
