NimbasaNameRater_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, NIMBASA_CITY, 7
	warp_event  7,  7, NIMBASA_CITY, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  3,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, NimbasaNameRaterScript, -1
	
NimbasaNameRaterScript:
	faceplayer
	opentext
	special SpecialNameRater
	waitendtext
