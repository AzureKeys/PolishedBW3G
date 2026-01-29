NimbasaParkRunway_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, NimbasaParkRunwayHandleStairs
	
	def_warp_events
	warp_event  4, 25, NIMBASA_PARK_OUTSIDE, 4
	warp_event  5, 25, NIMBASA_PARK_OUTSIDE, 4
	;warp_event  3,  2, NIMBASA_PARK_BASEMENT, 1

	def_coord_events

	def_bg_events
	bg_event  3, 23, BGEVENT_JUMPTEXT, NimbasaParkRunwaySignText
	bg_event  6, 23, BGEVENT_JUMPTEXT, NimbasaParkRunwaySignText
	
	def_object_events
	object_event  4,  3, SPRITE_CHEREN, SPRITEMOVEDATA_WANDER, 3, 3, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NimbasaParkRunwayCherenText, EVENT_NIMBASA_PARK_RUNWAY_CHEREN
	object_event  4, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntMNimbasaParkRunway, EVENT_NIMBASA_PARK_GRUNTS
	object_event  5, 18, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF1NimbasaParkRunway, EVENT_NIMBASA_PARK_GRUNTS
	object_event  5, 10, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, TrainerGruntF2NimbasaParkRunway, EVENT_NIMBASA_PARK_GRUNTS
	
NimbasaParkRunwayHandleStairs:
	checkevent EVENT_OPENED_NIMBASA_PARK_RUNWAY
	iffalsefwd .done
	changeblock  2,  2, $1a ; stairs open
.done
	endcallback
	
TrainerGruntMNimbasaParkRunway:
	generictrainer GRUNTM, GRUNTM_NIMBASA_5, EVENT_BEAT_GRUNTM_NIMBASA_5, .SeenText, .BeatenText

	text "Well, it's not like"
	line "you'll be able to"
	
	para "find the secret"
	line "entrance."
	done
	
.SeenText:
	text "Here I come!"
	line "Plasmaaa!"
	done

.BeatenText:
	text "Wh-wh-wh-what is"
	line "this? P-p-plasma!"
	done
	
TrainerGruntF1NimbasaParkRunway:
	generictrainer GRUNTF, GRUNTF_NIMBASA_4, EVENT_BEAT_GRUNTF_NIMBASA_4, .SeenText, .BeatenText

	text "You getting in our"
	line "way means that you"

	para "find us worth the"
	line "time, doesn't it?"
	done
	
.SeenText:
	text "In my own way, I'm"
	line "a strong part of"
	
	para "this Team Plasma"
	line "group!"
	done

.BeatenText:
	text "Great plans are"
	line "always getting"
	cont "interrupted…"
	done
	
TrainerGruntF2NimbasaParkRunway:
	generictrainer GRUNTF, GRUNTF_NIMBASA_5, EVENT_BEAT_GRUNTF_NIMBASA_5, .SeenText, .BeatenText

	text "If we steal #-"
	line "mon, the number of"

	para "trainers in the"
	line "world will go"
	
	para "down. Then we won't"
	line "have any more"
	cont "enemies!"
	done
	
.SeenText:
	text "Intruder sighted!"
	done

.BeatenText:
	text "What a weak #-"
	line "mon… I'll just"
	
	para "have to steal some"
	line "better ones!"
	done
	
NimbasaParkRunwayCherenText:
	text "Cheren: Oh,"
	line "<PLAYER>. I trust"
	
	para "those Plasma"
	line "Grunts didn't give"
	cont "you any trouble."
	
	para "Unfortunately, I"
	line "wasn't able to get"
	
	para "any useful infor-"
	line "mation out of"
	cont "them."
	
	para "I'm going to keep"
	line "investigating this"
	cont "area for now."
	
	para "You should check"
	line "the coaster room"
	cont "for anything"
	cont "suspicious."
	done

NimbasaParkRunwaySignText:
	text "N--basa --ty Gy-"
	line "Lea--r: E--sa"
	done
