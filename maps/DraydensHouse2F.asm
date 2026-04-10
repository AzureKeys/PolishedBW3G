DraydensHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, DRAYDENS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  3,  4, SPRITE_IRIS, SPRITEMOVEDATA_WANDER, 2, 2, -1, PAL_NPC_DARK_PURPLE, OBJECTTYPE_SCRIPT, 0, DraydensHouseIrisScript, EVENT_DRAYDENS_HOUSE_2F_IRIS
	
DraydensHouseIrisScript:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftruefwd .CheckBattle
	checkflag ENGINE_LEGENDBADGE
	iftrue_jumptextfaceplayer .BeatDraydenText
	jumpthistextfaceplayer
	text "Oh, <PLAYER>!"
	line "Did you hear?"
	
	para "My grandpa is back"
	line "from the tower."
	
	para "You should go"
	line "challenge him at"
	
	para "the Gym if you"
	line "haven't yet!"
	
	para "Be careful though,"
	line "he's really strong!"
	done
	
.CheckBattle:
	faceplayer
	checkevent EVENT_BEAT_IRIS
	iffalsefwd .FirstBattle
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .AfterBattle
	checkflag ENGINE_IRIS
	iftrue_jumptext .AfterBattleText
	showtext .RematchText
	sjumpfwd .StartBattle
	
.FirstBattle
	showtext .FirstBattleText
	; fallthrough
.StartBattle
	winlosstext .BeatenText, 0
	loadtrainer IRIS, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_IRIS
	setflag ENGINE_IRIS
.AfterBattle
	jumpthistext
.AfterBattleText:	
	text "You really are"
	line "something,"
	cont "<PLAYER>!"
	
	para "I can definitely"
	line "see how you were"
	
	para "able to become"
	line "Champion."
	
	para "Stop by again"
	line "sometime, and"
	
	para "we'll have another"
	line "battle."
	
	para "I'll be ready!"
	done
	
.BeatDraydenText:
	text "Wow! You managed"
	line "to even beat my"
	cont "grandpa!"
	
	para "You must be a"
	line "really strong"
	cont "trainer, <PLAYER>!"
	
	para "You may even have"
	line "what it takes to"
	
	para "beat the #mon"
	line "League!"
	
	para "Who knows? Maybe"
	line "you'll even become"
	
	para "the Champion, like"
	line "I did!"
	
	para "If you do ever"
	line "become Champion,"
	
	para "you should come by"
	line "and battle me"
	cont "sometime!"
	done
	
.FirstBattleText:
	text "Hi, <PLAYER>!"
	
	para "So, you did end up"
	line "becoming Champion"
	cont "after all, huh?"
	
	para "I knew you had it"
	line "in you!"
	
	para "Say, why don't you"
	line "and I have a"
	
	para "battle, Champion"
	line "against Champion!"
	
	para "Show me the power"
	line "you used to beat"
	cont "the #mon"
	cont "League!"
	done
	
.RematchText:
	text "Oh, hi <PLAYER>!"
	
	para "Are you back for a"
	line "rematch with me?"
	
	para "Ha! I like that!"
	line "You have to keep"
	
	para "up your skills if"
	line "you want to remain"
	cont "Champion!"
	
	para "Now, show me the"
	line "power you used to"
	
	para "defeat the #mon"
	line "League!"
	done
	
.BeatenText:
	text "Wow, that was"
	line "incredible!"
	done
	