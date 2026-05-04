ChampionsRoomEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ChampionsRoomEntrance_HandleScene

	def_warp_events
	warp_event  7,  5, CHAMPIONS_ROOM, 1

	def_coord_events
	coord_event  7,  6, 0, ChampionsRoomEntranceShadowsScript

	def_bg_events
	
	def_object_events
	object_event  6,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_PEOPLE
	object_event  7,  7, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_PEOPLE
	object_event  8,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_PEOPLE
	object_event  7,  5, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_PEOPLE
	pokemon_event  7,  5, METAGROSS, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_PEOPLE
	
	object_const_def
	const CHAMPIONSROOMENTRANCE_SHADOW_1
	const CHAMPIONSROOMENTRANCE_SHADOW_2
	const CHAMPIONSROOMENTRANCE_SHADOW_3
	const CHAMPIONSROOMENTRANCE_JUNIPER
	const CHAMPIONSROOMENTRANCE_METAGROSS
	
ChampionsRoomEntrance_HandleScene:
	; If we lost to Genesis Project, reset scene so it will play again
	checkevent EVENT_BEAT_GENESIS_PROJECT
	iftruefwd .done
	setscene 0
.done
	endcallback
	
ChampionsRoomEntranceShadowsScript:
	special Special_FadeOutMusic
	pause 15
	showtext .IntroText
	playmusic MUSIC_PLASMA_ENCOUNTER
	applymovement PLAYER, .BackUpMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_2
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_2, .TeleportInMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_1
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, .TeleportInMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_3
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, .TeleportInMovement
	showtext .ShadowsIntroText
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, .ShadowsApproachMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, .ShadowsApproachMovement
	special Special_FadeOutMusic
	pause 15
	showtext .MetagrossAttackText
	appear CHAMPIONSROOMENTRANCE_METAGROSS
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_2, UP
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_1, UP
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_3, UP
	cry METAGROSS
	waitsfx
	playsound SFX_TACKLE
	applymovement CHAMPIONSROOMENTRANCE_METAGROSS, .MetagrossAttackMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_2, .ShadowHitMovement
	waitsfx
	pause 30
	playmusic MUSIC_CHEREN_THEME
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOMENTRANCE_JUNIPER
	waitsfx
	showtext .JuniperIntroText
	playsound SFX_BALL_POOF
	disappear CHAMPIONSROOMENTRANCE_METAGROSS
	waitsfx
	applymovement CHAMPIONSROOMENTRANCE_JUNIPER, .JuniperApproachMovement
	opentext
	writethistext
	text "You may have"
	line "gotten the jump on"
	
	para "me before, but I"
	line "have no intention"
	
	para "of letting you"
	line "control me again!"
	
	para "Shadow: Foolish"
	line "woman, we have no"
	
	para "need for you. The"
	line "true king of Team"
	
	para "Plasma has already"
	line "risen!"
	
	para "Shadow: That's"
	line "right! We've used"
	
	para "the Mind Link you"
	line "so graciously"
	
	para "brought for us to"
	line "bring back our"
	cont "king!"
	
	para "Shadow: By fusing"
	line "his mind with our"
	
	para "most powerful"
	line "artifical #mon,"
	
	para "our king will be"
	line "unstoppable!"
	
	para "Shadow: That's"
	line "right! Ghetsis has"
	cont "risen again!"
	
	para "Lord Ghetsis will"
	line "once again become"
	
	para "the king of Team"
	line "Plasma, and soon,"
	cont "all of Unova!"
	done
	promptbutton
	showemote EMOTE_SHOCK, CHAMPIONSROOMENTRANCE_JUNIPER, 15
	writethistext
	text "Juniper: What?!"
	line "You-you fused him"
	cont "with a #mon?"
	
	para "That's insane!"
	line "There's no way that"
	
	para "thing could be"
	line "stable!"
	
	para "<PLAYER>! We've got"
	line "to stop this thing"
	
	para "before it gets out"
	line "and starts causing"
	cont "trouble!"
	done
	waitbutton
	closetext
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, .ShadowLeftMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, .ShadowRightMovement
	showtext .HoldThemOffText
	applymovement PLAYER, .PlayerApproachMovement
	turnobject CHAMPIONSROOMENTRANCE_JUNIPER, UP
	opentext
	writethistext
	text "Here, let me heal"
	line "your party."
	done
	promptbutton
	playsound SFX_FULL_HEAL
	special HealParty
	writethistext
	text "<PLAYER>, you've"
	line "got to stop what-"
	
	para "ever thing they've"
	line "created in there."
	
	para "I'll hold them"
	line "off. Go, quickly!"
	done
	waitbutton
	closetext
	turnobject CHAMPIONSROOMENTRANCE_JUNIPER, DOWN
	applymovement PLAYER, .PlayerExitMovement
	setscene 1
	warpcheck
	end

.BackUpMovement:
	turn_head_up
	fix_facing
	slow_step_down
	slow_step_down
	slow_step_down
	remove_fixed_facing
	step_end
	
.TeleportInMovement:
	teleport_to
	turn_head_down
	step_end
	
.ShadowsApproachMovement:
	step_down
	step_down
	step_end
	
.MetagrossAttackMovement:
	big_step_down
	step_end
	
.ShadowHitMovement:
	fix_facing
	big_step_down
	remove_fixed_facing
	step_end
	
.JuniperApproachMovement:
	slow_step_down
	slow_step_down
	step_end
	
.ShadowLeftMovement:
	big_step_up
	turn_head_right
	step_end
	
.ShadowRightMovement:
	big_step_up
	turn_head_left
	step_end
	
.PlayerApproachMovement:
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	turn_head_down
	step_end
	
.PlayerExitMovement:
	step_up
	step_end
	
.IntroText:
	text "???: You! Don't"
	line "take another step!"
	done
	
.ShadowsIntroText:
	text "Shadow: You've"
	line "been a thorn in"
	
	para "the side of our"
	line "Sages…"
	
	para "Shadow: And we"
	line "will not permit"
	
	para "you to jeopardize"
	line "our plan further…"
	
	para "Shadow: We will"
	line "take care of you"
	
	para "right here and"
	line "now!"
	done
	
.MetagrossAttackText:
	text "???: Hold it!"
	
	para "Metagross, Iron"
	line "Head!"
	done

.JuniperIntroText:
	text "Juniper: Whatever"
	line "you've got"
	
	para "planned, it stops"
	line "now!"
	done
	
.HoldThemOffText:
	text "Shadow: We will"
	line "not allow you to"
	
	para "disturb our plans"
	line "any further!"
	
	para "Shadow: We will"
	line "hold you both"
	
	para "while our king"
	line "reclaims his"
	
	para "rightful place as"
	line "the ruler of"
	cont "Unova!"
	
	para "Juniper: Don't"
	line "underestimate me!"
	
	para "I'm plenty strong"
	line "enough to handle"
	cont "all three of you."
	
	para "<PLAYER>, quickly!"
	done
