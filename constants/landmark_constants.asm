; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const NEW_BARK_TOWN      ; 01
	const SPROUT_TOWER       ; 08
	const UNION_CAVE         ; 0d
	const SLOWPOKE_WELL      ; 10
	const RADIO_TOWER        ; 17
	const ROUTE_35           ; 1a
	const ROUTE_35_COAST     ; 1b
	const NATIONAL_PARK      ; 1c
	const ROUTE_36           ; 1d
	const ROUTE_37           ; 1e
	const ECRUTEAK_CITY      ; 1f
	const BELLCHIME_TRAIL    ; 20
	const TIN_TOWER          ; 21
	const BURNED_TOWER       ; 22
	const LIGHTHOUSE         ; 28
	const BATTLE_TOWER       ; 2a
	const ROUTE_42           ; 34
	const MAHOGANY_TOWN      ; 36
	const ROUTE_43           ; 37
	const LAKE_OF_RAGE       ; 38
	const ROUTE_44           ; 39
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
