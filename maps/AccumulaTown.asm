AccumulaTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AccumulaFlyPoint

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 24, 14, BGEVENT_JUMPTEXT, AccumulaTownSignText
	bg_event 10,  9, BGEVENT_ITEM + MAX_REPEL, EVENT_ACCUMULA_TOWN_MAX_REPEL
	
	def_object_events
	object_event 19, 19, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaTownRyokuScript, EVENT_ACCUMULA_TOWN_BLOCKERS
		
	object_const_def
	const ACCUMULATOWN_RYOKU
	
AccumulaFlyPoint:
	setflag ENGINE_FLYPOINT_ACCUMULA
	endcallback
	
AccumulaTownRyokuScript:
	end
	
AccumulaTownSignText:
	text "Accumula Town."
	
	para "The fast-growing"
	line "town!"
	done
