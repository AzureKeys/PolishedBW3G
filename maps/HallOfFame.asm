HallOfFame_MapScriptHeader:
	def_scene_scripts
	scene_script HallOfFameTrigger0
	scene_script HallOfFameTrigger1

	def_callbacks

	def_warp_events
	warp_event  4, 13, CHAMPIONS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 12, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1

	object_const_def
	const HALLOFFAME_JUNIPER
	
HallOfFameTrigger0:
	sdefer HallOfFameScene
HallOfFameTrigger1:
	end

HallOfFameScene:
	pause 30
	follow HALLOFFAME_JUNIPER, PLAYER
	applymovement HALLOFFAME_JUNIPER, .WalkUpMovement
	stopfollow
	turnobject PLAYER, RIGHT
	showtext .JuniperText
	turnobject HALLOFFAME_JUNIPER, UP
	applyonemovement PLAYER, slow_step_up
	setscene 1
	pause 15
	setval 2 ; Machine is in the Hall of Fame
	special HealMachineAnim
	special HealParty
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftruefwd .done
; Special case for beating the league for the 1st time
	setevent EVENT_BEAT_POKEMON_LEAGUE
	clearevent EVENT_NS_ROOM_N ; appear postgame N
	clearevent EVENT_ASPERTIA_CITY_BLOCKER ; Cheren is in Members Room
	specialphonecall SPECIALCALL_BIANCA_MEMBERS_CARD
	halloffame
	setmapscene CHAMPIONS_ROOM, 3 ; post-credits scene
	warp POST_CREDITS_DUMMY,  1,  1
	end
	
.done
	halloffame
	returnfromcredits
	end

.WalkUpMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_left
	step_end
	
.JuniperText:
	text "Juniper: This room"
	line "is the Hall Of"
	cont "Fame."

	para "It exists to"
	line "commemorate the"

	para "trainers and #-"
	line "mon who have"

	para "demonstrated their"
	line "stellar strength"

	para "and kindness of"
	line "heart."

	para "<PLAYER>, with your"
	line "skill and persis-"
	cont "tence, you have"

	para "earned your place"
	line "in this Hall Of"
	cont "Fame."

	para "Your name, the"
	line "account of your"

	para "journey, and the"
	line "history of your"

	para "battles will all"
	line "be recorded here."

	para "I hope all of this"
	line "becomes a support"

	para "to you and helps"
	line "you grow stronger."

	para "Now, <PLAYER>, you"
	line "and the #mon"

	para "who fought by your"
	line "side will be"
	
	para "recorded in this"
	line "machine, as"
	cont "Champions!"
	done
