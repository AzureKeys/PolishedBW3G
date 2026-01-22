RelicCastleB4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  2, RELIC_CASTLE_B3F, 3
	warp_event  8,  5, RELIC_CASTLE_B4F, 3
	warp_event 23, 21, RELIC_CASTLE_B4F, 2
	warp_event 19,  9, RELIC_CASTLE_B4F, 5
	warp_event 12, 15, RELIC_CASTLE_B4F, 4
	
	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 18,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LARVESTA, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, NO_FORM, RelicCastleB4FLarvestaScript, EVENT_RELIC_CASTLE_B4F_LARVESTA
	object_event  8,  8, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_ITEMBALL, PLAYEREVENT_ITEMBALL, COVER_FOSSIL, 1, EVENT_RELIC_CASTLE_B4F_COVER_FOSSIL
	object_event  9,  8, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_ITEMBALL, PLAYEREVENT_ITEMBALL, PLUME_FOSSIL, 1, EVENT_RELIC_CASTLE_B4F_PLUME_FOSSIL
	
	object_const_def
	const RELICCASTLEB4F_LARVESTA
	
RelicCastleB4FLarvestaScript:
	opentext
	writethistext
	text "Screee!"
	done
	cry LARVESTA
	pause 15
	closetext
	loadwildmon LARVESTA, 30
	startbattle
	disappear RELICCASTLEB4F_LARVESTA
	reloadmapafterbattle
	end
