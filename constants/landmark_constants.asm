; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks
	const NEW_BARK_TOWN      ; 01
	const SPROUT_TOWER       ; 08
	const UNION_CAVE         ; 0d
	const SLOWPOKE_WELL      ; 10
	const ILEX_FOREST        ; 11
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
	const WHIRL_ISLANDS      ; 2b
	const ROUTE_42           ; 34
	const MT_MORTAR          ; 35
	const MAHOGANY_TOWN      ; 36
	const ROUTE_43           ; 37
	const LAKE_OF_RAGE       ; 38
	const ROUTE_44           ; 39
	const ICE_PATH           ; 3a
	const BLACKTHORN_CITY    ; 3b
	const DRAGONS_DEN        ; 3c
	const ROUTE_45           ; 3d
	const DARK_CAVE          ; 3e
	const ROUTE_46           ; 3f
	const SILVER_CAVE        ; 40
DEF KANTO_LANDMARK EQU const_value
	const ROUTE_1            ; 45
	const MT_MOON            ; 4b
	const UNDERGROUND        ; 53
	const DIGLETTS_CAVE      ; 56
	const ROCK_TUNNEL        ; 5b
	const URAGA_CHANNEL      ; 6f
	const SCARY_CAVE         ; 70
	const ROUTE_19           ; 71
	const ROUTE_20           ; 72
	const SEAFOAM_ISLANDS    ; 73
	const CINNABAR_ISLAND    ; 74
	const POKEMON_MANSION    ; 75
	const CINNABAR_VOLCANO   ; 76
	const ROUTE_21           ; 77
	const ROUTE_22           ; 78
	const TOHJO_FALLS        ; 7a
	const POKEMON_LEAGUE     ; 7c
	const ROUTE_23           ; 7d
	const VICTORY_ROAD       ; 7e
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
