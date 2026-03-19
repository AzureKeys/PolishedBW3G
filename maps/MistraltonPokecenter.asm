MistraltonPokecenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, MISTRALTON_CITY, 2
	warp_event  5,  9, MISTRALTON_CITY, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	pc_nurse_event  4,  2
	mart_clerk_event  8,  7, PAL_NPC_BLUE
	object_event  8,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_DARK_RED, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterAceTrainerMScript, -1
	object_event  1,  9, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonPokecenterAceTrainerFText, -1
	object_event  0,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MistraltonPokecenterBugCatcherText, -1
	
MistraltonPokecenterAceTrainerMScript:
	checkevent EVENT_SKYLA_RETURNED_TO_GYM
	iftrue_jumptextfaceplayer .ReturnedText
	jumpthistextfaceplayer
	text "Where in the world"
	line "is Mistralton's"

	para "Gym Leader? I want"
	line "to challenge her."
	done
.ReturnedText:
	text "The Gym here in"
	line "Mistralton City"
	cont "is wild!"

	para "You'll be flying"
	line "through the air!"
	done
	
MistraltonPokecenterAceTrainerFText:
	text "Mistralton City"
	line "used to be a"

	para "desolate patch of"
	line "land… This place"
	
	para "was built through"
	line "the cooperation of"
	cont "people and #-"
	cont "mon."
	done
	
MistraltonPokecenterBugCatcherText:
	text "My dream is to be-"
	line "come a Gym Leader."
	done
