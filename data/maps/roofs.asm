MapGroupRoofs:
; entries correspond to map groups
; values are indexes for LoadMapGroupRoof.Roofs
	table_width 1
	db -1            ; 0
	db ROOF_OLIVINE  ; Battle Tower Outside
	db -1            ; 16
	db -1            ; Special
	db -1            ; Dungeons
	db -1            ; Humilau
	db -1            ; Lacunosa
	db -1            ; Undella
	db -1            ; Lentimas
	db -1            ; Nimbasa
	db -1            ; Desert
	db -1            ; Castelia
	assert_table_length NUM_MAP_GROUPS + 1
