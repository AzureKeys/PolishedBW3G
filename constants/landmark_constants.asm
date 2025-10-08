; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const NEW_BARK_TOWN      ; 01
	const BATTLE_TOWER       ; 2a
DEF KANTO_LANDMARK EQU const_value
	const ROUTE_1            ; 45
	const ROUTE_22           ; 78
	const POKEMON_LEAGUE     ; 7c
	const CINNABAR_LAB       ; 81
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
