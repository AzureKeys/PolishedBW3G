GrassMonProbTable:
	table_width 1
	db 20  ; 20% chance
	db 35  ; 15% chance
	db 50  ; 15% chance
	db 65  ; 15% chance
	db 75  ; 10% chance
	db 85  ; 10% chance
	db 90  ;  5% chance
	db 95  ;  5% chance
	db 98  ;  3% chance
	db 100 ;  2% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 1
	db 60  ; 60% chance
	db 90  ; 30% chance
	db 100 ; 10% chance
	assert_table_length NUM_WATERMON
