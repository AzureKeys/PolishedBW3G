MACRO alternate_music
; pointer, bitmask, unset music id, set music id
	dw \1
	db 1 << (\2), \3, \4
ENDM

AlternateMusic:
; entries correspond to alternate MUSIC_* constants (see constants/music_constants.asm)
	table_width 5
	alternate_music wStatusFlags2, STATUSFLAGS2_ROCKETS_IN_MAHOGANY_F, MUSIC_HUMILAU_CITY,  MUSIC_ROCKET_HIDEOUT
	assert_table_length $100 - FIRST_ALT_MUSIC
