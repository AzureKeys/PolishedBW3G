; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const HUMILAU_CITY       ; 01
	const ROUTE_22           ; 02
	const GIANT_CHASM        ; 03
	const BATTLE_TOWER       ; 2a
	const POKEMON_LEAGUE     ; 7c
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
