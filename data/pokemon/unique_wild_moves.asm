MACRO unique_moves
	db \1 ; landmark
	if _NARG == 4
		dp \2, \3 ; species, form
		db \4 ; move
	else
		dp \2 ; species
		db \3 ; move
	endc
ENDM

; TODO: finish unique moves
UniqueWildMoves:
	; event mons (100% chance, see engine/battle/unique_wild_moves.asm)
	unique_moves MAHOGANY_TOWN,    KOFFING,    EXPLOSION    ; TeamRocketBaseB1F
	unique_moves MAHOGANY_TOWN,    GEODUDE,    EXPLOSION    ; TeamRocketBaseB1F
	unique_moves UNION_CAVE,       LAPRAS,     SHELL_SMASH  ; UnionCaveB2F, Fridays
	; wild mons
	unique_moves SLOWPOKE_WELL,    SLOWPOKE,   GROWTH       ; Prism tutor move
	unique_moves ILEX_FOREST,      0,          0
	unique_moves NATIONAL_PARK,    0,          0
	unique_moves TIN_TOWER,        0,          0
	unique_moves BURNED_TOWER,     0,          0
	unique_moves ROUTE_44,         RATTATA,      ROCK_BLAST   ; new move
	db -1
