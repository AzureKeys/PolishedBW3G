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
	db -1            ; Aspertia
	db -1            ; Floccesy
	db -1            ; Virbank
	db -1            ; Nacrene
	db -1            ; Striaton
	db -1            ; Accumula
	db -1            ; P2
	db -1            ; PWT
	db -1            ; Driftveil
	db -1            ; Mistralton
	db -1            ; Opelucid
	assert_table_length NUM_MAP_GROUPS + 1
