; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def
	const MUSIC_NONE                           ; 00
	const MUSIC_TITLE                          ; 01
	const MUSIC_MAIN_MENU                      ; 02
	const MUSIC_MOM                            ; 03
	const MUSIC_UNOVA_WILD_BATTLE              ; 04
	const MUSIC_UNOVA_WILD_BATTLE_NIGHT        ; 05
	const MUSIC_WILD_VICTORY                   ; 06
	const MUSIC_SHOW_ME_AROUND                 ; 07
	const MUSIC_POKEMON_CENTER                 ; 08
	const MUSIC_HEAL                           ; 09
	const MUSIC_CAPTURE                        ; 0a
	const MUSIC_YOUNGSTER_ENCOUNTER            ; 0b
	const MUSIC_UNOVA_TRAINER_BATTLE           ; 0c
	const MUSIC_TRAINER_VICTORY                ; 0d
	const MUSIC_HIDDEN_GROTTO                  ; 0e
	const MUSIC_ROUTE_4                        ; 0f
	const MUSIC_PLASMA_ENCOUNTER               ; 10
	const MUSIC_PLASMA_BATTLE                  ; 11
	const MUSIC_RIVAL_ENCOUNTER                ; 12
	const MUSIC_RIVAL_BATTLE                   ; 13
	const MUSIC_EVOLUTION                      ; 14
	const MUSIC_GYM                            ; 15
	const MUSIC_UNOVA_GYM_LEADER_BATTLE        ; 16
	const MUSIC_FINAL_POKEMON                  ; 17
	const MUSIC_GYM_VICTORY                    ; 18
	const MUSIC_GAME_CORNER                    ; 19
	const MUSIC_BICYCLE                        ; 1a
	const MUSIC_LASS_ENCOUNTER                 ; 1b
	const MUSIC_SURF                           ; 1c
	const MUSIC_SURFING_PIKACHU                ; 1d
	const MUSIC_ROCKET_HIDEOUT                 ; 1e
	const MUSIC_SUICUNE_BATTLE                 ; 1f
	const MUSIC_VICTORY_ROAD                   ; 20
	const MUSIC_UNOVA_ELITE_FOUR_BATTLE        ; 21
	const MUSIC_CHAMPION_BATTLE                ; 22
	const MUSIC_HALL_OF_FAME                   ; 23
	const MUSIC_MAGNET_TRAIN                   ; 24
	const MUSIC_POKEMON_LULLABY                ; 25
	const MUSIC_HIKER_ENCOUNTER                ; 26
	const MUSIC_PROF_OAK                       ; 27
	const MUSIC_BEAUTY_ENCOUNTER               ; 28
	const MUSIC_BATTLE_TOWER_THEME             ; 29
	const MUSIC_BATTLE_TOWER_LOBBY             ; 2a
	const MUSIC_BATTLE_FACTORY                 ; 2b
	const MUSIC_FRONTIER_BRAIN_BATTLE          ; 2c
	const MUSIC_SPIKY_EARED_PICHU              ; 2d
	const MUSIC_CYNTHIA_BATTLE                 ; 2e
	const MUSIC_PWT_FINAL_BATTLE               ; 2f
	const MUSIC_IRIS_BATTLE                    ; 30
	const MUSIC_CREDITS                        ; 31
	const MUSIC_POST_CREDITS                   ; 32
	const MUSIC_PRINTER                        ; 33
	const MUSIC_HUMILAU_CITY                   ; 34
	const MUSIC_ROUTE_22                       ; 35
	const MUSIC_ACE_TRAINER_ENCOUNTER          ; 36
	const MUSIC_GENTLEMAN_ENCOUNTER            ; 37
	const MUSIC_WORKER_ENCOUNTER               ; 38
	const MUSIC_PSYCHIC_ENCOUNTER              ; 39
	const MUSIC_ROUGHNECK_ENCOUNTER            ; 3a
	const MUSIC_CYCLIST_ENCOUNTER              ; 3b
	const MUSIC_SCIENTIST_ENCOUNTER            ; 3c
	const MUSIC_TWINS_ENCOUNTER                ; 3d
	const MUSIC_UNOVA_CAVE                     ; 3e
	const MUSIC_ROUTE_13                       ; 3f
	const MUSIC_LACUNOSA_TOWN                  ; 40
	const MUSIC_MARLON_THEME                   ; 41
	const MUSIC_CYNTHIA_ENCOUNTER              ; 42
	const MUSIC_LENTIMAS_TOWN                  ; 43
	const MUSIC_STRANGE_HOUSE                  ; 44
	const MUSIC_FOREST                         ; 45
	const MUSIC_NIMBASA_CITY                   ; 46
	const MUSIC_MART                           ; 47
	const MUSIC_CHEREN_THEME                   ; 48
	const MUSIC_DESERT                         ; 49
	const MUSIC_CASTELIA_CITY                  ; 4a
DEF NUM_MUSIC_SONGS EQU const_value

; GetMapMusic picks music for these values (see data/maps/alternate_music.asm)
	const_def $ff, -1
	const MUSIC_FILLER_ALTERNATE
DEF FIRST_ALT_MUSIC EQU const_value + 1
