NacreneMuseum_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, NACRENE_CITY, 5
	warp_event  5, 11, NACRENE_CITY, 6

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  7,  8, SPRITE_LENORA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, NacreneMuseumLenoraScript, -1
	object_event  8,  4, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneMuseumRangerMText, -1
	object_event  2,  2, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneMuseumTwinText, -1
	object_event  1,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NacreneMuseumScientistText, -1
	
	object_const_def
	const NACRENEMUSEUM_LENORA
	
NacreneMuseumLenoraScript:
	faceplayer
	checkevent EVENT_RETURNED_DATA_DISK
	iftruefwd .CheckFossil
	checkkeyitem DATA_DISK
	iffalse_jumptext .NoDiskText
	opentext
	writethistext
.NoDiskText:
	text "Welcome to"
	line "Nacrene Museum."
	
	para "Unfortunately,"
	line "without the Data"
	cont "Disk that was"
	
	para "stolen, we can't"
	line "revive #mon"
	cont "from fossils."
	done
	promptbutton
	writethistext
	text "Oh! That's our"
	line "Data Disk!"
	
	para "Please, you've got"
	line "to give that to"
	cont "me!"
	done
	promptbutton
	playsound SFX_ITEM
	waitsfx
	takekeyitem DATA_DISK
	setevent EVENT_RETURNED_DATA_DISK
	jumpthisopenedtext
	text "Thanks so much!"
	
	para "Come see me if"
	line "you have a #mon"
	cont "fossil you'd like"
	cont "to have revived."
	done
	
.CheckFossil:
	opentext
	writethistext
	text "Hi, do you have a"
	line "fossil you'd like"
	cont "to have revived?"
	done
	promptbutton
	checkitem COVER_FOSSIL
	iffalsefwd .NoCover
	checkitem PLUME_FOSSIL
	iffalsefwd .OnlyCover
	loadmenu MuseumBothMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChooseCover
	ifequalfwd 2, .ChoosePlume
	jumpopenedtext .CancelText
	
.OnlyCover
	loadmenu MuseumCoverMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChooseCover
	jumpopenedtext .CancelText
	
.NoCover
	checkitem PLUME_FOSSIL
	iffalsefwd .NoFossils
	loadmenu MuseumPlumeMenuHeader
	verticalmenu
	closewindow
	ifequalfwd 1, .ChoosePlume
	jumpopenedtext .CancelText
	
.NoFossils
	loadmenu MuseumNoneMenuHeader
	verticalmenu
	closewindow
	jumpopenedtext .CancelText
	
.ChooseCover:
	takeitem COVER_FOSSIL
	scall NacreneMuseumReviveFossilScript
	givepoke TIRTOUGA, 10
	jumpopenedtext .CancelText
	
.ChoosePlume:
	takeitem PLUME_FOSSIL
	scall NacreneMuseumReviveFossilScript
	givepoke ARCHEN, 10
	jumpopenedtext .CancelText
	
.CancelText:
	text "Come back if you"
	line "have another"
	cont "fossil!"
	done
	
MuseumBothMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "Cover Fossil@"
	db "Plume Fossil@"
	db "CANCEL@"
	
MuseumCoverMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "Cover Fossil@"
	db "CANCEL@"
	
MuseumPlumeMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "Plume Fossil@"
	db "CANCEL@"
	
MuseumNoneMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 6
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 1 ; items
	db "CANCEL@"
	
NacreneMuseumReviveFossilScript:
	writethistext
	text "Ok, let me have"
	line "the fossil."
	done
	waitbutton
	closetext
	applymovement NACRENEMUSEUM_LENORA, .ApproachComputerMovement
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	applymovement NACRENEMUSEUM_LENORA, .LeaveRoomMovement
	disappear NACRENEMUSEUM_LENORA
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	playsound SFX_ITEM
	waitsfx
	pause 30
	turnobject NACRENEMUSEUM_LENORA, LEFT
	appear NACRENEMUSEUM_LENORA
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	applymovement NACRENEMUSEUM_LENORA, .ApproachMovement
	opentext
	writethistext
	text "Your #mon was"
	line "revived! Here"
	cont "you go!"
	done
	promptbutton
	end
	
.ApproachComputerMovement:
	big_step_right
	big_step_right
	big_step_up
	step_end
	
.LeaveRoomMovement:
	step_down
	turn_head_right
	step_end
	
.ApproachMovement:
	step_left
	step_left
	step_end

NacreneMuseumRangerMText:
	text "Rarities from"
	line "around the world…"
	
	para "Museums are packed"
	line "with adventure!"
	done
	
NacreneMuseumTwinText:
	text "I heard that the"
	line "director, Lenora,"
	
	para "is too busy with"
	line "her research on"
	
	para "fossils and #-"
	line "mon bones, so she"
	
	para "took a break from"
	line "being a Gym"
	cont "Leader."
	done
	
NacreneMuseumScientistText:
	text "There are always"
	line "new discoveries to"
	
	para "unearth, so we are"
	line "always busy!"
	done
