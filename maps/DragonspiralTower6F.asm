DragonspiralTower6F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonspiralTower6F_HandleRoofObjects

	def_warp_events
	warp_event  9, 16, DRAGONSPIRAL_TOWER_5F, 3
	warp_event  9, 17, DRAGONSPIRAL_TOWER_5F, 4
	warp_event  3, 16, DRAGONSPIRAL_TOWER_ROOF, 1
	warp_event  3, 17, DRAGONSPIRAL_TOWER_ROOF, 2

	def_coord_events
	coord_event  2, 13, 0, DragonspiralTower6FInferScript1
	coord_event  3, 13, 0, DragonspiralTower6FInferScript2

	def_bg_events
	bg_event 10, 12, BGEVENT_ITEM + RED_SHARD, EVENT_DRAGONSPIRAL_TOWER_6F_RED_SHARD
	bg_event 15, 10, BGEVENT_ITEM + BLUE_SHARD, EVENT_DRAGONSPIRAL_TOWER_6F_BLUE_SHARD
	bg_event 10,  8, BGEVENT_ITEM + YELLOW_SHARD, EVENT_DRAGONSPIRAL_TOWER_6F_YELLOW_SHARD
	bg_event 15,  6, BGEVENT_ITEM + GREEN_SHARD, EVENT_DRAGONSPIRAL_TOWER_6F_GREEN_SHARD
	
	def_object_events
	object_event  3,  8, SPRITE_INFER_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_6F_INFER
	itemball_event 12,  3, MAX_ELIXIR, 1, EVENT_DRAGONSPIRAL_TOWER_6F_MAX_ELIXIR
	
	object_const_def
	const DRAGONSPIRALTOWER6F_INFER
	
DragonspiralTower6F_HandleRoofObjects:
; Reset objects on roof if we lost to Zinzolin
	checkmapscene DRAGONSPIRAL_TOWER_ROOF
	ifequalfwd 1, .done
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_JUNIPER
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_2
	clearevent EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_1
.done
	endcallback
	
DragonspiralTower6FInferScript1:
	moveobject DRAGONSPIRALTOWER6F_INFER, 2, 8
	; fallthrough
DragonspiralTower6FInferScript2:
	special Special_FadeOutMusic
	pause 15
	showtext .IntroText
	turnobject PLAYER, UP
	appear DRAGONSPIRALTOWER6F_INFER
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement DRAGONSPIRALTOWER6F_INFER, .ApproachMovement
	showtext .SeenText
	setevent EVENT_DRAGONSPIRAL_TOWER_6F_INFER ; disappear if we lose to her
	winlosstext .BeatenText, 0
	checkevent EVENT_GOT_OSHAWOTT
	iftruefwd .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftruefwd .Snivy
; Tepig
	loadtrainer INFER_SAGE, INFER_SAGE_OSHAWOTT
	sjumpfwd .StartBattle
.Oshawott
	loadtrainer INFER_SAGE, INFER_SAGE_SNIVY
	sjumpfwd .StartBattle
.Snivy
	loadtrainer INFER_SAGE, INFER_SAGE_TEPIG
	; fallthrough
.StartBattle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_ENCOUNTER
	pause 15
	applymovement DRAGONSPIRALTOWER6F_INFER, .BackUpMovement
	showtext .AfterText
	applymovement DRAGONSPIRALTOWER6F_INFER, .LeaveMovement
	disappear DRAGONSPIRALTOWER6F_INFER
	special Special_FadeOutMusic
	pause 30
	playmapmusic
	setscene 1
	end
	
.ApproachMovement:
	step_down
	step_down
	step_down
	step_down
	step_end
	
.BackUpMovement:
	fix_facing
	slow_step_up
	remove_fixed_facing
	step_end
	
.LeaveMovement:
	big_step_up
	big_step_up
	big_step_up
	step_end
	
.IntroText:
	text "Hey!!!"
	line "Hold it right"
	cont "there!"
	done

.SeenText:
	text "Don't you take"
	line "another step! You"
	
	para "may have beaten"
	line "the other Sages,"
	
	para "but I'm not"
	line "letting you past"
	cont "here."
	
	para "What? Are you"
	line "surprised to see"
	cont "me here?"
	
	para "Huh? My Grandpa?"
	line "He told you to"
	
	para "save me from Team"
	line "Plasma? Ha!"
	
	para "I don't need"
	line "saving from"
	cont "anyone!"
	
	para "My Grandpa's an"
	line "idiot. He always"
	
	para "treated me like"
	line "some helpless kid."
	
	para "He refused to even"
	line "acknowledge my"
	
	para "skill. He wouldn't"
	line "even let me try…"
	
	para "But Team Plasma"
	line "recognized my"
	
	para "potential. They"
	line "said they would"
	
	para "train me to be a"
	line "powerful #mon"
	
	para "trainer. And now,"
	line "thanks to that"
	
	para "training, I've"
	line "become strong"
	
	para "enough to become a"
	line "Sage of Team"
	cont "Plasma!"
	
	para "…you say he's"
	line "worried that Team"
	
	para "Plasma's just"
	line "using me?"
	
	para "…sorry, but I"
	line "don't really care"
	cont "if they are."
	
	para "Because I'm just"
	line "using them."
	
	para "I don't care what"
	line "Zinzolin's big"
	
	para "scheme is, I only"
	line "joined Team Plasma"
	cont "to become strong."
	
	para "I'm going to"
	line "become the most"
	
	para "powerful trainer"
	line "in all of Unova!"
	
	para "I'll be the"
	line "greatest #mon"
	
	para "trainer in all"
	line "the world!"
	
	para "And now, there's"
	line "just one obstacle"
	cont "left in my way…"
	
	para "Right here, right"
	line "now, I'm finally"
	cont "going to beat you!"
	
	para "Come on!!!"
	done

.BeatenText:
	text "N-no! This is"
	line "impossible!"
	done

.AfterText:
	text "H-how…?"
	line "I did everything"
	
	para "right. I trained"
	line "up a great team…"
	
	para "I became a Sage of"
	line "Team Plasma…"
	
	para "Why, then…"
	
	para "Why can't I beat"
	line "you?!"
	
	para "What do you have"
	line "that I don't?!"
	
	para "…I-"
	
	para "Aaaargh!!!"
	done
