IcirrusRocketHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ICIRRUS_CITY_SOUTH, 2
	warp_event  3,  7, ICIRRUS_CITY_SOUTH, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusRocketHouseWifeScript, -1
	object_event  2,  4, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusRocketHouseManText, -1
	
IcirrusRocketHouseManText:
	text "Oh! Member of Team"
	line "Rocket I was, long"
	cont "time gone!"
	
	para "But Team Rocket"
	line "bye-bye a go-go."
	
	para "I my region went"
	line "home. Make new"
	
	para "Team Rocket, I"
	line "did! So myself I"
	cont "pledged!"
	
	para "But now I married"
	line "am. Now for Team"
	
	para "Rocket there is no"
	line "time by me."
	
	para "But happy family"
	line "is big hooray!"
	done
	
IcirrusRocketHouseWifeScript:
	faceplayer
	checkevent EVENT_GOT_ZOOM_LENS
	iftrue_jumptext .GotLensText
	opentext
	writethistext
	text "Hey! I have a lot"
	line "of souvenirs that"
	
	para "my husband's old"
	line "coworkers gave me."
	
	para "Maybe you can take"
	line "one off my hands."
	done
	promptbutton
	verbosegiveitem ZOOM_LENS
	iffalsefwd .done
	setevent EVENT_GOT_ZOOM_LENS
	writetext .GotLensText
	waitbutton
.done
	closetext
	end
	
.GotLensText:
	text "That lens will"
	line "make your #mon"
	
	para "more accurate with"
	line "its attacks. But"
	
	para "it'll only work if"
	line "the opponent has"
	cont "already moved."
	done
