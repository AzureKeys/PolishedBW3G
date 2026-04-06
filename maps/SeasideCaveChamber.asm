SeasideCaveChamber_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 13, SEASIDE_CAVE_B2F, 2
	
	def_coord_events
	coord_event  6,  9, 0, SeasideCaveZinzolinScript1
	coord_event  7,  9, 0, SeasideCaveZinzolinScript2

	def_bg_events
	
	def_object_events
	object_event  5,  4, SPRITE_PLASMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  3,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  7,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_GRUNTS
	object_event  8,  6, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_FRIENDS
	object_event  3,  7, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_DARK_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_FRIENDS
	
	object_const_def
	const SEASIDECAVECHAMBER_ZINZOLIN
	const SEASIDECAVECHAMBER_SHADOW_1
	const SEASIDECAVECHAMBER_SHADOW_2
	const SEASIDECAVECHAMBER_CHEREN
	const SEASIDECAVECHAMBER_MARLON

SeasideCaveZinzolinScript1:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	applymovement PLAYER, SeasideCaveZinzolinScript.PlayerMovement1
	sjumpfwd SeasideCaveZinzolinScript

SeasideCaveZinzolinScript2:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_PLASMA_ENCOUNTER
	applymovement PLAYER, SeasideCaveZinzolinScript.PlayerMovement2
	; fallthrough
SeasideCaveZinzolinScript:
	turnobject SEASIDECAVECHAMBER_ZINZOLIN, DOWN
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer ZINZOLIN, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_PLASMA_ENCOUNTER
	showtext .ZinzolinAfterBattleText
	applymovement SEASIDECAVECHAMBER_SHADOW_1, .ShadowMovement1
	applymovement SEASIDECAVECHAMBER_SHADOW_2, .ShadowMovement2
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear SEASIDECAVECHAMBER_ZINZOLIN
	disappear SEASIDECAVECHAMBER_SHADOW_1
	disappear SEASIDECAVECHAMBER_SHADOW_2
	pause 15
	special Special_FadeInQuickly
	playmusic MUSIC_CHEREN_THEME
	pause 15
	turnobject PLAYER, DOWN
	applymovement SEASIDECAVECHAMBER_MARLON, .MarlonApproachMovement
	applymovement SEASIDECAVECHAMBER_CHEREN, .CherenApproachMovement
	showtext .MarlonAfterBattleText
	showemote EMOTE_SHOCK, SEASIDECAVECHAMBER_CHEREN, 15
	playsound SFX_CALL
	waitsfx
	showtext .CherenPhoneText
	playsound SFX_HANG_UP
	waitsfx
	turnobject SEASIDECAVECHAMBER_CHEREN, LEFT
	turnobject SEASIDECAVECHAMBER_MARLON, RIGHT
	showtext .CherenLeaveText
	applymovement SEASIDECAVECHAMBER_CHEREN, .CherenLeaveMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear SEASIDECAVECHAMBER_CHEREN
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	turnobject SEASIDECAVECHAMBER_MARLON, UP
	showtext .MarlonExplanationText
	applymovement SEASIDECAVECHAMBER_MARLON, .MarlonLeaveMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	setscene 1
	setmapscene ROUTE_12_VILLAGE_BRIDGE_GATE, 1
	setevent EVENT_ASPERTIA_CITY_BLOCKER ; Cheren back in Gym
	setevent EVENT_HUMILAU_CITY_GYM_BLOCKER ; Marlon back in Gym
	end

.PlayerMovement1:
	step_up
	step_up
	step_left
	step_up
	step_up
	step_end

.PlayerMovement2:
	step_up
	step_up
	step_left
	step_left
	step_up
	step_up
	step_end
	
.ShadowMovement1:
	big_step_right
	big_step_up
	big_step_up
	turn_head_right
	step_end
	
.ShadowMovement2:
	big_step_left
	big_step_up
	big_step_up
	turn_head_left
	step_end

.MarlonApproachMovement:
	step_right
	step_right
	step_up
	step_end

.CherenApproachMovement:
	step_left
	step_left
	turn_head_up
	step_end

.CherenLeaveMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

.MarlonLeaveMovement:
	step_down
	step_down
	step_down
	step_right
	step_down
	step_down
	step_end
	
.SeenText:
	text "Zinzolin: Ah,"
	line "<PLAYER>. I was"
	cont "expecting you."
	
	para "You've come to"
	line "stop my plans?"
	
	para "Ha! I'm afraid"
	line "you're too late,"
	cont "child!"
	
	para "While my Shadows"
	line "were keeping those"
	cont "Gym Leaders busy,"
	
	para "I've already"
	line "extracted the"
	
	para "Water Element from"
	line "this pool!"
	
	para "Now only one"
	line "Element remains"
	
	para "before my master"
	line "plan is complete!"
	
	para "But don't think"
	line "I'm just going to"
	
	para "let you leave"
	line "that easily."
	
	para "Consider this"
	line "punishment for"
	
	para "your arrogance at"
	line "the #mon World"
	cont "Tournament!"
	done
	
.BeatenText:
	text "Impossible!"
	done
	
.ZinzolinAfterBattleText:
	text "Zinzolin: What?"
	line "Again?!"
	
	para "…not that it"
	line "matters. I have"
	cont "what I came for."
	
	para "And by now, I've"
	line "kept you all busy"
	cont "for long enough,"
	
	para "my other plan"
	line "should be finished"
	cont "as well!"
	
	para "Farewell, you"
	line "fools!"
	
	para "Shadows! To me!"
	done
	
.MarlonAfterBattleText:
	text "Marlon: Hey, that"
	line "was some nice"
	cont "battlin', <PLAYER>!"
	
	para "Sorry we couldn't"
	line "be much help."
	
	para "We had our hands"
	line "full with those"
	cont "ninja fellas."
	
	para "Cheren: I'm more"
	line "concerned with"
	
	para "what he said"
	line "afterward…"
	
	para "His other plan…?"
	done
	
.CherenPhoneText:
	text "Hello? You've"
	line "reached Cheren."
	
	para "Oh, Bianca? Wha-"
	
	para "Wait! Slow down!"
	
	para "… … … …"
	
	para "I see, I see…"
	
	para "… … … …"
	
	para "But how did-"
	line "Nevermind. This"
	cont "is a problem…"
	
	para "I'll meet you"
	line "there soon."
	done
	
.CherenLeaveText:
	text "Cheren: This is"
	line "bad…"
	
	para "Marlon, you remem-"
	line "ber we moved that"
	cont "thing out of"
	cont "your Gym?"
	
	para "The Prof. just"
	line "called, she says"
	cont "it's been taken."
	
	para "Marlon: What? But"
	line "we moved that"
	
	para "thing to the #-"
	line "mon League!"
	
	para "No one other than"
	line "League members"
	
	para "shoulda been able"
	line "to get in there."
	
	para "Cheren: That's the"
	line "thing. According"
	cont "to the Prof…"
	
	para "The only person"
	line "seen entering that"
	cont "area…"
	
	para "was Prof. Juniper…"
	
	para "…I don't know what"
	line "this means. I'm"
	cont "going to meet with"
	
	para "Prof. Bianca and"
	line "we'll figure out"
	cont "what to do from"
	cont "there."
	
	para "Sorry guys… Take"
	line "care."
	done
	
.MarlonExplanationText:
	text "Marlon: Well now,"
	line "that thing's been"
	cont "nothing but"
	cont "trouble…"
	
	para "I guess I'd better"
	line "explain…"
	
	para "Back when Team"
	line "Plasma first broke"
	cont "up, the #mon"
	
	para "League took a"
	line "bunch of stuff"
	cont "from their labs."
	
	para "One of the devices"
	line "they found got a"
	
	para "lot of the folks"
	line "in the League"
	cont "real worried."
	
	para "It was this thing"
	line "that could be used"
	
	para "to combine a"
	line "person's mind with"
	cont "a machine."
	
	para "They called it"
	line "the Mind Link."
	
	para "Supposedly, if the"
	line "wrong folks got"
	cont "ahold of it…"
	
	para "They could use it"
	line "to make some kind"
	cont "of super weapon."
	
	para "So, the League"
	line "decided to hide"
	cont "it away."
	
	para "I was keeping it"
	line "in my Gym for a"
	cont "while."
	
	para "Guess they figured"
	line "no one would"
	
	para "suspect a powerful"
	line "thing like that"
	
	para "would be kept in"
	line "our little town."
	
	para "But then that girl"
	line "broke into the Gym"
	
	para "and stole your"
	line "#dex…"
	
	para "I didn't think too"
	line "much of it at the"
	cont "time, but I think"
	
	para "she may have been"
	line "trying to take the"
	cont "Mind Link, and"
	
	para "grabbed the #-"
	line "dex by mistake."
	
	para "We moved it to the"
	line "#mon League"
	cont "after that."
	
	para "But it looks like"
	line "Team Plasma"
	
	para "managed to snag it"
	line "anyway…"
	
	para "Well, the Prof's a"
	line "bright girl, I'm"
	
	para "sure she'll figure"
	line "something out."
	
	para "Anyway, you've"
	line "gotten a lot"
	
	para "stronger since I"
	line "saw you last!"
	
	para "I'm impressed!"
	line "You've almost"
	
	para "collected all"
	line "eight Gym Badges"
	cont "already!"
	
	para "Looks like the"
	line "last one you're"
	
	para "missing is the"
	line "Gym Badge from"
	cont "Opelucid City."
	
	para "It's not too far"
	line "from here. Just"
	
	para "head West past"
	line "Lacunosa Town, and"
	
	para "cross the Village"
	line "Bridge."
	
	para "Good luck,"
	line "<PLAYER>, I'm"
	cont "rooting for ya!"
	done
