P2LabEntrance_MapScriptHeader:
	def_scene_scripts
	scene_script P2LabEntranceTrigger0
	scene_script P2LabEntranceTrigger1
	scene_script P2LabEntranceTrigger2

	def_callbacks

	def_warp_events
	warp_event  4,  9, ROUTE_17, 3
	warp_event  5,  9, ROUTE_17, 3
	warp_event  9,  2, P2_LAB, 1

	def_coord_events
	coord_event  8,  3, 0, P2LabEntranceJuniperScript

	def_bg_events

	def_object_events
	object_event  8,  2, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_ENTRANCE_JUNIPER

	object_const_def
	const P2LABENTRANCE_JUNIPER
	
P2LabEntranceTrigger1:
	sdefer P2LabEntrance_BeatP2LabScene
P2LabEntranceTrigger0:
P2LabEntranceTrigger2:
	end
	
P2LabEntranceJuniperScript:
	turnobject PLAYER, UP
	turnobject P2LABENTRANCE_JUNIPER, DOWN
	showtext .JuniperText
	applymovement P2LABENTRANCE_JUNIPER, .Movement
	playsound SFX_ENTER_DOOR
	disappear P2LABENTRANCE_JUNIPER
	waitsfx
	setscene 2
	end
.Movement:
	step_right
	step_end

.JuniperText:
	text "Juniper: <PLAYER>!"
	line "It's just as I"
	
	para "suspected, there's"
	line "a secret entrance."

	para "After Team Plasma"
	line "was shut down,"
	
	para "their labs and"
	line "hideouts were"
	cont "raided."
	
	para "They found some"
	line "pretty dangerous"
	cont "technology…"
	
	para "I wonder what Team"
	line "Plasma could be"
	cont "after here…"
	
	para "Come on, <PLAYER>,"
	line "let's go."
	done
	
P2LabEntrance_BeatP2LabScene:
	turnobject PLAYER, RIGHT
	moveobject P2LABENTRANCE_JUNIPER,  5,  7
	appear P2LABENTRANCE_JUNIPER
	turnobject P2LABENTRANCE_JUNIPER, LEFT
	showtext .JuniperText
	applymovement P2LABENTRANCE_JUNIPER, .Movement
	playsound SFX_ENTER_DOOR
	disappear P2LABENTRANCE_JUNIPER
	setscene 2
	setevent EVENT_BEAT_P2_LAB
	setevent EVENT_NUVEMA_LAB_BIANCA ; Bianca is at PWT now
	setevent EVENT_P2_LAB_GRUNTS
	specialphonecall SPECIALCALL_BIANCA_P2
	waitsfx
	end
.Movement:
	step_down
	step_down
	step_end
	
.JuniperText:
	text "Juniper: Thanks"
	line "for your help,"
	cont "<PLAYER>."

	para "I hope to meet you"
	line "again on your"
	cont "travels."
	done
