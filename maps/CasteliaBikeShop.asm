CasteliaBikeShop_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  6, CASTELIA_CITY_STREETS, 17
	warp_event  0,  7, CASTELIA_CITY_STREETS, 18

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  0,  3, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  1,  3, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  4,  5, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  5,  5, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  2,  6, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  3,  6, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  6,  6, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	bg_event  7,  6, BGEVENT_JUMPTEXT, CasteliaBikeShopBicycleText
	
	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaBikeShopClerkScript, -1

CasteliaBikeShopClerkScript:
	faceplayer
	checkevent EVENT_GOT_BICYCLE
	iftrue_jumptext .HaveBikeText
	opentext
	writethistext
	text "…sigh… Welcome to"
	line "Castelia Cycles."

	para "We sell Bicycles,"
	line "but they've gotten"

	para "much less popular"
	line "since Running"
	cont "Shoes became about"
	cont "as fast as biking…"
	
	para "Will you take one"
	line "of our bikes and"
	
	para "ride it to drum"
	line "up sales?"
	done
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writethistext
	text "Really? Great!"

	para "If it'll help"
	line "business, I'll let"

	para "you have this for"
	line "free!"
	done
	promptbutton
	waitsfx
	verbosegivekeyitem BICYCLE
	setevent EVENT_GOT_BICYCLE
	jumpopenedtext .HaveBikeText
	
.RefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done
	
.HaveBikeText:
	text "My Bicycles are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done
	
CasteliaBikeShopBicycleText:
	text "It's a shiny new"
	line "Bicycle!"
	done
