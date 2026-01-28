CasteliaPlazaGameCorner_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10,  0, CASTELIA_PLAZA_LOBBY, 3
	warp_event  7,  0, CASTELIA_PLAZA_PRIZE_ROOM, 1
	warp_event 16,  0, CASTELIA_PLAZA_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  2,  6, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  2,  7, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event  2,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  2,  9, BGEVENT_RIGHT, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  6, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  8, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event  3,  9, BGEVENT_LEFT, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  8,  6, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  7, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  8, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  9, BGEVENT_RIGHT, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  6, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  7, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  8, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  9, BGEVENT_LEFT, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event 14,  6, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 14,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 14,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 14,  9, BGEVENT_RIGHT, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 15,  6, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 15,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 15,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 15,  9, BGEVENT_LEFT, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 13,  0, BGEVENT_JUMPTEXT, CasteliaPlazaGameCornerSignText
	
	def_object_events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE_D, OBJECTTYPE_COMMAND, jumpstd, gamecornercoinvendor, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaGameCornerReceptionistText, -1
	object_event 16,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << MORN) | (1 << DAY), PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerTeacherScript, -1
	object_event  4,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << DAY), PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerPokefanMScript, -1
	object_event 13,  9, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << NITE), PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerRoughneckScript, -1
	object_event  1,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << DAY) | (1 << NITE), PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerFisherScript, -1
	
CasteliaPlazaGameCornerSlotsMachineScript:
	random 6
	ifequalfwd 0, CasteliaPlazaGameCornerLuckySlotsMachineScript
	reanchormap
	setval FALSE
	special Special_SlotMachine
	endtext
	
CasteliaPlazaGameCornerLuckySlotsMachineScript:
	reanchormap
	setval TRUE
	special Special_SlotMachine
	endtext
	
CasteliaPlazaGameCornerCardFlipMachineScript:
	reanchormap
	special Special_CardFlip
	endtext
	
CasteliaPlazaGameCornerTeacherScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, LEFT
	end
.Text:
	text "I think this slot"
	line "machine will pay"
	cont "out…"

	para "The odds vary"
	line "among machines."
	done
	
CasteliaPlazaGameCornerPokefanMScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, LEFT
	end
.Text:
	text "Hmmm… The odds are"
	line "surely better for"

	para "Pikachu's line,"
	line "but… What to do?"
	done
	
CasteliaPlazaGameCornerRoughneckScript:
	faceplayer
	showtext .Text
	turnobject LAST_TALKED, RIGHT
	end
.Text:
	text "It's this machine"
	line "I want."

	para "It cleaned me out"
	line "yesterday, so it"

	para "better pay out"
	line "today!"
	done
	
CasteliaPlazaGameCornerFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_CASTELIA_PLAZA_FISHER
	iftruefwd .GotCoins
	writethistext
	text "Gahahaha!"

	para "The coins just"
	line "keep popping out!"

	para "Hm? What, kid? You"
	line "want to play?"

	para "I'll share my luck"
	line "with you!"
	done
	promptbutton
	checkkeyitem COIN_CASE
	iffalsefwd .NoCase
	checkcoins MAX_COINS - 1
	ifequalfwd HAVE_MORE, .CaseFull
	writethistext
	text "<PLAYER> received"
	line "200 Coins!"
	done
	playsound SFX_ITEM
	waitsfx
	givecoins 200
	setevent EVENT_GOT_COINS_FROM_CASTELIA_PLAZA_FISHER
.GotCoins
	writethistext
	text "Gahahaha!"

	para "It makes me feel"
	line "good to do nice"

	para "things for other"
	line "people!"
	done
	sjumpfwd .Done
	
.NoCase
	writethistext
	text "Hey, you don't"
	line "have a Coin Case."

	para "How am I supposed"
	line "to give you any"
	cont "coins, kid?"
	done
	sjumpfwd .Done
	
.CaseFull
	writethistext
	text "Hey, your Coin"
	line "Case is full, kid."

	para "You must be riding"
	line "a winning streak"
	cont "too."
	done
	; fallthrough
.Done
	closetext
	turnobject LAST_TALKED, RIGHT
	end

CasteliaPlazaGameCornerReceptionistText:
	text "Welcome!"

	para "You may exchange"
	line "your coins for"

	para "fabulous prizes"
	line "upstairs."
	done
	
CasteliaPlazaGameCornerSignText:
	text "Castelia Plaza"
	line "Game Corner."

	para "Use red machines"
	line "to play Slots, or"
	
	para "blue machines for"
	line "Card Flip."
	done
