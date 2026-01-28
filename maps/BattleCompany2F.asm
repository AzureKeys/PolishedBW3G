BattleCompany2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  0, BATTLE_COMPANY_1F, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleCompany2FScientistMScript, -1
	object_event  0,  7, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleCompany2FScientistFScript, -1
	object_event  5,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleCompany2FOfficerText, -1
	
BattleCompany2FScientistMScript:
	faceplayer
	checkevent EVENT_GOT_BATTLE_COMPANY_HYPER_POTION
	iftrue_jumptext BattleCompany2FScientistBusyText
	opentext
	writetext BattleCompany2FScientistBusyText
	promptbutton
	writetext BattleCompany2FScientistGiveItemText
	promptbutton
	verbosegiveitem HYPER_POTION
	iffalsefwd .done
	setevent EVENT_GOT_BATTLE_COMPANY_HYPER_POTION
.done
	closetext
	end
	
BattleCompany2FScientistFScript:
	faceplayer
	checkevent EVENT_GOT_BATTLE_COMPANY_REVIVE
	iftrue_jumptext BattleCompany2FScientistBusyText
	opentext
	writetext BattleCompany2FScientistBusyText
	promptbutton
	writetext BattleCompany2FScientistGiveItemText
	promptbutton
	verbosegiveitem REVIVE
	iffalsefwd .done
	setevent EVENT_GOT_BATTLE_COMPANY_REVIVE
.done
	closetext
	end
	
BattleCompany2FScientistBusyText:
	text "I'm busy working"
	line "on products for"
	cont "#mon trainers."
	done

BattleCompany2FScientistGiveItemText:
	text "Here, this may"
	line "help you!"
	done

BattleCompany2FOfficerText:
	text "Sorry, we don't"
	line "allow visitors"
	cont "past this floor."
	done
