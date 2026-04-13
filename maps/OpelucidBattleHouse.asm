OpelucidBattleHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OpelucidBattleHouseSetupBattler

	def_warp_events
	warp_event  4,  7, OPELUCID_CITY, 11
	warp_event  5,  7, OPELUCID_CITY, 11

	def_coord_events
	
	def_bg_events
	bg_event  2,  5, BGEVENT_JUMPTEXT, OpelucidBattleHouseStatueText
	bg_event  7,  5, BGEVENT_JUMPTEXT, OpelucidBattleHouseStatueText
	
	def_object_events
	object_event  5,  2, SPRITE_BATTLE_HOUSE_OPPONENT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OpelucidBattleHouseOpponentScript, EVENT_OPELUCID_BATTLE_HOUSE_OPPONENT
	object_event  3,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OpelucidBattleHouseGymGuyScript, -1
		
	object_const_def
	const OPELUCIDBATTLEHOUSE_OPPONENT
	
MACRO rematch ; person (not used atm), sprite, x, y, face, palette
	moveobject OPELUCIDBATTLEHOUSE_OPPONENT, \3, \4
	turnobject OPELUCIDBATTLEHOUSE_OPPONENT, \5
	setmapobjectpal OPELUCIDBATTLEHOUSE_OPPONENT, PAL_NPC_\6
	appear OPELUCIDBATTLEHOUSE_OPPONENT
	variablesprite SPRITE_BATTLE_HOUSE_OPPONENT, SPRITE_\2
ENDM

MACRO rematch_script
	; rematch_script name, trainer
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue_jumptextfaceplayer \1Text_Done
	faceplayer
	showtext \1Text_Greeting
	winlosstext \1Text_WinLoss, 0
	loadtrainer \2, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	jumptextfaceplayer \1Text_Done
ENDM
	
OpelucidBattleHouseSetupBattler:
	checkevent EVENT_BEAT_DRAYDEN ; must beat Drayden first
	iffalsefwd .done
	checkflag ENGINE_BATTLE_HOUSE ; opponent already set up
	iftruefwd .done
	clearevent EVENT_BATTLE_HOUSE_DONE
	disappear OPELUCIDBATTLEHOUSE_OPPONENT
; Roll a random number to determine battler for the day
	random 8
	ifequalfwd 0, .Marlon
	ifequalfwd 1, .Shauntal
	ifequalfwd 2, .Burgh
	ifequalfwd 3, .Roxie
	ifequalfwd 4, .Cheren
	ifequalfwd 5, .Cilan
	ifequalfwd 6, .Skyla
; Drayden
	rematch 1, DRAYDEN, 5, 2, DOWN, GRAY
	loadmem wBattleHouseOpponent, 7
	sjumpfwd .setup_done
.Marlon
	rematch 1, MARLON, 5, 2, DOWN, DARK_BLUE
	loadmem wBattleHouseOpponent, 0
	sjumpfwd .setup_done
.Shauntal
	rematch 1, SHAUNTAL, 5, 2, DOWN, PURPLE
	loadmem wBattleHouseOpponent, 1
	sjumpfwd .setup_done
.Burgh
	rematch 1, BURGH, 5, 2, DOWN, RED
	loadmem wBattleHouseOpponent, 2
	sjumpfwd .setup_done
.Roxie
	rematch 1, ROXIE, 5, 2, DOWN, PURPLE
	loadmem wBattleHouseOpponent, 3
	sjumpfwd .setup_done
.Cheren
	rematch 1, CHEREN, 5, 2, DOWN, AZURE
	loadmem wBattleHouseOpponent, 4
	sjumpfwd .setup_done
.Cilan
	rematch 1, CILAN, 5, 2, DOWN, GREEN
	loadmem wBattleHouseOpponent, 5
	sjumpfwd .setup_done
.Skyla
	rematch 1, SKYLA, 5, 2, DOWN, TEAL
	loadmem wBattleHouseOpponent, 6
	; fallthrough
.setup_done
	setflag ENGINE_BATTLE_HOUSE
.done
	endcallback

OpelucidBattleHouseOpponentScript:
	readmem wBattleHouseOpponent
	ifequalfwd 0, .Marlon
	ifequalfwd 1, .Shauntal
	ifequalfwd 2, .Burgh
	ifequalfwd 3, .Roxie
	ifequalfwd 4, .Cheren
	ifequalfwd 5, .Cilan
	ifequalfwd 6, .Skyla
; Drayden
	rematch_script Drayden, DRAYDEN
.Marlon
	rematch_script Marlon, MARLON
.Shauntal
	rematch_script Shauntal, SHAUNTAL
.Burgh
	rematch_script Burgh, BURGH
.Roxie
	rematch_script Roxie, ROXIE
.Cheren
	rematch_script Cheren, CHEREN
.Cilan
	rematch_script Cilan, CILAN
.Skyla
	rematch_script Skyla, SKYLA

OpelucidBattleHouseGymGuyScript:
	faceplayer
	opentext
	writethistext
	text "Hi, welcome to the"
	line "Battle House!"
	
	para "Gym Leaders from"
	line "all over Unova"
	
	para "come here to spar"
	line "with each other!"
	done
	promptbutton
	checkevent EVENT_BEAT_DRAYDEN
	iffalse_jumpopenedtext .NotOpenText
	jumpthisopenedtext
	text "A different Leader"
	line "comes by each day,"
	
	para "so you never know"
	line "who you'll be up"
	cont "against!"
	
	para "How exciting!"
	done
	
.NotOpenText:
	text "…unfortunately,"
	line "we're not open"
	cont "quite yet."
	
	para "You should come"
	line "back and check us"
	cont "out later!"
	done
	
MarlonText_Greeting:
	text "Hey there,"
	line "<PLAYER>!"
	
	para "You ready for a"
	line "battle? Show me"
	cont "what you've got!"
	done
	
MarlonText_WinLoss:
	text "Ah, ya got me!"
	done
	
MarlonText_Done:
	text "You've really"
	line "gotten strong"
	
	para "since ya first"
	line "started training"
	cont "#mon!"
	
	para "Your vibes are"
	line "immaculate!"
	done

ShauntalText_Greeting:
	text "Hm? Oh, I'm just"
	line "taking a little"
	
	para "break from my"
	line "novel to practice"
	
	para "my #mon"
	line "training."
	
	para "Would you like to"
	line "be my challenger?"
	done
	
ShauntalText_WinLoss:
	text "Wow, I'm"
	line "dumbstruck!"
	done
	
ShauntalText_Done:
	text "I'm just going to"
	line "stay and practice"
	cont "a little longer."
	
	para "I just need a"
	line "little more"
	
	para "inspiration before"
	line "getting back to my"
	cont "writing…"
	done

BurghText_Greeting:
	text "Why hello there,"
	line "young trainer!"
	
	para "How would you like"
	line "to experience the"
	
	para "incredible art-"
	line "istry of my #-"
	cont "mon and I?"
	done
	
BurghText_WinLoss:
	text "Oh, ho ho! You're"
	line "quite the feisty"
	cont "one!"
	done
	
BurghText_Done:
	text "Every now and"
	line "then, I get a"
	
	para "case of artist's"
	line "block, but every"
	
	para "time I battle with"
	line "#mon, I feel"
	
	para "the urge to draw,"
	line "and I just can't"
	cont "stop!"
	done

RoxieText_Greeting:
	text "HEY!"
	
	para "Let's fight!"
	line "Ready, go!"
	done
	
RoxieText_WinLoss:
	text "Wait! I wasn't"
	line "finished yet!"
	done
	
RoxieText_Done:
	text "Battling tough"
	line "opponents gives me"
	
	para "just the kind of"
	line "motivation I need"
	cont "to rock out!"
	done

CherenText_Greeting:
	text "Ah, <PLAYER>."
	line "Welcome to the"
	cont "Battle House."
	
	para "I come here every"
	line "now and then to"
	
	para "hone my skills as"
	line "a Gym Leader."
	
	para "How'd you like to"
	line "be my opponent"
	cont "today?"
	done
	
CherenText_WinLoss:
	text "I see, so that was"
	line "your strategy."
	done
	
CherenText_Done:
	text "If you want to be"
	line "a great #mon"
	
	para "trainer, you've"
	line "got to keep imp-"
	cont "roving yourself."
	
	para "Keep focusing on"
	line "your goals, and go"
	
	para "as far as your"
	line "dreams can take"
	cont "you!"
	done

CilanText_Greeting:
	text "I've been working"
	line "on a recipe for a"
	
	para "new type of #-"
	line "mon strategy."
	
	para "Here, I'll give"
	line "you a taste!"
	done
	
CilanText_WinLoss:
	text "A truly savory"
	line "outcome!"
	done
	
CilanText_Done:
	text "Cooking is just"
	line "like #mon"
	
	para "battles. There's"
	line "no one right way"
	cont "to go about it!"
	
	para "You've just got to"
	line "keep trying diff-"
	cont "erent things until"
	
	para "you find something"
	line "that works for"
	cont "you!"
	done

SkylaText_Greeting:
	text "Hi there! I came"
	line "here for a battle"
	
	para "that can really"
	line "test my limits as"
	cont "a #mon trainer!"
	
	para "You've got me"
	line "excited! Let's go!"
	done
	
SkylaText_WinLoss:
	text "Whew… That was"
	line "really something!"
	done
	
SkylaText_Done:
	text "When I think of a"
	line "good battle, I"
	
	para "want to start"
	line "training again."
	
	para "Maybe I should"
	line "take my #mon"
	
	para "out on my plane"
	line "for a training"
	cont "trip soon!"
	done

DraydenText_Greeting:
	text "Greetings, young"
	line "<PLAYER>."
	
	para "If you've come to"
	line "the Battle House,"
	
	para "you must be"
	line "serious about your"
	cont "#mon training."
	
	para "Allow me to put"
	line "that training to"
	cont "the test."
	done
	
DraydenText_WinLoss:
	text "Your #mon are"
	line "filled with the"
	cont "heat of battle!"
	done
	
DraydenText_Done:
	text "People and #mon"
	line "don't age because"
	
	para "of the passage of"
	line "time, but because"
	
	para "the energy flowing"
	line "through their"
	cont "hearts dries up."
	
	para "Heh… If I keep up"
	line "my training like"
	
	para "this, I may just"
	line "go on living"
	cont "forever!"
	done
	
OpelucidBattleHouseStatueText:
	text "Opelucid City"
	line "Battle House"
	
	para "Where the best"
	line "come to battle!"
	done
