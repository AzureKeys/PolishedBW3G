LentimasGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, LentimasGym_HandleTrainers

	def_warp_events
	warp_event  7, 19, LENTIMAS_TOWN, 4
	warp_event  8, 19, LENTIMAS_TOWN, 4

	def_coord_events
	coord_event  1,  6, 0, LentimasGymTrainer1Script1
	coord_event  1,  7, 0, LentimasGymTrainer1Script2
	coord_event  1,  8, 0, LentimasGymTrainer1Script3
	coord_event  8,  7, 0, LentimasGymTrainer2Script1
	coord_event  9,  7, 0, LentimasGymTrainer2Script2
	coord_event 10,  7, 0, LentimasGymTrainer2Script3
	coord_event  4, 10, 0, LentimasGymTrainer3Script1
	coord_event  5, 10, 0, LentimasGymTrainer3Script2
	coord_event 11, 11, 0, LentimasGymTrainer4Script

	def_bg_events
	bg_event  6, 17, BGEVENT_READ, LentimasGymStatue
	bg_event  9, 17, BGEVENT_READ, LentimasGymStatue

	def_object_events
	object_event  1,  5, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HexManiac1LentimasGymAfterText, EVENT_LENTIMAS_GYM_TRAINER_1
	object_event  7,  7, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HexManiac2LentimasGymAfterText, EVENT_LENTIMAS_GYM_TRAINER_2
	object_event  3, 10, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HexManiac3LentimasGymAfterText, EVENT_LENTIMAS_GYM_TRAINER_3
	object_event 12, 11, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HexManiac4LentimasGymAfterText, EVENT_LENTIMAS_GYM_TRAINER_4
	object_event  7,  9, SPRITE_SHAUNTAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasGymShauntalScript, -1
	object_event  8, 17, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LentimasGymGuyScript, -1
	
	object_const_def
	const LENTIMASGYM_HEX_MANIAC_1
	const LENTIMASGYM_HEX_MANIAC_2
	const LENTIMASGYM_HEX_MANIAC_3
	const LENTIMASGYM_HEX_MANIAC_4
	
LentimasGym_HandleTrainers:
; disappear trainers that have appeared, but not beaten
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftruefwd .next
	disappear LENTIMASGYM_HEX_MANIAC_1
.next
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftruefwd .next2
	disappear LENTIMASGYM_HEX_MANIAC_2
.next2
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftruefwd .next3
	disappear LENTIMASGYM_HEX_MANIAC_3
.next3
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
	iftruefwd .done
	disappear LENTIMASGYM_HEX_MANIAC_4
.done
	endcallback
	
LentimasGymShauntalScript:
	checkevent EVENT_BEAT_SHAUNTAL
	iftrue_jumptextfaceplayer .AfterText
	opentext
	writethistext
	text "Hmm…"
	
	para "… … … …"
	done
	
	promptbutton
	faceplayer
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SHAUNTAL, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHAUNTAL
	opentext
	givebadge SPOOKYBADGE, 0
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
; Only make trainers appear if they aren't already present
; This is to prevent multiple copies of trainers if they've moved positions
	checkevent EVENT_LENTIMAS_GYM_TRAINER_1
	iffalsefwd .CheckTrainer2
	appear LENTIMASGYM_HEX_MANIAC_1
.CheckTrainer2
	checkevent EVENT_LENTIMAS_GYM_TRAINER_2
	iffalsefwd .CheckTrainer3
	appear LENTIMASGYM_HEX_MANIAC_2
.CheckTrainer3
	checkevent EVENT_LENTIMAS_GYM_TRAINER_3
	iffalsefwd .CheckTrainer4
	appear LENTIMASGYM_HEX_MANIAC_3
.CheckTrainer4
	checkevent EVENT_LENTIMAS_GYM_TRAINER_4
	iffalsefwd .DoneTrainers
	appear LENTIMASGYM_HEX_MANIAC_4
.DoneTrainers
	writethistext
	text "Do you know the"
	line "benefits of the"
	cont "Spooky Badge?"

	para "If you have it,"
	line "#mon up to L30"

	para "will obey you,"
	line "even traded ones."

	para "#mon that can"
	line "use the HM Cut"

	para "will be able to"
	line "use it outside of"
	cont "battle too."

	para "Here, I also want"
	line "you to have this."
	done
	promptbutton
	verbosegivetmhm TM_HEX
	setevent EVENT_GOT_TM60_HEX
	writethistext
	text "TM60 contains"
	line "Hex."

	para "It uses powerful"
	line "ghostly magic to"
	cont "attack, and it"

	para "doubles in power"
	line "if the target is"
	cont "afflicted by a"
	cont "status condition."

	para "It rewards smart"
	line "strategy with"
	cont "your attacks."
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "My next story is"
	line "about a young"

	para "#mon trainer,"
	line "taking on the"
	cont "#mon League."

	para "I wonder… How"
	line "far will you go?"
	done
	
.SeenText:
	text "…Oh, sorry. I"
	line "didn't see you"
	cont "there."

	para "I'm working on a"
	line "draft of my new"
	cont "novel."

	para "My name is"
	line "Shauntal."
	
	para "I used to be a"
	line "member of the"
	cont "Elite Four."

	para "I moved to this"
	line "sleepy little town"
	
	para "to work on my"
	line "writing, but I"
	
	para "still run this"
	line "Gym in my spare"
	cont "time."
	
	para "Would you like to"
	line "challenge me? I"
	cont "won't hold back."
	done
	
.BeatenText:
	text "Impressive…"

	para "Your skills will"
	line "make a great"
	cont "story."
	done

LentimasGymGuyScript:
	checkevent EVENT_BEAT_SHAUNTAL
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	text "Yo, challenger!"

	para "Shauntal may look"
	line "like a bookworm,"

	para "but she's got"
	line "serious knowledge"
	cont "of ghosts!"

	para "It's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see… Ghost"
	line "#mon don't like"
	cont "being hit by"
	cont "other ghosts."

	para "Dark-type moves"
	line "are super-effec-"
	cont "tive too."
	done
	
.WinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#mon is bright!"
	done
	
LentimasGymStatue:
	gettrainername SHAUNTAL, 1, STRING_BUFFER_4
	checkflag ENGINE_SPOOKYBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2
	
LentimasGymTrainer1Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	sjumpfwd LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	applymovement LENTIMASGYM_HEX_MANIAC_1, LentimasGym_Down1Movement
	sjumpfwd LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script3:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	applymovement LENTIMASGYM_HEX_MANIAC_1, LentimasGym_Down2Movement
	sjumpfwd LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script:
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_1
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	end
	
.SeenText:
	text "Eh he he… We have"
	line "trained with the"
	cont "spirits."
	
	para "Can you even"
	line "damage our #-"
	cont "mon?"
	done
	
.BeatenText:
	text "Ack! I've been"
	line "beaten!"
	done
	
LentimasGymTrainer2Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	sjumpfwd LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_2, LentimasGym_Right1Movement
	sjumpfwd LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script3:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_2, LentimasGym_Right2Movement
	sjumpfwd LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script:
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_2
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	end
	
.SeenText:
	text "Aha! How can you"
	line "defeat that which"
	
	para "you cannot even"
	line "see?"
	done
	
.BeatenText:
	text "You've found my"
	line "weakness!"
	done
	
LentimasGymTrainer3Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_3
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_3, 15
	turnobject PLAYER, LEFT
	sjumpfwd LentimasGymTrainer3Script
.done
	end
	
LentimasGymTrainer3Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_3
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_3, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_3, LentimasGym_Right1Movement
	sjumpfwd LentimasGymTrainer3Script
.done
	end
	
LentimasGymTrainer3Script:
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_3
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	end
	
.SeenText:
	text "I have been a"
	line "disciple of"
	
	para "Shauntal since I"
	line "was young. There's"
	
	para "no way you can"
	line "beat me!"
	done
	
.BeatenText:
	text "Okay, I admit it!"
	line "I'm just a fan of"
	cont "her books!"
	done
	
LentimasGymTrainer4Script:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
	iftruefwd .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_4
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_4, 15
	turnobject PLAYER, RIGHT
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_4
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_4
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
.done
	end
	
.SeenText:
	text "A spooky mountain"
	line "town with a spooky"
	cont "ghost type Gym?"
	
	para "That's just perfect"
	line "for a spooky girl"
	cont "like me!"
	done
	
.BeatenText:
	text "Ah! You're too"
	line "spooky!"
	done

LentimasGym_Down1Movement:
	step_down
	step_end

LentimasGym_Down2Movement:
	step_down
	step_down
	step_end

LentimasGym_Right1Movement:
	step_right
	step_end

LentimasGym_Right2Movement:
	step_right
	step_right
	step_end
	
HexManiac1LentimasGymAfterText:
	text "Ghost type #mon"
	line "cannot be harmed"

	para "by normal type"
	line "attacks!"
	done
	
HexManiac2LentimasGymAfterText:
	text "We hide in the"
	line "shadows and wait"
	
	para "to scare passers-"
	line "by. Just like a"
	cont "ghost!"
	done
	
HexManiac3LentimasGymAfterText:
	text "I need more guid-"
	line "ance from Shauntal"

	para "if I want to get"
	line "stronger…"

	para "She should hurry"
	line "up and put out the"
	cont "next book already!"
	done
	
HexManiac4LentimasGymAfterText:
	text "I came to this"
	line "town to search for"
	
	para "ghosts. It's great"
	line "if you're into the"
	cont "supernatural!"
	done
	