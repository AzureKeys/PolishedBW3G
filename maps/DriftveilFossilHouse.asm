DriftveilFossilHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, DRIFTVEIL_CITY, 7
	warp_event  3,  7, DRIFTVEIL_CITY, 7

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilFossilHouseScript, -1
	
DriftveilFossilHouseScript:
	faceplayer
	checkevent EVENT_GOT_DRIFTVEIL_DAWN_STONE
	iftrue_jumptext .GotStoneText
	opentext
	writethistext
	text "Hi, I'm a Fossil"
	line "Maniac."
	
	para "Have you heard of"
	line "#mon fossils?"
	
	para "There's a place in"
	line "Nacrene City where"
	
	para "fossils can be"
	line "revived into"
	cont "#mon!"
	
	para "If you have a"
	line "#mon revived"
	
	para "from a fossil,"
	line "could I see it?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .NoFossilText
	writethistext
	text "Ok, could you"
	line "please show it"
	cont "to me?"
	done
	promptbutton
	special Special_BillsGrandfather
	iffalse_jumpopenedtext .NoFossilText
	ifequalfwd LOW(TIRTOUGA), .CheckExtSpeciesBit
	ifequalfwd LOW(CARRACOSTA), .CheckExtSpeciesBit
	ifequalfwd LOW(ARCHEN), .CheckExtSpeciesBit
	ifnotequal LOW(ARCHEOPS), .WrongMon
.CheckExtSpeciesBit
; All fossil mons are > $FF
	callasm .CheckExtSpeciesAsm
	iffalse_jumpopenedtext .WrongMonText
	writethistext
	text "Ah yes, that's the"
	line "#mon I was"
	cont "looking for!"
	
	para "Thanks for your"
	line "help! Here, take"
	cont "this."
	done
	promptbutton
	verbosegiveitem DAWN_STONE
	iffalsefwd .done
	setevent EVENT_GOT_DRIFTVEIL_DAWN_STONE
	writethistext 
.GotStoneText:
	text "Thanks for showing"
	line "me that fossil!"
	done
	waitbutton
.done
	closetext
	end
	
.WrongMon
	jumpthisopenedtext
.WrongMonText:
	text "Sorry, that's the"
	line "wrong #mon."
	done
	
.CheckExtSpeciesAsm:
	ldh a, [hScriptVar+1]
	and EXTSPECIES_MASK
	ldh [hScriptVar], a
	ret
	
.NoFossilText:
	text "Ah, so you don't"
	line "have one then."
	done
	