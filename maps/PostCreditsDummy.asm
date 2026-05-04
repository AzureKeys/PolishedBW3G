PostCreditsDummy_MapScriptHeader:
	def_scene_scripts
	scene_script PostCreditsDummyTrigger0

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PostCreditsDummy_DisappearPlayer

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	
PostCreditsDummyTrigger0:
	sdefer PostCreditsDummy_LoadScene
	end
	
PostCreditsDummy_DisappearPlayer:
	disappear PLAYER
	endcallback

PostCreditsDummy_LoadScene:
	warp CHAMPIONS_ROOM,  7, 13
	end
