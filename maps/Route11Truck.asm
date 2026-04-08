Route11Truck_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, ROUTE_11, 5
	warp_event  3,  5, ROUTE_11, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R11TruckRockCollectorScript, -1
	
R11TruckRockCollectorScript:
	checkflag ENGINE_ROCK_COLLECTOR
	iftrue_jumptextfaceplayer .GotRockText
	faceplayer
	opentext
	writethistext
	text "Hi there, they"
	line "call me the Rock"
	cont "Collector."
	
	para "I've gathered rare"
	line "rocks and stones"
	cont "from all over!"
	
	para "For just ¥2000,"
	line "I'll sell you a"
	
	para "rock from my"
	line "collection."
	
	para "How about it?"
	done
	promptbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	checkmoney YOUR_MONEY, 2000
	ifequalfwd HAVE_LESS, .NoMoney
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequalfwd SATURDAY, .Saturday
; Sunday
	verbosegiveitem EVERSTONE
	sjumpfwd .GotRock
.Monday
	verbosegiveitem DAMP_ROCK
	sjumpfwd .GotRock
.Tuesday
	verbosegiveitem SMOOTH_ROCK
	sjumpfwd .GotRock
.Wednesday
	verbosegiveitem ICY_ROCK
	sjumpfwd .GotRock
.Thursday
	verbosegiveitem HEAT_ROCK
	sjumpfwd .GotRock
.Friday
	verbosegiveitem KINGS_ROCK
	sjumpfwd .GotRock
.Saturday
	verbosegiveitem HARD_STONE
	; fallthrough
.GotRock
	takemoney YOUR_MONEY, 2000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_ROCK_COLLECTOR
	waitsfx
	jumpthisopenedtext
.GotRockText:
	text "I'll sell you a"
	line "different rock if"
	
	para "you come back"
	line "tomorrow!"
	done
	
.DeclinedText:
	text "Are you sure?"
	line "You won't find a"
	
	para "rock like this"
	line "anywhere else!"
	done
	
.NoMoney:
	jumpthisopenedtext
	text "Uh-oh, looks like"
	line "you don't have the"
	cont "money for it."
	done
