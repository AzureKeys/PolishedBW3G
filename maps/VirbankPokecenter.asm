VirbankPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, VIRBANK_CITY, 3
	warp_event  5,  9, VIRBANK_CITY, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE
	object_event  1,  7, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterGymGuyScript, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, PAL_NPC_RED_D, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankPokecenterLassText, -1
	object_event  8,  4, SPRITE_ROUGHNECK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VirbankPokecenterRoughneckText, -1
	
VirbankPokecenterGymGuyScript:
	checkevent EVENT_BEAT_ROXIE
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "The #mon Gym"
	line "trainers here"
	cont "kicked me out!"

	para "They said I was"
	line "ruining their"
	cont "vibe…"

	para "Here's some ad-"
	line "vice: the Gym"

	para "Leader uses the"
	line "poison-type."

	para "So you should"
	line "confound her with"
	cont "psychic #mon."

	para "Earth shaking"
	line "ground-type moves"
	cont "work well too."
	done
	
.WinText:
	text "<PLAYER>! You won!"
	line "I could tell by"
	cont "looking at you!"
	done

VirbankPokecenterLassText:
	text "Listen! Challenge"
	line "Poison type #-"
	cont "mon with Poison"
	cont "type #mon!"

	para "At least that's"
	line "what Roxie told"
	
	para "me. She plays an"
	line "instrument! Pretty"
	cont "cool!"
	done
	
VirbankPokecenterRoughneckText:
	text "Roxie's band!"

	para "It's getting hard"
	line "to buy tickets to"

	para "their shows"
	line "lately! Maybe"

	para "they'll go on a"
	line "world tour soon!"
	done
