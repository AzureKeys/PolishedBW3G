DragonspiralTowerRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 16, DRAGONSPIRAL_TOWER_6F, 3
	warp_event  6, 17, DRAGONSPIRAL_TOWER_6F, 4

	def_coord_events
	coord_event  8, 14, 0, DragonspiralTowerRoofScript1
	coord_event  9, 14, 0, DragonspiralTowerRoofScript2

	def_bg_events
	
	def_object_events
	object_event  8, 12, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_DRAYDEN
	object_event  9, 10, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_SAGES
	object_event  7,  8, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_JUNIPER
	object_event  8, 11, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_1
	object_event  6,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	object_event  8,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	pokemon_event  9,  8, GENESECT, SPRITEMOVEDATA_STILL, -1, PAL_MON_GRAY, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_1
	pokemon_event  9,  8, GENESECT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_PURPLE, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_2
	
	object_const_def
	const DRAGONSPIRALTOWERROOF_DRAYDEN
	const DRAGONSPIRALTOWERROOF_ZINZOLIN
	const DRAGONSPIRALTOWERROOF_JUNIPER
	const DRAGONSPIRALTOWERROOF_SHADOW_1
	const DRAGONSPIRALTOWERROOF_SHADOW_2
	const DRAGONSPIRALTOWERROOF_SHADOW_3
	const DRAGONSPIRALTOWERROOF_GENESECT_1
	const DRAGONSPIRALTOWERROOF_GENESECT_2
	
DragonspiralTowerRoofScript1:
	applymovement PLAYER, .Movement
	sjumpfwd DragonspiralTowerRoofScript
.Movement:
	step_up
	step_right
	step_up
	step_up
	step_end
	
DragonspiralTowerRoofScript2:
	applymovement PLAYER, .Movement
	sjumpfwd DragonspiralTowerRoofScript
.Movement:
	step_up
	step_up
	step_up
	step_end
	
DragonspiralTowerRoofScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .IntroText
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, .StepUpMovement
	special Special_FadeOutMusic
	pause 15
	playsound SFX_SHINE
	waitsfx
	pause 15
	playsound SFX_SHINE
	waitsfx
	pause 30
	playsound SFX_BOOT_PC
	special FadeOutPalettes
	appear DRAGONSPIRALTOWERROOF_GENESECT_2
	turnobject PLAYER, UP
	pause 5
	disappear DRAGONSPIRALTOWERROOF_GENESECT_1
	waitsfx
	special LoadMapPalettes
	special Special_FadeInQuickly
	pause 30
	cry GENESECT
	showtext .CryText
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, DOWN
	showtext .PoweredOnText
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_2
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, .TeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_3
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, .TeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, .TeleportInMovement
	pause 30
	showemote EMOTE_SHOCK, DRAGONSPIRALTOWERROOF_DRAYDEN, 10
	showtext .JuniperRevealText
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, .DraydenApproachMovement
	pause 30
	follow DRAGONSPIRALTOWERROOF_DRAYDEN, DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, .DraydenRetreatMovement
	stopfollow
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, UP
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, UP
	showtext .TimeForBattleText
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, .StepDownMovement
	showtext .StartBattleText
	winlosstext .BeatenText, 0
	setlasttalked DRAGONSPIRALTOWERROOF_ZINZOLIN
	loadtrainer ZINZOLIN, 2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	pause 15
	opentext
	writethistext
	text "Zinzolin: …It"
	line "matters not. With"
	
	para "the Genesis"
	line "Project under my"
	
	para "control, I am"
	line "unstoppable!"
	done
	promptbutton
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_1, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_2, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_3, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, LEFT
	writethistext
	text "Come Shadows! Let"
	line "us prepare the"
	
	para "final stages of"
	line "my plan!"
	
	para "I will use the"
	line "Genesis Project to"
	
	para "become the ruler"
	line "of Unova!"
	
	para "Shadow: …How"
	line "amusing."
	
	para "Zinzolin: Wha…?"
	
	para "Shadow: You truly"
	line "believe you were"
	
	para "to become a ruler?"
	
	para "Shadow: How sad…"
	done
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, .Shadow3Movement
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, UP
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, .Shadow2Movement
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_1, .Shadow1Movement
	showtext .BetrayalText
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear DRAGONSPIRALTOWERROOF_SHADOW_1
	disappear DRAGONSPIRALTOWERROOF_SHADOW_2
	disappear DRAGONSPIRALTOWERROOF_SHADOW_3
	disappear DRAGONSPIRALTOWERROOF_GENESECT_2
	pause 15
	special Special_FadeInQuickly
	playmapmusic
	pause 15
	showtext .ZinzolinFreakoutText
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, .ZinzolinLeaveMovement
	disappear DRAGONSPIRALTOWERROOF_ZINZOLIN
	pause 30
	applymovement PLAYER, .StepDown2Movement
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, RIGHT
	showtext .JuniperThanksText
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, .TeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_JUNIPER
	turnobject PLAYER, LEFT
	opentext
	writethistext
	text "Drayden: Thank you"
	line "for your help,"
	cont "<PLAYER>."
	
	para "You handled your-"
	line "self quite well."
	
	para "I look forward to"
	line "challenging you in"
	cont "my Gym."
	
	para "But before I go,"
	line "I'd like you to"
	cont "have this."
	done
	promptbutton
	verbosegiveitem DRAGON_FANG
	iftruefwd .GotFang
	writethistext
	text "Oh, it seems you"
	line "don't have room"
	cont "for it."
	
	para "I will leave it"
	line "for you in my"
	
	para "house in Opelucid"
	line "City. Stop by and"
	
	para "pick it up at your"
	line "convenience."
	done
	promptbutton
	clearevent EVENT_DRAYDENS_HOUSE_1F_DRAGON_FANG
.GotFang
	writethistext
	text "I'm going back to"
	line "my Gym in Opelucid"
	cont "City now."
	
	para "Stop by if you'd"
	line "like to challenge"
	
	para "me. I'll be"
	line "I'll be looking"
	cont "forward to it."
	done
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, .TeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_DRAYDEN
	setevent EVENT_OPELUCID_CITY_IRIS ; Gym no longer blocked
	clearevent EVENT_DRAYDENS_HOUSE_2F_IRIS
	setscene 1
	end
	
.StepUpMovement:
	step_up
	step_end
	
.StepDownMovement:
	step_down
	step_end
	
.StepDown2Movement:
	step_down
	step_down
	turn_head_left
	step_end
	
.DraydenApproachMovement:
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	step_end
	
.DraydenRetreatMovement:
	step_down
	step_down
	step_down
	step_down
	step_right
	step_end
	
.Shadow1Movement:
	step_up
	step_up
	step_up
	turn_head_down
	step_end
	
.Shadow2Movement:
	step_up
	step_right
	step_right
	step_up
	step_right
	turn_head_down
	step_end
	
.Shadow3Movement:
	step_up
	step_up
	step_up
	step_right
	step_right
	step_down
	step_end
	
.ZinzolinLeaveMovement:
	big_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
	
.TeleportInMovement:
	teleport_to
	step_end
	
.TeleportOutMovement:
	teleport_from
	step_end
	
.IntroText:
	text "Zinzolin: So,"
	line "you've come to"
	cont "try to stop me?"
	
	para "Ha! Once again,"
	line "you're too late!"
	
	para "While you were"
	line "busy dealing with"
	
	para "my Sages, I've"
	line "extracted the Ice"
	
	para "Element from atop"
	line "this tower. Now,"
	
	para "with the Elements"
	line "of Fire, Water,"
	
	para "Thunder, and Ice,"
	line "Team Plasma's"
	
	para "ultimate weapon"
	line "will be unstopp-"
	cont "able!"
	done
	
.CryText:
	text "Seeeeeect!"
	done
	
.PoweredOnText:
	text "Zinzolin: That's"
	line "right! What you're"
	
	para "looking at is the"
	line "end result of Team"
	
	para "Plasma's efforts"
	line "to create the"
	cont "ultimate #mon!"
	
	para "Behold, the"
	line "Genesis Project!"
	
	para "The foolish boy"
	line "king tried to have"
	
	para "the project shut"
	line "down, but it was"
	
	para "continued in"
	line "secret. And now,"
	
	para "we will use its"
	line "power to conquer"
	cont "Unova!"
	
	para "It just needs one"
	line "more final touch."
	
	para "Shadows! To me!"
	done
	
.JuniperRevealText:
	text "Drayden: Prof."
	line "Juniper!"
	
	para "Juniper: …huh?"
	line "Wha… What's"
	cont "happening…?"
	
	para "What am I doing"
	line "here?"
	
	para "Zinzolin: Mwa ha"
	line "ha! Thanks to the"
	
	para "Prof. here, I was"
	line "finally able to"
	
	para "get my hands on"
	line "the one piece"
	
	para "missing for my"
	line "plan: the Mind"
	cont "Link!"
	
	para "Juniper: Wha…?"
	
	para "Zinzolin: It"
	line "may have taken the"
	
	para "power of two of my"
	line "Shadows to influ-"
	cont "ence her mind, but"
	
	para "with our dear"
	line "Prof. under my"
	
	para "control, taking"
	line "the Mind Link from"
	
	para "the #mon League"
	line "was no problem at"
	cont "all!"
	
	para "Drayden: You- You"
	line "villains!"
	done
	
.TimeForBattleText:
	text "Juniper: Ah… I'm"
	line "sorry. I wasn't"
	cont "myself…"
	
	para "Zinzolin: A-ha-ha!"
	line "It's too late!"
	
	para "You've already"
	line "given me every-"
	cont "thing I need!"
	
	para "Now, before I put"
	line "the finishing"
	
	para "touches on my"
	line "plan, there's just"
	
	para "one more thing to"
	line "take care of."
	done
	
.StartBattleText:
	text "You will not stand"
	line "in my way any"
	
	para "longer! Prepare to"
	line "feel the freezing"
	
	para "vengeance of Team"
	line "Plasma!"
	done
	
.BeatenText:
	text "I- Impossible!"
	done
	
.BetrayalText:
	text "Zinzolin: Wha-"
	line "What are you"
	
	para "doing?! Stop this"
	line "at once! Your"
	cont "king demands it!"
	
	para "Shadow: You fool…"
	
	para "Shadow: We only"
	line "serve one king."
	
	para "Shadow: The one"
	line "true king of Team"
	cont "Plasma."
	
	para "Shadow: The great"
	line "and mighty"
	cont "Ghetsis!"
	
	para "Zinzolin: What?!"
	line "Ghetsis?! Ghetsis"
	cont "is gone! He's lost"
	
	para "his mind! That's"
	line "why I'm the king"
	cont "now!"
	
	para "Shadow: You're"
	line "wrong! Ghetsis"
	
	para "will return to"
	line "take his rightful"
	
	para "place as the ruler"
	line "of Team Plasma."
	
	para "Shadow: And you"
	line "were but a pawn in"
	cont "our plan."
	
	para "Shadow: We must"
	line "thank you for"
	
	para "finding the"
	line "Genesis Project,"
	
	para "and collecting the"
	line "Elements needed to"
	cont "restore its power."
	
	para "Shadow: Thanks to"
	line "you and the other"
	
	para "Sages, we were"
	line "able to override"
	
	para "the security lock"
	line "to activate the"
	cont "Mind Link."
	
	para "Shadow: How"
	line "convenient that"
	
	para "Rood had a grand-"
	line "daughter who could"
	
	para "unlock his part of"
	line "the seal…"
	
	para "Shadow: But though"
	line "you've been of"
	
	para "use, now that we"
	line "have the Mind Link"
	
	para "and the Genesis"
	line "Project, you are"
	
	para "no longer of use"
	line "to us…"
	
	para "Shadow: Farewell…"
	
	para "Zinzolin: No! You"
	line "can't do this to"
	
	para "me! I am your"
	line "king!"
	done
	
.ZinzolinFreakoutText:
	text "Zinzolin: This…"
	line "This is not"
	cont "possible!"
	
	para "I am the king of"
	line "Team Plasma!!"
	
	para "… … … …"
	
	para "I… I think I'd"
	line "better get out of"
	cont "here…"
	done
	
.JuniperThanksText:
	text "Juniper: <PLAYER>!"
	
	para "That was quite a"
	line "battle! I'm"
	cont "impressed!"
	
	para "Thank you for your"
	line "help. I… I'm not"
	
	para "truly sure what"
	line "happened to me…"
	
	para "My memories have"
	line "been hazy ever"
	
	para "since the World"
	line "Tournament."
	
	para "But if I've been"
	line "used for those"
	cont "Shadows' plan…"
	
	para "Then I'm going to"
	line "put a stop to it!"
	
	para "Safe travels,"
	line "<PLAYER>."
	done
