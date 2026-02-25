StriatonLab_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  6, STRIATON_CITY, 3
	warp_event  0,  7, STRIATON_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_UP, StriatonLabPCScript
	bg_event  7,  2, BGEVENT_UP, StriatonLabPCScript
	bg_event  7,  4, BGEVENT_UP, StriatonLabPCScript
	
	def_object_events
	object_event  5,  5, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, StriatonLabFennelScript, -1
	object_event  1,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, StriatonLabScientistText, -1
	
StriatonLabFennelScript:
	faceplayer
	checkevent EVENT_GOT_METAL_COAT_FROM_FENNEL
	iftrue_jumptext .GotCoatText
	opentext
	writethistext
	text "Hi, are you a"
	line "#mon trainer?"

	para "I'm Dr.Fennel!"
	line "I do research to"
	
	para "develop products"
	line "for #mon"
	cont "trainers."
	
	para "Here, this might"
	line "be helpful to you."
	done
	promptbutton
	verbosegiveitem METAL_COAT
	iffalsefwd .done
	setevent EVENT_GOT_METAL_COAT_FROM_FENNEL
	writetext .GotCoatText
	waitbutton
.done
	closetext
	end
	
.GotCoatText:
	text "That item will"
	line "increase the power"
	
	para "of any Steel moves"
	line "used by the #-"
	cont "mon holding it."
	
	para "It's also said"
	line "that some #mon"
	
	para "Can use it to"
	line "evolve!"
	
	para "I'm sure you'll"
	line "find it useful!"
	done

StriatonLabScientistText:
	text "Sorry, there are"
	line "important experi-"
	cont "ments taking place"
	cont "upstairs."
	done

StriatonLabPCScript:
	jumpthistext
	text "There is complex"
	line "code running on"
	cont "the PC."

	para "Better not touch"
	line "it!"
	done
