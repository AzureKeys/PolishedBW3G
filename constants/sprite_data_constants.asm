; overworld_sprite struct members (see data/sprites/sprites.asm)
rsreset
DEF SPRITEDATA_ADDR     rw ; 0
DEF SPRITEDATA_BANK     rb ; 2
DEF SPRITEDATA_TYPE_PAL rb ; 3
DEF SPRITEDATA_LENGTH EQU _RS

DEF SPRITEDATA_TYPE_MASK    EQU %11000000
DEF SPRITEDATA_PALETTE_MASK EQU %00111111

; sprite types
	const_def 1
	const WALKING_SPRITE      ; 1
	const STANDING_SPRITE     ; 2
	const MON_SPRITE          ; 3
	const BIG_GYARADOS_SPRITE ; 4

; object_events that set a pal value will override the sprite's default palette
DEF PAL_NPC_DEFAULT EQU 0

MACRO ow_npc_pal_const
	const PAL_OW_\1
	DEF PAL_NPC_\1 EQU PAL_OW_\1 + 1
ENDM

; sprite palettes
; MapObjectPals indexes (see gfx/overworld/npc_sprites.pal)
; DarknessOBPalette indexes (see gfx/overworld/npc_sprites_darkness.pal)
; OvercastOBPalette indexes (see gfx/overworld/npc_sprites_overcast.pal)
	const_def
	ow_npc_pal_const RED               ; 00
	ow_npc_pal_const BLUE              ; 01
	ow_npc_pal_const GREEN             ; 02
	ow_npc_pal_const PURPLE            ; 03
	ow_npc_pal_const BROWN             ; 04
	ow_npc_pal_const GRAY              ; 05
	ow_npc_pal_const PINK              ; 06
	ow_npc_pal_const TEAL              ; 07
	ow_npc_pal_const YELLOW            ; 08
	ow_npc_pal_const ORANGE            ; 09
	ow_npc_pal_const AZURE             ; 0a
	ow_npc_pal_const WHITE             ; 0b
	ow_npc_pal_const BLACK             ; 0c
	ow_npc_pal_const TAN               ; 0d
	ow_npc_pal_const RED_D             ; 0e
	ow_npc_pal_const BLUE_D            ; 0f
	ow_npc_pal_const GREEN_D           ; 10
	ow_npc_pal_const PURPLE_D          ; 11
	ow_npc_pal_const POKE_BALL         ; 12 (red)
	ow_npc_pal_const DECO_ITEM         ; 13 (blue)
	ow_npc_pal_const KEY_ITEM          ; 14 (green)
	ow_npc_pal_const BRIDGE_CABLE      ; 15
	ow_npc_pal_const SAILBOAT          ; 16
	ow_npc_pal_const RAIN              ; 17
	ow_npc_pal_const SAND              ; 18
DEF NUM_OW_TIME_OF_DAY_PALS EQU const_value
; SingleObjectPals indexes (see gfx/overworld/npc_single_object.pal)
	ow_npc_pal_const EMOTE_GRAY        ; 19
	ow_npc_pal_const EMOTE_BLACK       ; 1a
	ow_npc_pal_const EMOTE_GREEN       ; 1b
	ow_npc_pal_const EMOTE_PURPLE      ; 1c
	ow_npc_pal_const EMOTE_RED         ; 1d
	ow_npc_pal_const EMOTE_ORANGE      ; 1e
	ow_npc_pal_const EMOTE_BLUE        ; 1f
	ow_npc_pal_const ELECTRIC_FENCE    ; 20
	ow_npc_pal_const LIGHTNING_CRYSTAL ; 21
	ow_npc_pal_const ROCK_CRYSTAL      ; 22
	ow_npc_pal_const N64               ; 23
	ow_npc_pal_const POKECOM_SIGN      ; 24
	ow_npc_pal_const RANGI             ; 25
	ow_npc_pal_const DRILL             ; 26
	ow_npc_pal_const PEARL             ; 27
	ow_npc_pal_const TINY_WINDOW       ; 28
DEF NUM_OW_INDIVIDUAL_PALS EQU const_value - NUM_OW_TIME_OF_DAY_PALS
DEF FIRST_COPY_BG_PAL EQU const_value
	ow_npc_pal_const COPY_BG_GRAY      ; 28
	ow_npc_pal_const COPY_BG_RED       ; 29
	ow_npc_pal_const COPY_BG_GREEN     ; 2a
	ow_npc_pal_const COPY_BG_WATER     ; 2b
	ow_npc_pal_const COPY_BG_YELLOW    ; 2c
	ow_npc_pal_const COPY_BG_BROWN     ; 2d
	ow_npc_pal_const COPY_BG_ROOF      ; 2e
	ow_npc_pal_const COPY_BG_TEXT      ; 2f
DEF NUM_OW_BG_COPY_PALS EQU const_value - NUM_OW_INDIVIDUAL_PALS
DEF NUM_OW_PALS EQU const_value

; used by wLoadedObjPal0-7 to mark that no palette is loaded
DEF NO_PAL_LOADED EQU -1

; fixed palette indexes
DEF PAL_OW_WEATHER EQU 6

MACRO ow_mon_pal_const
	DEF _const_value_low = const_value & $0f
	DEF _NYB_PAL_MON_{_const_value_low} EQUS "\1"
	const _PAL_MON_UNENCODED_\1
	DEF PAL_MON_\1 EQU _PAL_MON_UNENCODED_\1 + 1
	assert (_PAL_MON_UNENCODED_\1 & $0f) == PAL_OW_\1
ENDM

	const_def (PAL_OW_TAN << 4)
	ow_mon_pal_const RED
	ow_mon_pal_const BLUE
	ow_mon_pal_const GREEN
	ow_mon_pal_const PURPLE
	ow_mon_pal_const BROWN
	ow_mon_pal_const GRAY
	ow_mon_pal_const PINK
	ow_mon_pal_const TEAL
	ow_mon_pal_const YELLOW
	ow_mon_pal_const ORANGE
	ow_mon_pal_const AZURE
	ow_mon_pal_const WHITE
	ow_mon_pal_const BLACK
	ow_mon_pal_const TAN
DEF NUM_OW_MON_PALS EQU const_value & 0x0f
assert NUM_OW_MON_PALS <= 16

for i, NUM_OW_MON_PALS - 1
	for j, i + 1, NUM_OW_MON_PALS
		REDEF nyb_1 EQUS "_NYB_PAL_MON_{i}"
		REDEF nyb_2 EQUS "_NYB_PAL_MON_{j}"
		DEF PAL_MON_{{nyb_1}}_{{nyb_2}} EQU ((i << 4) | j) + 1
		DEF PAL_MON_{{nyb_2}}_{{nyb_1}} EQU ((j << 4) | i) + 1
	endr
endr
