ClayTunnelConnector_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, ClayTunnelConnectorTileScript
	callback MAPCALLBACK_STONETABLE, ClayTunnelConnectorBoulderCallback

	def_warp_events
	warp_event  6,  5, CLAY_TUNNEL_CONNECTOR, 2 ; hole
	warp_event  2,  4, CLAY_TUNNEL_B2F, 3
	
	def_coord_events

	def_bg_events
	bg_event 15,  2, BGEVENT_READ, ClayTunnelConnectorMinecart1Script
	bg_event 19,  6, BGEVENT_READ, ClayTunnelConnectorMinecart2Script
	bg_event  9,  4, BGEVENT_READ, ClayTunnelConnectorMinecart3Script
	
	def_object_events
	strengthboulder_event  5,  5, EVENT_CLAY_TUNNEL_CONNECTOR_BOULDER
	
	object_const_def
	const CLAYTUNNELCONNECTOR_BOULDER
	
ClayTunnelConnectorTileScript:
	checkevent EVENT_CLAY_TUNNEL_CONNECTOR_BOULDER
	iffalsefwd .done
	changeblock  6,  4, $ab
.done
	endcallback
	
ClayTunnelConnectorBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 1, CLAYTUNNELCONNECTOR_BOULDER, .Disappear
	db -1 ;end
	
.Disappear:
	scall .FX
	disappear CLAYTUNNELCONNECTOR_BOULDER
	changeblock  6,  4, $ab
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
	
ClayTunnelConnectorMinecart1Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_1F, 16,  6
.done
	closetext
	end
	
ClayTunnelConnectorMinecart2Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_B2F, 26, 44
.done
	closetext
	end
	
ClayTunnelConnectorMinecart3Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_B2F, 26, 22
.done
	closetext
	end
