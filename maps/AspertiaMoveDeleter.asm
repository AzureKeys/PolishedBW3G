AspertiaMoveDeleter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ASPERTIA_CITY, 3
	warp_event  3,  7, ASPERTIA_CITY, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, AspertiaMoveDeleterScript, -1
	
AspertiaMoveDeleterScript:
	faceplayer
	opentext
	special MoveDeletion
	waitendtext
