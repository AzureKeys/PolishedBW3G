IcirrusFanClub_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, ICIRRUS_CITY_NORTH, 3
	warp_event  5, 11, ICIRRUS_CITY_NORTH, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  9, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubScarfGuyScript, -1
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubElectrizerScript, -1
	object_event  7,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubMagmarizerScript, -1
	object_event  4,  9, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusFanClubCooltrainerFText, -1
	object_event  7,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, IcirrusFanClubGentlemanText, -1
	pokemon_event  3,  9, MUNNA, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_PINK, IcirrusFanClubMunnaText, -1
	pokemon_event  6,  6, DUCKLETT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, IcirrusFanClubDucklettText, -1
	
IcirrusFanClubScarfGuyScript:
	end

IcirrusFanClubElectrizerScript:
	checkevent EVENT_GOT_ELECTRIZER
	iftrue_jumptextfaceplayer IcirrusFanClub_GotItemText
	faceplayer
	opentext
	writetext IcirrusFanClub_AskScaleText
	yesorno
	iffalse_jumpopenedtext IcirrusFanClub_DeclinedText
	checkitem HEART_SCALE
	iffalse_jumpopenedtext IcirrusFanClub_NoScaleText
	writetext IcirrusFanClub_ThanksText
	promptbutton
	verbosegiveitem ELECTIRIZER
	iffalsefwd .NoRoom
	takeitem HEART_SCALE
	setevent EVENT_GOT_ELECTRIZER
	writetext IcirrusFanClub_GotItemText
	waitbutton
.NoRoom
	closetext
	end
	
IcirrusFanClubMagmarizerScript:
	checkevent EVENT_GOT_MAGMARIZER
	iftrue_jumptextfaceplayer IcirrusFanClub_GotItemText
	faceplayer
	opentext
	writetext IcirrusFanClub_AskScaleText
	yesorno
	iffalse_jumpopenedtext IcirrusFanClub_DeclinedText
	checkitem HEART_SCALE
	iffalse_jumpopenedtext IcirrusFanClub_NoScaleText
	writetext IcirrusFanClub_ThanksText
	promptbutton
	verbosegiveitem MAGMARIZER
	iffalsefwd .NoRoom
	takeitem HEART_SCALE
	setevent EVENT_GOT_MAGMARIZER
	writetext IcirrusFanClub_GotItemText
	waitbutton
.NoRoom
	closetext
	end

IcirrusFanClub_AskScaleText:
	text "I want to make my"
	line "#mon remember"
	
	para "one of its old"
	line "moves at the tutor"
	
	para "in Mistralton"
	line "City, but I don't"
	
	para "have any Heart"
	line "Scales."
	
	para "Could I have one"
	line "of yours?"
	done
	
IcirrusFanClub_DeclinedText:
	text "Ah, really? That's"
	line "too bad."
	done
	
IcirrusFanClub_NoScaleText:
	text "Hey! You don't"
	line "have any Heart"
	cont "Scales either!"
	done
	
IcirrusFanClub_ThanksText:
	text "Hey, thanks!"
	line "Here, you can have"
	cont "this in return!"
	done
	
IcirrusFanClub_GotItemText:
	text "That's a rare item"
	line "that can make"
	
	para "certain #mon"
	line "evolve when its"
	cont "held!"
	done
	
IcirrusFanClubCooltrainerFText:
	text "Welcome to the"
	line "#mon Fan Club!"
	
	para "We love all #-"
	line "mon, strong and"
	cont "cute!"
	done
	
IcirrusFanClubGentlemanText:
	text "Ah, I see you're a"
	line "fan of #mon as"
	cont "well!"
	
	para "The regulars here"
	line "really get into"
	
	para "their #mon"
	line "training!"
	done
	
IcirrusFanClubMunnaText:
	text "Muuuu!"
	done
	
IcirrusFanClubDucklettText:
	text "Dak! Dak!"
	done
