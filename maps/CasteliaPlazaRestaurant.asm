CasteliaPlazaRestaurant_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10,  0, CASTELIA_PLAZA_PRIZE_ROOM, 2
	warp_event 12,  0, CASTELIA_PLAZA_ELEVATOR, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 11, 10, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantAmanitaScript, -1
	object_event  5,  9, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantBeautyScript, -1
	object_event  2,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaRestaurantReceptionistText, -1
	object_event  2,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaRestaurantPokefanMText, -1
	object_event  7,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CasteliaPlazaRestaurantOfficerText, -1
	
CasteliaPlazaRestaurantAmanitaScript:
	faceplayer
	checkevent EVENT_GOT_A_POKEMON_FROM_AMANITA
	iftrue_jumptext .GotMonText
	opentext
	writethistext
	text "Oh, hi! Are you a"
	line "#mon trainer?"
	
	para "My name's Amanita."
	line "I set up the #-"
	
	para "mon storage system"
	line "here in Unova!"
	
	para "I live in Striaton"
	line "City, but I travel"
	
	para "to Castelia often"
	line "for work."
	
	para "Listen! While I"
	line "was working on the"
	
	para "PC storage network"
	line "here, a #mon"
	
	para "suddenly came out"
	line "from the PC!"
	
	para "It must have been"
	line "left in storage"
	cont "for some time."
	
	para "I've been keeping"
	line "it, but I don't"
	
	para "have time to care"
	line "for it properly."
	
	para "I think it would"
	line "be much happier"
	cont "with a trainer!"
	
	para "Would you take it"
	line "with you?"
	done
	promptbutton
	yesorno
	iffalse_jumpopenedtext .DeclinedText
	writethistext
	text "Oh, thank you!"
	
	para "I hope you take"
	line "good care of it!"
	done
	promptbutton
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .GiveTepig
	checkevent EVENT_GOT_SNIVY
	iftruefwd .GiveOshawott
; Give Snivy
	givepoke SNIVY, 10
	sjumpfwd .GotMon
.GiveTepig
	givepoke TEPIG, 10
	sjumpfwd .GotMon
.GiveOshawott
	givepoke OSHAWOTT, 10
	; fallthrough
.GotMon
	setevent EVENT_GOT_A_POKEMON_FROM_AMANITA
	jumpthisopenedtext
.GotMonText:
	text "Good luck on your"
	line "#mon journey,"
	cont "trainer!"
	done
	
.DeclinedText:
	text "Oh, well that's"
	line "too bad. Come back"
	
	para "if you change your"
	line "mind."
	done

CasteliaPlazaRestaurantBeautyScript:
	faceplayer
	checkevent EVENT_GOT_TM_ATTRACT
	iftrue_jumptext .GotTMText
	opentext
	writethistext
	text "Oh! Your #mon"
	line "are so darling!"
	
	para "Here, you should"
	line "have this. It's"
	
	para "just perfect for"
	line "such cute #mon!"
	done
	promptbutton
	verbosegivetmhm TM_ATTRACT
	setevent EVENT_GOT_TM_ATTRACT
	writetext .GotTMText
	waitbutton
	closetext
	end
	
.GotTMText:
	text "Teach your #mon"
	line "that TM, and they"
	
	para "will become just"
	line "irresistable!"
	done

CasteliaPlazaRestaurantReceptionistText:
	text "Welcome to the"
	line "Castelia Plaza"
	cont "restaurant."
	
	para "We're sorry, you"
	line "will need to make"
	
	para "a reservation in"
	line "advance if you'd"
	cont "like to be served."
	done

CasteliaPlazaRestaurantPokefanMText:
	text "I went bust at the"
	line "slots. I'm flat"
	cont "broke!"
	
	para "I got frustrated"
	line "and threw out my"
	
	para "Coin Case at the"
	line "docks."
	done
	
CasteliaPlazaRestaurantOfficerText:
	text "Sorry, the floors"
	line "beyond here are"
	
	para "for residents"
	line "only."
	done
