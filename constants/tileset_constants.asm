; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_JOHTO_TRADITIONAL    ; 01
	const TILESET_JOHTO_MODERN         ; 02
	const TILESET_JOHTO_OVERCAST       ; 03
	const TILESET_BATTLE_TOWER_OUTSIDE ; 04
DEF NO_ROOF_TILESETS EQU const_value
	const TILESET_JOHTO_HOUSE          ; 0b
	const TILESET_TRADITIONAL_HOUSE    ; 0d
	const TILESET_POKECENTER           ; 0e
	const TILESET_MART                 ; 10
	const TILESET_GATE                 ; 11
	const TILESET_GYM                  ; 12
	const TILESET_MAGNET_TRAIN         ; 13
	const TILESET_CHAMPIONS_ROOM       ; 14
	const TILESET_PORT                 ; 15
	const TILESET_LAB                  ; 16
	const TILESET_FACILITY             ; 17
	const TILESET_GAME_CORNER          ; 19
	const TILESET_BATTLE_TOWER_INSIDE  ; 1e
	const TILESET_UNDERGROUND          ; 21
	const TILESET_CAVE                 ; 22
	const TILESET_ICE_PATH             ; 24
	const TILESET_BATTLE_FACTORY       ; 2c
	const TILESET_UNOVA_BEACH          ; 2c
DEF NUM_TILESETS EQU const_value - 1

; wTileset struct size
DEF TILESET_LENGTH EQU 18

; MapGroupRoofs values (see data/maps/roofs.asm)
; MapGroupRoofGFX indexes (see engine/tilesets/mapgroup_roofs.asm)
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_STATUE    ; 4
DEF NUM_ROOFS EQU const_value

; roof length (see gfx/tilesets/roofs)
DEF ROOF_LENGTH EQU 9

; bg palette values
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
