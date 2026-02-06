AldersHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, FLOCCESY_TOWN, 4
	warp_event  5,  9, FLOCCESY_TOWN, 4

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_ALDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, AlderScript, -1
	
AlderScript:
	faceplayer
	checkevent EVENT_BEAT_ALDER
	iffalsefwd .CheckFirstMet
	checkflag ENGINE_ALDER
	iffalsefwd .AlreadyMet
	jumptext .AfterText
	
.CheckFirstMet
	checkevent EVENT_MET_ALDER
	iftruefwd .AlreadyMet
	showtext .IntroText
	setevent EVENT_MET_ALDER
	sjumpfwd .StartBattle
.AlreadyMet
	showtext .AlreadyMetText
.StartBattle
	winlosstext .BeatenText, 0
	loadtrainer ALDER, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ALDER
	setflag ENGINE_ALDER
	jumpthistext
.AfterText:
	text "That was truly a"
	line "rousing battle! I"
	
	para "could tell that"
	line "all of the #mon"
	
	para "were enjoying"
	line "themselves as"
	
	para "well! You should"
	line "come by again"
	
	para "sometime, and"
	line "maybe I'll have"
	
	para "something new to"
	line "teach you!"
	done
	
.IntroText:
	text "Hm? I haven't seen"
	line "you around here"
	cont "before."
	
	para "The name's Alder."
	line "I was the Champion"
	
	para "of the #mon"
	line "League once,"
	
	para "though that was a"
	line "while ago now."
	
	para "I mostly keep to"
	line "my home here, and"
	
	para "teach the local"
	line "kids about #mon"
	cont "training."
	
	para "How's about a"
	line "battle? Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
.AlreadyMetText:
	text "Hi, <PLAYER>. Are"
	line "you keeping up"
	cont "your training?"
	
	para "How's about a"
	line "battle? Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
.BeatenText:
	text "Well done! You"
	line "certainly are an"
	cont "unmatched talent!"
	done
