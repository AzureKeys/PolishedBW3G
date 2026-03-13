DriftveilPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, DRIFTVEIL_CITY, 5
	warp_event  5,  9, DRIFTVEIL_CITY, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_GREEN
	object_event  1,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterHikerScript, -1
	object_event  1,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilPokecenterSchoolboyText, -1
	object_event  8,  4, SPRITE_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DriftveilPokecenterLadyText, -1

DriftveilPokecenterHikerScript:
	checkevent EVENT_FINISHED_PWT
	iftrue_jumptextfaceplayer .PoliceGoneText
	jumpthistextfaceplayer
	text "I just happened to"
	line "come through Relic"
	cont "Passage. Seems"
	
	para "there's some kind"
	line "of commotion with"
	cont "the police here."
	done
.PoliceGoneText:
	text "Caves collapse"
	line "easily."

	para "Several caves have"
	line "disappeared in the"

	para "past few years,"
	line "like the one here"
	cont "north of town."

	para "As a pro Hiker,"
	line "that's common"
	cont "knowledge."
	done
	
DriftveilPokecenterSchoolboyText:
	text "The marketplace,"
	line "the #mon World"

	para "Tournament, the"
	line "Stone Emporium,"
	
	para "they're the places"
	line "to see in"
	cont "Driftveil City."
	done
	
DriftveilPokecenterLadyText:
	text "There's a shelter"
	line "for #mon here"
	
	para "in town, run by"
	line "former members of"
	cont "Team Plasma."
	done
