NsRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, HandleN

	def_warp_events
	warp_event  3, 15, VICTORY_ROAD_CASTLE, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  2, SPRITE_N, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NsRoomScript, EVENT_NS_ROOM_N
	
	object_const_def
	const NSROOM_N
	
HandleN:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalsefwd .Disappear
	checkevent EVENT_OPENED_TWIST_MOUNTAIN
	iftruefwd .Disappear
	appear NSROOM_N
	endcallback
	
.Disappear
	disappear NSROOM_N
	endcallback
	
NsRoomScript:
	faceplayer
	showtext .SeenText
	winlosstext .BeatenText, 0
	loadtrainer N_T, 1
	startbattle
	reloadmapafterbattle
	showtext .AfterText
	setevent EVENT_OPENED_TWIST_MOUNTAIN
	special Special_FadeOutMusic
	special Special_FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NSROOM_N
	pause 15
	special Special_FadeInQuickly
	playmapmusic
	end
	
.SeenText:
	text "You…"
	
	para "You're the one who"
	line "stopped the Plasma"
	
	para "Shadows' ill"
	line "conceived plan,"
	cont "aren't you?"
	
	para "Their plot was a"
	line "foolish one, but I"
	
	para "wouldn't neces-"
	line "sarily call them"
	cont "evil…"
	
	para "I can understand"
	line "the desire to get"
	
	para "back someone"
	line "precious to you,"
	
	para "even if you know"
	line "deep down that it"
	
	para "will never be the"
	line "same as it once"
	cont "was…"
	
	para "But they put an"
	line "innocent #mon"
	
	para "in danger, and"
	line "that, I cannot"
	cont "forgive."
	
	para "That creature…"
	
	para "Though it was"
	line "created artific-"
	cont "ially, it is still"
	cont "a #mon."
	
	para "It deserves to"
	line "live a happy life,"
	
	para "as all #mon and"
	line "people do."
	
	para "You… You've come"
	line "in search of the"
	cont "#mon, right?"
	
	para "Well, it's no"
	line "longer here."
	
	para "But before I tell"
	line "you where it went,"
	
	para "I need to see what"
	line "kind of a trainer"
	cont "you are."
	
	para "Come! Show me the"
	line "power of the #-"
	cont "mon who defeated"
	cont "Team Plasma!"
	done
	
.BeatenText:
	text "I see… So that's"
	line "the kind of"
	cont "trainer you are…"
	done
	
.AfterText:
	text "Your #mon…"
	
	para "I can hear them."
	
	para "You truly are a"
	line "kind and noble"
	cont "trainer."
	
	para "Very well, I will"
	line "tell you."
	
	para "The artificial"
	line "#mon left this"
	
	para "place, and took"
	line "off across the"
	cont "sky."
	
	para "It was headed"
	line "toward Twist"
	cont "Mountain, right"
	
	para "outside of Icirrus"
	line "City."
	
	para "You should be able"
	line "to find it there…"
	
	para "I am glad I had"
	line "this meeting with"
	cont "you, trainer."
	
	para "Good luck on your"
	line "travels, and never"
	
	para "forget to treat"
	line "all #mon with"
	cont "kindness."
	
	para "Farewell…"
	done
