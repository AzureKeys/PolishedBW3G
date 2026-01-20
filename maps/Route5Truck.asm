Route5Truck_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, ROUTE_5, 5
	warp_event  3,  5, ROUTE_5, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R5TruckBerryManScript, -1
	
R5TruckBerryManScript:
	checkflag ENGINE_BERRY_MAN
	iftrue_jumptextfaceplayer .GotBerryText
	faceplayer
	opentext
	writethistext
	text "Cooking with"
	line "Berries is very"
	
	para "healthy! Even"
	line "#mon love them!"
	
	para "Here, have a"
	line "Berry for your"
	cont "#mon."
	done
	promptbutton
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequalfwd SATURDAY, .Saturday
; Sunday
	verbosegiveitem ASPEAR_BERRY, 3
	sjumpfwd .GotBerry
.Monday
	verbosegiveitem CHESTO_BERRY, 3
	sjumpfwd .GotBerry
.Tuesday
	verbosegiveitem PECHA_BERRY, 3
	sjumpfwd .GotBerry
.Wednesday
	verbosegiveitem RAWST_BERRY, 3
	sjumpfwd .GotBerry
.Thursday
	verbosegiveitem CHERI_BERRY, 3
	sjumpfwd .GotBerry
.Friday
	verbosegiveitem PERSIM_BERRY, 3
	sjumpfwd .GotBerry
.Saturday
	verbosegiveitem LEPPA_BERRY, 3
	; fallthrough
.GotBerry
	setflag ENGINE_BERRY_MAN
	jumpopenedtext .GotBerryText
	
.GotBerryText:
	text "Come back tomorrow"
	line "for another Berry!"
	done
