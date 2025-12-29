RematchGiftScript::
	callasm GetRematchGiftItem
	readmem wCurRematchGiftItem
	getitemname USE_SCRIPT_VAR, STRING_BUFFER_3
	farwritetext _ObtainedTrainerGiftText
	callasm .ShowItemIcon
	readmem wCurRematchGiftItem
	giveitem ITEM_FROM_MEM
	iffalsefwd .pack_full
	specialsound
	itemnotify
	closetext
	setval TRUE
	sjumpfwd .done
.pack_full
	waitbutton
	closetext
	setval FALSE
.done
	end

.ShowItemIcon:
	ld a, [wCurRematchGiftItem]
	push af
	call LoadItemIconForOverworld
	pop af
	farcall LoadItemIconPaletteFromA
	jmp PrintOverworldItemIcon
	
GetRematchGiftItem:
	ld a, [wRematchGiftTier]
	dec a
	swap a
	call _GetRematchGiftItem
	ld [wCurRematchGiftItem], a
	ret
	
_GetRematchGiftItem:
	push hl
	push de
	ld e, a
	ld d, 0
	ld hl, RematchGiftItemsTier1
	add hl, de
	ld a, 16
	call RandomRange
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret
	
INCLUDE "data/items/rematch_gifts.asm"
	