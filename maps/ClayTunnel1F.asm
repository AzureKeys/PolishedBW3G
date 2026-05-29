ClayTunnel1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, ClayTunnel1FTileScript
	callback MAPCALLBACK_STONETABLE, ClayTunnel1FBoulderCallback

	def_warp_events
	warp_event  9, 37, DRIFTVEIL_CITY, 14
	warp_event 10, 17, CLAY_TUNNEL_1F, 3 ; hole
	warp_event  9, 17, CLAY_TUNNEL_1F, 3 ; spawn after fall in hole
	warp_event 15,  6, CLAY_TUNNEL_1F, 3 ; hole

	def_coord_events

	def_bg_events
	bg_event 21, 26, BGEVENT_READ, ClayTunnel1FMinecart1Script
	bg_event  9,  2, BGEVENT_READ, ClayTunnel1FMinecart2Script
	bg_event 17,  6, BGEVENT_READ, ClayTunnel1FMinecart3Script
	
	def_object_events
	strengthboulder_event 10, 15, EVENT_CLAY_TUNNEL_1F_BOULDER_1
	strengthboulder_event 13,  6, EVENT_CLAY_TUNNEL_1F_BOULDER_2
	
	object_const_def
	const CLAYTUNNEL1F_BOULDER_1
	const CLAYTUNNEL1F_BOULDER_2
	
ClayTunnel1FTileScript:
	checkevent EVENT_CLAY_TUNNEL_1F_BOULDER_1
	iffalsefwd .check2
	changeblock 10, 16, $e9
.check2
	checkevent EVENT_CLAY_TUNNEL_1F_BOULDER_2
	iffalsefwd .done
	changeblock 14,  6, $6f
.done
	endcallback
	
ClayTunnel1FBoulderCallback:
	usestonetable .BoulderTable
	endcallback
	
.BoulderTable:
	stonetable 2, CLAYTUNNEL1F_BOULDER_1, .Disappear1
	stonetable 4, CLAYTUNNEL1F_BOULDER_2, .Disappear2
	db -1 ;end
	
.Disappear1:
	scall .FX
	disappear CLAYTUNNEL1F_BOULDER_1
	changeblock 10, 16, $e9
	sjumpfwd .DoneBoulder
	
.Disappear2:
	scall .FX
	disappear CLAYTUNNEL1F_BOULDER_2
	changeblock 14,  6, $6f
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
	
ClayTunnel1FMinecart1Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing LEFT, CLAY_TUNNEL_B1F, 20,  4
.done
	closetext
	end
	
ClayTunnel1FMinecart2Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing DOWN, CLAY_TUNNEL_B2F, 17, 11
.done
	closetext
	end
	
ClayTunnel1FMinecart3Script:
	opentext
	writetext ClayTunnelMinecartText
	yesorno
	iffalsefwd .done
	scall ClayTunnel_MinecartFXScript
	warpfacing DOWN, CLAY_TUNNEL_CONNECTOR, 15,  3
.done
	closetext
	end
	
ClayTunnel_MinecartFXScript:
	closetext
	special Special_FadeOutMusic
	pause 15
	special Special_FadeBlackQuickly
	playsound SFX_ELEVATOR
	pause 60
	playsound SFX_ENTER_DOOR
	waitsfx
	end
	
ClayTunnelMinecartText:
	text "Will you ride the"
	line "minecart?"
	done
	
