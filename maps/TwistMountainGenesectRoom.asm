TwistMountainGenesectRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 19, TWIST_MOUNTAIN_2F, 11

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, GENESECT, -1, PAL_MON_PURPLE, OBJECTTYPE_SCRIPT, NO_FORM, TwistMountainGenesectScript, EVENT_TWIST_MOUNTAIN_GENESECT_ROOM_GENESECT
	
	object_const_def
	const TWISTMOUNTAINGENESECTROOM_GENESECT
	
TwistMountainGenesectScript:
	opentext
	writethistext
	text "Seeeeeect!"
	done
	cry GENESECT
	pause 15
	closetext
	loadwildmon GENESECT, 60
	startbattle
	disappear TWISTMOUNTAINGENESECTROOM_GENESECT
	reloadmapafterbattle
	end
