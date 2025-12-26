GiantChasm1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15,  3, ROUTE_22, 2
	warp_event  7, 17, ROUTE_13, 2

	def_coord_events
	coord_event 13, 17, 0, GiantChasm_MeetInferScene

	def_bg_events
	bg_event  5, 14, BGEVENT_ITEM + FULL_HEAL, EVENT_GIANT_CHASM_1F_FULL_HEAL
	
	def_object_events
	object_event 10, 17, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GIANT_CHASM_INFER
	itemball_event  2, 16, PARALYZEHEAL, 1, EVENT_GIANT_CHASM_1F_PARALYZEHEAL
	
	object_const_def
	const GIANTCHASM1F_INFER
	
GiantChasm_MeetInferScene:
	special Special_FadeOutMusic
	pause 15
	opentext
	writetext GiantChasmInferText_Phone
	waitbutton
	closetext
	showemote EMOTE_SHOCK, GIANTCHASM1F_INFER, 15
	turnobject GIANTCHASM1F_INFER, RIGHT
	opentext
	writetext GiantChasmInferText_Leave
	waitbutton
	closetext
	playsound SFX_RUN
	applymovement GIANTCHASM1F_INFER, GiantChasmInferMovement
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	setscene $1
	disappear GIANTCHASM1F_INFER
	special RestartMapMusic
	end
	
GiantChasmInferMovement:
	big_step_left
	big_step_left
	step_end
	
GiantChasmInferText_Phone:
	text "Yes, I have the"
	line "package. I"
	
	para "managed to snag"
	line "it from the Gym"
	
	para "while the leader"
	line "was away. I don't"
	
	para "think the Gym"
	line "Leader followed"
	cont "me."
	done
	
GiantChasmInferText_Leave:
	text "Hey, you!"
	
	para "Get out of here!"
	line "Forget what you"
	cont "saw here!"
	done
