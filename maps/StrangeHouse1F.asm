StrangeHouse1F_MapScriptHeader:
	def_scene_scripts
	scene_script StrangeHouse1FTrigger0
	scene_script StrangeHouse1FNoTrigger
	scene_script StrangeHouse1FNoTrigger
	scene_script StrangeHouse1FNoTrigger
	scene_script StrangeHouse1FNoTrigger
	scene_script StrangeHouse1FNoTrigger
	scene_script StrangeHouse1FNoTrigger

	def_callbacks
	callback MAPCALLBACK_TILES, MoveFurniture

	def_warp_events
	warp_event 13, 13, LENTIMAS_OUTSKIRT, 2
	warp_event 14, 13, LENTIMAS_OUTSKIRT, 2
	warp_event  4,  8, STRANGE_HOUSE_B1F, 1
	warp_event 23,  8, STRANGE_HOUSE_B1F, 2
	warp_event  7,  0, STRANGE_HOUSE_ROOMS, 1
	warp_event 13,  0, STRANGE_HOUSE_ROOMS, 3
	warp_event 19,  0, STRANGE_HOUSE_ROOMS, 5
	warp_event  9,  7, STRANGE_HOUSE_ROOMS, 7
	warp_event 19,  7, STRANGE_HOUSE_ROOMS, 9

	def_coord_events

	def_bg_events

	def_object_events
	
StrangeHouse1FTrigger0:
	sdefer StrangeHouse1F_EntryScene
StrangeHouse1FNoTrigger:
	end
	
StrangeHouse1F_EntryScene:
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	changeblock 14,  4, $11 ; table by upper staircase
	setscene 1 ; initial layout
	jumpthistext
	text "… … … …"
	
	para "Do you want to"
	line "play…?"
	
	para "With me… …?"
	done
	
MoveFurniture:
	checkscene
	ifequal 1, .MoveFurniture1
	ifequal 2, .MoveFurniture2
	ifequal 3, .MoveFurniture3
	ifequal 4, .MoveFurniture4
	ifequal 5, .MoveFurniture5
	endcallback
	
.MoveFurniture1: ; initial layout
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	changeblock 14,  4, $11 ; table by upper staircase
	endcallback
	
.MoveFurniture2: ; layout set by lower left room
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	changeblock  8,  2, $47 ; chairs by upper left door
	changeblock  8,  0, $64 ; chairs by upper left door
	changeblock 18,  0, $65 ; table by upper right door
	changeblock 18,  2, $66 ; table by upper right door
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	endcallback
	
.MoveFurniture3: ; layout set by upper left room
	changeblock  6,  0, $67 ; chairs by upper left door
	changeblock  6,  2, $68 ; chairs by upper left door
	changeblock 12,  0, $69 ; chair by back door
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	changeblock 20,  0, $64 ; chairs by upper right door
	changeblock 20,  2, $6a ; chairs by upper right door
	changeblock 20,  8, $20 ; table by right table
	changeblock 24, 10, $45 ; chairs by right table
	endcallback
	
.MoveFurniture4: ; layout set by lower right room
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 12,  0, $69 ; chair by back door
	changeblock 20,  0, $64 ; chairs by upper right door
	changeblock 20,  2, $6a ; chairs by upper right door
	changeblock 20,  8, $20 ; table by right table
	changeblock 24, 10, $45 ; chairs by right table
	changeblock  6,  0, $69 ; chairs by upper left door
	changeblock  6,  2, $68 ; chairs by upper left door
	endcallback
	
.MoveFurniture5: ; layout set by upper right room
	changeblock 18,  0, $67 ; chairs by upper right door
	changeblock 18,  2, $44 ; chairs by upper right door
	changeblock 14,  4, $11 ; table by upper staircase
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	endcallback
	