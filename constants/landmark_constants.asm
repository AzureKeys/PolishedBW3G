; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const HUMILAU_CITY       ; 01
	const MARINE_TUBE        ; 04
	const ROUTE_22           ; 05
	const GIANT_CHASM        ; 06
	const LACUNOSA_TOWN      ; 07
	const ROUTE_13           ; 08
	const UNDELLA_TOWN       ; 09
	const ROUTE_14           ; 0a
	const REVERSAL_MOUNTAIN  ; 0b
	const LENTIMAS_OUTSKIRT  ; 0c
	const STRANGE_HOUSE      ; 0d
	const LENTIMAS_TOWN      ; 0e
	const LOSTLORN_FOREST    ; 0f
	const ROUTE_16           ; 10
	const NIMBASA_CITY       ; 11
	const NIMBASA_PARK       ; 12
	const ROUTE_5            ; 2d
	const ROUTE_12           ; 42
	const POKEMON_LEAGUE     ; 45
	const BATTLE_TOWER       ; 46
DEF KANTO_LANDMARK EQU const_value
DEF SHAMOUTI_LANDMARK EQU const_value
DEF NUM_LANDMARKS EQU const_value

; used in CaughtData
DEF LANDMARK_EVENT EQU $ff

; Regions
	const_def
	const JOHTO_REGION  ; 0
	const KANTO_REGION  ; 1
	const ORANGE_REGION ; 2
DEF NUM_REGIONS EQU const_value
