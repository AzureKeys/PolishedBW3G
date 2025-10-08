; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const NEW_BARK_TOWN      ; 01
	const ROUTE_35           ; 1a
	const ROUTE_35_COAST     ; 1b
	const ROUTE_36           ; 1d
	const ROUTE_37           ; 1e
	const ECRUTEAK_CITY      ; 1f
	const BELLCHIME_TRAIL    ; 20
	const BATTLE_TOWER       ; 2a
	const MAHOGANY_TOWN      ; 36
	const LAKE_OF_RAGE       ; 38
DEF KANTO_LANDMARK EQU const_value
	const ROUTE_1            ; 45
	const ROUTE_22           ; 78
	const POKEMON_LEAGUE     ; 7c
	const ROUTE_23           ; 7d
	const INDIGO_PLATEAU     ; 7f
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
