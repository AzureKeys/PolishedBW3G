CasteliaMassage_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  6, CASTELIA_CITY_STREETS, 19
	warp_event  7,  7, CASTELIA_CITY_STREETS, 20

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaMassageScript, -1

CasteliaMassageScript:
	checkflag ENGINE_CASTELIA_MASSAGE
	iftrue_jumptext .AlreadyDoneText
	opentext
	writethistext
	text "Welcome to the"
	line "Castelia massage"
	cont "parlor!"

	para "We can give one"
	line "of your #mon a"
	cont "relaxing massage"
	cont "for just ¥500."

	para "Would you like me"
	line "to do that?"
	done
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkmoney YOUR_MONEY, 500
	ifequalfwd HAVE_LESS, .NoMoney
	writethistext
	text "Which #MON"
	line "should I work on?"
	done
	promptbutton
	special Special_YoungerHaircutBrother
	ifequalfwd 0, .Refused
	ifequalfwd 1, .Refused ; selected an egg
	setflag ENGINE_CASTELIA_MASSAGE
	ifequalfwd 2, .SmallIncrease
	ifequalfwd 3, .MediumIncrease
; Large Increase
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjumpfwd .DoMassage
	
.SmallIncrease
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjumpfwd .DoMassage
	
.MediumIncrease
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	; fallthrough
.DoMassage
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writethistext
	text "OK! Let's get"
	line "started!"
	done
	waitbutton
	waitsfx
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writethistext
	text "There! All done!"
	done
	promptbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftruefwd .SmallIncreaseMessage
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftruefwd .MediumIncreaseMessage
;Large Increase Message
	writethistext
	text_ram wStringBuffer3
	text " looks"
	line "delighted!"
	done
	sjumpfwd .Done
.SmallIncreaseMessage
	writethistext
	text_ram wStringBuffer3
	text " looks a"
	line "little happier."
	done
	sjumpfwd .Done
.MediumIncreaseMessage
	writethistext
	text_ram wStringBuffer3
	text " looks"
	line "happy."
	done
.Done
	special PlayCurMonCry
	waitbutton
	closetext
	end

.NoMoney:
	writethistext
	text "You'll need more"
	line "money than that."
	done
	waitbutton
	closetext
	end

.Refused:
	writetext .RefusedText
	waitbutton
	closetext
	end
	
.RefusedText:
	text "Is that right?"
	line "That's a shame!"
	done
	
.AlreadyDoneText:
	text "I do only one"
	line "massage a day. I'm"
	cont "done for today."
	done
