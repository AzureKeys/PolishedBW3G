MarineTubeEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, UNDELLA_TOWN, 5
	warp_event  5, 15, UNDELLA_TOWN, 5
	warp_event  4,  3, MARINE_TUBE, 1
	warp_event  5,  3, MARINE_TUBE, 2
	warp_event 20,  9, HUMILAU_CITY, 7
	warp_event 21,  9, HUMILAU_CITY, 7
	warp_event 20,  4, MARINE_TUBE, 3
	warp_event 21,  4, MARINE_TUBE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 20,  7, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MarineTubeEntranceTeacherScript, -1
	object_event  2,  6, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MarineTubeEntranceCooltrainerFText, -1
	
MarineTubeEntranceTeacherScript:
	checkevent EVENT_GOT_SILK_SCARF
	iftrue_jumptextfaceplayer .GotScarfText
	opentext
	writethistext
	text "Oh, this town is"
	line "so lovely…"

	para "Oh, you're a #-"
	line "mon trainer?"

	para "Here, this may"
	line "help you!"
	done
	
	promptbutton
	verbosegiveitem SILK_SCARF
	iffalsefwd .NoRoom
	setevent EVENT_GOT_SILK_SCARF
	jumpopenedtext .GotScarfText
	
.NoRoom
	closetext
	end
	
.GotScarfText:
	text "That scarf will"
	line "increase the power"

	para "of normal-type"
	line "attacks!"
	done
	
MarineTubeEntranceCooltrainerFText:
	text "The view in the"
	line "tube is so"
	cont "beautiful!"
	
	para "I wish I had"
	line "someone to take me"
	cont "on a date there…"
	done
	