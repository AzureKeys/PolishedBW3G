BattleCompany1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CASTELIA_CITY_SOUTH, 14
	warp_event  3,  7, CASTELIA_CITY_SOUTH, 14
	warp_event  3,  0, BATTLE_COMPANY_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_JUMPTEXT, BattleCompany1FSignText
	
	def_object_events
	object_event  4,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BattleCompanyPresidentScript, -1
	object_event  7,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleCompany1FReceptionistText, -1
	
BattleCompanyPresidentScript:
	faceplayer
	checkevent EVENT_GOT_EXP_SHARE
	iftrue_jumptext .GotExpShareText
	opentext
	writethistext
	text "Oh, you must be a"
	line "#mon trainer."
	
	para "I'm the President"
	line "of the Battle"
	cont "Company."
	
	para "I'm looking for"
	line "someone to test"
	cont "our new prototype."
	done
	promptbutton
	checkflag ENGINE_INSECTBADGE
	iffalse_jumpopenedtext .NoBadgeText
	writethistext
	text "Ah! You've got a"
	line "good number of"
	cont "Gym badges."
	
	para "Here, take this."
	done
	promptbutton
	verbosegiveitem EXP_SHARE
	iffalsefwd .NoRoom
	setevent EVENT_GOT_EXP_SHARE
	writetext .GotExpShareText
	waitbutton
.NoRoom
	closetext
	end
	
.GotExpShareText:
	text "That's an Exp"
	line "Share!"
	
	para "It will allow you"
	line "to share Exp with"
	
	para "the #mon that's"
	line "holding it, even"
	
	para "if it wasn't in"
	line "the battle!"
	done
	
.NoBadgeText:
	text "Oh, you don't have"
	line "many Gym badges…"
	
	para "Come back and see"
	line "me if you earn at"
	cont "least three."
	done

BattleCompany1FReceptionistText:
	text "Welcome to the"
	line "Battle Company."
	
	para "The second floor"
	line "is open to"
	cont "visitors."
	done
	
BattleCompany1FSignText:
	text "Battle Company."
	
	para "Research and"
	line "development"
	cont "upstairs."
	done
