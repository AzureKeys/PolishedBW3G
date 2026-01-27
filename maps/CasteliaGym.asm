CasteliaGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CasteliaGymCocoonsScript

	def_warp_events
	warp_event  6, 43, CASTELIA_CITY_STREETS, 22
	warp_event  7, 43, CASTELIA_CITY_STREETS, 22
	warp_event  6, 39, CASTELIA_GYM, 4
	warp_event  7, 29, CASTELIA_GYM, 3
	warp_event  2, 26, CASTELIA_GYM, 14
	warp_event 12, 26, CASTELIA_GYM, 7
	warp_event 12, 18, CASTELIA_GYM, 6
	warp_event 10, 14, CASTELIA_GYM, 9
	warp_event 12, 38, CASTELIA_GYM, 8
	warp_event  2, 38, CASTELIA_GYM, 11
	warp_event  3, 18, CASTELIA_GYM, 10
	warp_event  4, 14, CASTELIA_GYM, 13
	warp_event  6,  6, CASTELIA_GYM, 12
	warp_event  8, 39, CASTELIA_GYM, 5

	def_coord_events
	coord_event  2, 27, 0, CasteliaGymOpenScript1
	coord_event 10, 15, 0, CasteliaGymOpenScript2

	def_bg_events
	bg_event  4, 41, BGEVENT_READ, CasteliaGymStatue
	bg_event  8, 41, BGEVENT_READ, CasteliaGymStatue

	def_object_events
	object_event  6,  2, SPRITE_BURGH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaGymBurghScript, -1
	object_event  7, 40, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaGymGuyScript, -1
	object_event  9, 29, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHarlequin1CasteliaGym, -1
	object_event 11, 16, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHarlequin2CasteliaGym, -1
	object_event 13, 38, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerHarlequin3CasteliaGym, -1
	object_event  0, 39, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHarlequin4CasteliaGym, -1
	object_event  3, 16, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerHarlequin5CasteliaGym, -1
	
CasteliaGymCocoonsScript:
	checkevent EVENT_CASTELIA_GYM_COCOON_1_OPEN
	iffalsefwd .check2
	changeblock  6, 38, $74 ; front & side holes
	changeblock  8, 38, $75 ; warp carpet for side
.check2
	checkevent EVENT_CASTELIA_GYM_COCOON_2_OPEN
	iffalsefwd .done
	changeblock 10, 36, $6F ; cocoon top w side hole
	changeblock 10, 38, $73 ; cocoon bottom w side hole
	changeblock 12, 38, $76 ; floor w warp carpet
	changeblock  2, 38, $72 ; front hole cocoon
.done
	endcallback
	
CasteliaGymOpenScript1:
	setevent EVENT_CASTELIA_GYM_COCOON_1_OPEN
	end
	
CasteliaGymOpenScript2:
	setevent EVENT_CASTELIA_GYM_COCOON_2_OPEN
	end

CasteliaGymBurghScript:
	checkevent EVENT_BEAT_BURGH
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer BURGH, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BURGH
	opentext
	givebadge INSECTBADGE, 0
	setmapscene CASTELIA_CITY_STREETS, 1 ; Set Cheren to appear
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_1
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_2
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_3
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_4
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_5
	writethistext
	text "It's the Insect"
	line "Badge! It's"
	cont "insectible--"

	para "I mean incredible!"

	para "It will allow you"
	line "to command all"
	
	para "#mon up to Lv."
	line "40, even ones from"
	cont "a trade!"

	para "And, since I'm"
	line "such a generous"
	cont "guy, I'll also"
	cont "give you this!"
	done
	promptbutton
	verbosegivetmhm TM_U_TURN
	setevent EVENT_GOT_TM69_U_TURN
	writethistext
	text "TM69 contains"
	line "U-turn."

	para "It causes the user"
	line "to zip back to the"

	para "team after attack-"
	line "ing, it's a great"

	para "way to get in and"
	line "out quickly!"
	done
	promptbutton
	jumpthisopenedtext
.AfterText:
	text "I'm working on a"
	line "piece with a #-"
	cont "mon motif."

	para "When I look at my"
	line "#mon, I get the"

	para "urge to create,"
	line "and I just can't"
	cont "stop!"
	done
	
.SeenText:
	text "Hm, my Bug #-"
	line "mon have been"
	
	para "getting all worked"
	line "up, and what do I"
	
	para "spy with my little"
	line "eye? A trainer"

	para "who's got me"
	line "scurrying around"
	cont "with excitement!"

	para "I, Burgh, the Gym"
	line "Leader of Castelia"
	cont "City, accept your"
	cont "challenge!"

	para "Let's get right"
	line "to it!"
	done
	
.BeatenText:
	text "Is it over, has"
	line "my muse abandoned"
	cont "me?"
	
	para "Here, take this"
	line "badge, I think"
	cont "it'll suit you!"
	done

CasteliaGymGuyScript:
	checkevent EVENT_BEAT_BURGH
	iftrue_jumptextfaceplayer .WinText
	jumpthistextfaceplayer
	
	text "Yo, challenger!"

	para "Castelia City's"
	line "Gym Leader is"
	cont "called Burgh."

	para "He's a bit of an"
	line "oddball, but you'd"

	para "better not under-"
	line "estimate his Bug-"
	cont "type #mon!"

	para "Bugs are most"
	line "afraid of Fire."

	para "They can also be"
	line "crushed by Rocks,"
	
	para "and Flying attacks"
	line "work well too."
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
	
CasteliaGymStatue:
	gettrainername BURGH, 1, STRING_BUFFER_4
	checkflag ENGINE_INSECTBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

TrainerHarlequin1CasteliaGym:
	generictrainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_1, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_1, .SeenText, .BeatenText

	text "The cocoons some-"
	line "times have secret"

	para "paths. Try going"
	line "through them all!"
	done
	
.SeenText:
	text "What do you think?"
	line "This Gym… How"
	cont "should I say?"

	para "Isn't it full of…"
	line "mysterious charms?"
	done
	
.BeatenText:
	text "You've got quite a"
	line "bit of charm your-"
	cont "self, don't you?"
	done

TrainerHarlequin2CasteliaGym:
	generictrainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_2, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_2, .SeenText, .BeatenText

	text "Here's a secret:"
	line "If you enter this"
	
	para "cocoon, a secret"
	line "path will open on"
	cont "the first floor!"
	done
	
.SeenText:
	text "You thought you"
	line "could get through"
	cont "here? Think again!"
	done
	
.BeatenText:
	text "My, my! Aren't you"
	line "a bit too strong?"
	done

TrainerHarlequin3CasteliaGym:
	generictrainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_3, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_3, .SeenText, .BeatenText

	text "Hiding and waiting"
	line "makes instincts"
	cont "dull, you know?"
	done
	
.SeenText:
	text "When the cocoon"
	line "opens, the one who"
	cont "pops out is moi!"
	
	para "On that note, have"
	line "a battle with moi!"
	done
	
.BeatenText:
	text "I was taking a"
	line "nap!"
	done

TrainerHarlequin4CasteliaGym:
	generictrainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_4, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_4, .SeenText, .BeatenText

	text "Try going up the"
	line "right side of the"
	
	para "gym to open up"
	line "this cocoon!"
	done
	
.SeenText:
	text "The one you meet"
	line "at this cocoon is"

	para "none other than"
	line "me!"
	done
	
.BeatenText:
	text "Looks like the"
	line "cocoons brought"
	cont "you to me!"
	done

TrainerHarlequin5CasteliaGym:
	generictrainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_5, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_5, .SeenText, .BeatenText

	text "Burgh remodeled"
	line "the Gym in order"
	
	para "to understand the"
	line "feelings of #-"
	
	para "mon that wrap"
	line "themselves in"
	cont "cocoons."
	
	para "Unfortunately, we"
	line "can never seem to"
	
	para "find our way"
	line "around!"
	done
	
.SeenText:
	text "You're just one"
	line "step away from"

	para "being able to"
	line "challenge Burgh!"
	done
	
.BeatenText:
	text "Your battle style"
	line "is almost as"
	cont "artistic as Burgh!"
	done
	