ShoppingMallNine_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 27, ROUTE_9, 4
	warp_event  9, 27, ROUTE_9, 5
	warp_event 16, 13, MEMBERS_ROOM, 1

	def_coord_events
	coord_event 16, 14, 0, ShoppingMallBlockerScript

	def_bg_events
	
	def_object_events
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallBlockerText, -1
	mart_clerk_event  1, 14, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_BLUE, MARTTYPE_STANDARD, MART_SHOPPING_MALL_1
	mart_clerk_event  4,  8, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_DARK_RED, MARTTYPE_STANDARD, MART_SHOPPING_MALL_2
	mart_clerk_event 13,  8, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_GREEN, MARTTYPE_TM, MART_SHOPPING_MALL_3
	mart_clerk_event  1,  1, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_DARK_BLUE, MARTTYPE_STANDARD, MART_SHOPPING_MALL_4
	mart_clerk_event  3,  1, SPRITEMOVEDATA_STANDING_DOWN, PAL_NPC_DARK_GREEN, MARTTYPE_STANDARD, MART_SHOPPING_MALL_5
	object_event  8, 21, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallReceptionistText, -1
	object_event 13,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallTeacherText, -1
	object_event 10,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallCooltrainerMText, -1
	object_event  7,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallCooltrainerFText, -1
	object_event 11, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallYoungsterText, -1
	object_event  2, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallBugCatcherText, -1
	object_event 13, 24, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoppingMallLadyText, -1
	
	object_const_def
	const SHOPPINGMALLNINE_BLOCKER
	
ShoppingMallBlockerScript:
	turnobject SHOPPINGMALLNINE_BLOCKER, RIGHT
	opentext
	writethistext
	text "Beyond this door"
	line "is the exclusive"
	cont "Member's Room."
	
	para "Only verified"
	line "members are"
	cont "permitted to"
	cont "enter."
	
	para "Could I see your"
	line "Member's Card"
	cont "please?"
	done
	promptbutton
	checkkeyitem MEMBERS_CARD
	iffalsefwd .NoCard
	writethistext
	text "Ah, I see you are"
	line "a member."
	
	para "You may enter."
	done
	waitbutton
	closetext
	setscene 1
	turnobject SHOPPINGMALLNINE_BLOCKER, DOWN
	end
	
.NoCard:
	writethistext
	text "I'm sorry, only"
	line "members are"
	cont "permitted to"
	cont "enter."
	done
	waitbutton
	closetext
	applymovement PLAYER, .Movement
	turnobject SHOPPINGMALLNINE_BLOCKER, DOWN
	end
	
.Movement:
	step_down
	step_end

ShoppingMallBlockerText:
	text "Beyond this door"
	line "is the exclusive"
	cont "Member's Room."
	
	para "Only verified"
	line "members are"
	cont "permitted to"
	cont "enter."
	done
	
ShoppingMallReceptionistText:
	text "Hi, welcome to"
	line "Shopping Mall"
	cont "Nine!"
	
	para "General wares are"
	line "on the 1st level."
	
	para "#Balls and TMs"
	line "are on the 2nd"
	cont "level."
	
	para "Supplements and"
	line "stones can be"
	cont "purchased on the"
	cont "3rd level."
	
	para "Please enjoy your"
	line "stay!"
	done
	
ShoppingMallTeacherText:
	text "My Lampent's not"
	line "very good at #-"
	cont "mon battles,"
	
	para "but it's great at"
	line "making toast!"
	done
	
ShoppingMallCooltrainerMText:
	text "The better trainer"
	line "you are, the more"
	
	para "you'll find your-"
	line "self thinking!"
	
	para "That's so you can"
	line "help your #mon"
	cont "partners win!"
	done
	
ShoppingMallCooltrainerFText:
	text "The thing I buy"
	line "most often is the"
	
	para "item that raises a"
	line "#mon's HP, it's"
	cont "called HP Up."
	
	para "There are also a"
	line "lot of other items"
	cont "that catch my eye."
	done
	
ShoppingMallYoungsterText:
	text "If you want all"
	line "the TMs, the Mall"
	cont "is a must-visit!"
	
	para "You should brag"
	line "about coming here"
	
	para "to any TM"
	line "collector!"
	done
	
ShoppingMallBugCatcherText:
	text "If I were to play"
	line "hide and seek with"
	
	para "my #mon, they'd"
	line "find me right"
	
	para "away! But if I"
	line "were to get lost,"
	
	para "I'd be glad they"
	line "could find me"
	cont "right away!"
	done
	
ShoppingMallLadyText:
	text "Shopping is so"
	line "much fun! I'm"
	
	para "thrilled with all"
	line "I've accomplished!"
	done
