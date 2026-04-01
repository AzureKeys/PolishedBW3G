_AnimateTileset::
; Increment [hTileAnimFrame] and run that frame's function
; from the array pointed to by wTilesetAnim.

; Called in WRAM bank 1, VRAM bank 0, so map tiles
; $80 and above in VRAM bank 1 cannot be animated
; without switching to that bank themselves.

	ld hl, wTilesetAnim
	ld a, [hli]
	ld d, [hl]
	ld e, a

	ldh a, [hTileAnimFrame]
	ld l, a
	inc a
	ldh [hTileAnimFrame], a

	ld h, 0
	add hl, hl
	add hl, hl
	add hl, de

; 2-byte VRAM address parameter, with VRAM bank in low bit
	ld a, [hl]
	ldh [rVBK], a ; high bits are ignored
; Functions that take input do so in de
	ld a, [hli]
	and ~1
	ld e, a
	ld a, [hli]
	ld d, a

; Function address
	jmp IndirectHL
	
INCLUDE "data/tileset_anims.asm"

DoneTileAnimation:
; Reset the animation command loop.
	xor a
	ldh [hTileAnimFrame], a
	ret

StandingTileFrame:
; Tick the wTileAnimationTimer.
	ld hl, wTileAnimationTimer
	inc [hl]
	ret

StandingTileFrame8:
; Tick the wTileAnimationTimer, wrapping from 7 to 0.
	ld a, [wTileAnimationTimer]
	inc a
	maskbits 8
	ld [wTileAnimationTimer], a
	ret
	
IncWaterFrame:
	ld a, [wWaterAnimationTimer]
	inc a
	ld [wWaterAnimationTimer], a
	cp $0B
	jr nz, .done
	xor a
	ld [wWaterAnimationTimer], a
.done
	ret
	
IncFountainFrame:
	ld a, [wFountainAnimationTimer]
	inc a
	ld [wFountainAnimationTimer], a
	cp $05
	jr nz, .done
	xor a
	ld [wFountainAnimationTimer], a
.done
	ret

ScrollTileRightLeft:
; Scroll right for 4 ticks, then left for 4 ticks.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	and %100
	jp nz, ScrollTileLeft
	; fallthrough

ScrollTileRight:
	ld h, d
	ld l, e
	ld c, TILE_SIZE / 4
.loop
rept 4
	ld a, [hl]
	rrca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

ScrollTileLeft:
	ld h, d
	ld l, e
	ld c, TILE_SIZE / 4
.loop
rept 4
	ld a, [hl]
	rlca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

;ScrollTileUpDown:
;; Scroll up for 4 ticks, then down for 4 ticks.
;	ld a, [wTileAnimationTimer]
;	inc a
;	and %111
;	ld [wTileAnimationTimer], a
;	and %100
;	jr nz, ScrollTileDown
;	; fallthrough

ScrollTileUp:
	ld h, d
	ld l, e
	ld a, [hli]
	ld e, [hl]
	ld d, a
	ld bc, TILE_SIZE - 2
	add hl, bc
	ld a, TILE_SIZE / 4
.loop
	ld c, [hl]
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	dec hl
	ld b, [hl]
	ld [hl], d ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	dec hl
	ld e, [hl]
	ld [hl], c ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	dec hl
	ld d, [hl]
	ld [hl], b ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	dec hl
	dec a
	jr nz, .loop
	ret

ScrollTileDown:
	ld h, d
	ld l, e
	ld de, TILE_SIZE - 2
	push hl
	add hl, de
	ld a, [hli]
	ld e, [hl]
	ld d, a
	pop hl
	ld a, TILE_SIZE / 4
.loop
	ld b, [hl]
	ld [hl], d ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	inc hl
	ld c, [hl]
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	inc hl
	ld d, [hl]
	ld [hl], b ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	inc hl
	ld e, [hl]
	ld [hl], c ; no-optimize *hl++|*hl-- = b|c|d|e (a is the .loop counter)
	inc hl
	dec a
	jr nz, .loop
	ret

AnimateWaterTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a

	add LOW(.WaterTileFrames)
	ld l, a
	adc HIGH(.WaterTileFrames)
	sub l
	ld h, a

	jmp WriteTileHLToDE

.WaterTileFrames:
INCBIN "gfx/tilesets/animations/water_johto.2bpp"

AnimateRainTiles:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	swap a
	add a

	add LOW(.RainTileFrames)
	ld l, a
	adc HIGH(.RainTileFrames)
	sub l
	ld h, a

	jmp WriteTwoTilesHLToDE

.RainTileFrames:
INCBIN "gfx/tilesets/animations/rain.2bpp"

AnimateKantoWaterTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a

	add LOW(.KantoWaterTileFrames)
	ld l, a
	adc HIGH(.KantoWaterTileFrames)
	sub l
	ld h, a

	jmp WriteTileHLToDE

.KantoWaterTileFrames:
INCBIN "gfx/tilesets/animations/water_kanto.2bpp"

AnimateFarawayWaterTiles:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	swap a
	add a

	add LOW(.FarawayWaterTileFrames)
	ld l, a
	adc HIGH(.FarawayWaterTileFrames)
	sub l
	ld h, a

	jmp WriteTwoTilesHLToDE

.FarawayWaterTileFrames:
INCBIN "gfx/tilesets/animations/water_faraway.2bpp"

AnimateSpinnerTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	ld a, [wSpinning]
	and a
	jr z, .ok

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

.ok
	add LOW(vTiles2 tile $08)
	ld l, a
	adc HIGH(vTiles2 tile $08)
	sub l
	ld h, a

	jmp WriteTileHLToDE

AnimateTurbineTiles:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to 4 tiles (64 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	swap a
	add a
	add a

	add LOW(.TurbineTileFrames)
	ld l, a
	adc HIGH(.TurbineTileFrames)
	sub l
	ld h, a

	jmp WriteFourTilesHLToDE

.TurbineTileFrames:
INCBIN "gfx/tilesets/animations/turbine.2bpp"

AnimateForestTreeTiles:
	ld a, [wCelebiEvent]
	bit CELEBIEVENT_FOREST_IS_RESTLESS_F, a
	ret z

	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to 4 tiles (64 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	swap a
	add a
	add a

	add LOW(vTiles5 tile $44)
	ld l, a
	adc HIGH(vTiles5 tile $44)
	sub l
	ld h, a

	jmp WriteFourTilesHLToDE

AnimateFlowerTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

	add LOW(.FlowerTileFrames)
	ld l, a
	adc HIGH(.FlowerTileFrames)
	sub l
	ld h, a

	jmp WriteTileHLToDE

.FlowerTileFrames:
INCBIN "gfx/tilesets/animations/flower_johto.2bpp"

AnimateKantoFlowerTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a

	add LOW(.KantoFlowerTileFrames)
	ld l, a
	adc HIGH(.KantoFlowerTileFrames)
	sub l
	ld h, a

	jmp WriteTileHLToDE

.KantoFlowerTileFrames:
INCBIN "gfx/tilesets/animations/flower_kanto.2bpp"

AnimateLavaBubbleTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, phase shift 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	srl a
	inc a
	inc a
	maskbits 4
	swap a

	jr _FinishAnimateLavaBubbleTile

AnimateLavaBubbleTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a
	; fallthrough

_FinishAnimateLavaBubbleTile:
	add LOW(.LavaBubbleFrames)
	ld l, a
	adc HIGH(.LavaBubbleFrames)
	sub l
	ld h, a

	jmp WriteTileHLToDE

.LavaBubbleFrames:
INCBIN "gfx/tilesets/animations/lava.2bpp"

AnimateBigStarTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	srl a
	inc a
	inc a
	maskbits 4
	swap a

	jr _FinishAnimateBigStarTile

AnimateBigStarTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, phase shift 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a

_FinishAnimateBigStarTile:
	add LOW(vTiles5 tile $46)
	ld l, a
	adc HIGH(vTiles5 tile $46)
	sub l
	ld h, a

	jmp WriteTileHLToDE

AnimateSmallStarsTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	srl a
	inc a
	inc a
	maskbits 4
	swap a

	jr _FinishAnimateSmallStarsTile

AnimateSmallStarsTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, phase shift 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4, 1
	add a
	add a
	add a

_FinishAnimateSmallStarsTile:
	add LOW(vTiles5 tile $4c)
	ld l, a
	adc HIGH(vTiles5 tile $4c)
	sub l
	ld h, a

	jmp WriteTileHLToDE

AnimateDoubleStarTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

	add LOW(vTiles5 tile $51)
	ld l, a
	adc HIGH(vTiles5 tile $51)
	sub l
	ld h, a

	jmp WriteTileHLToDE

AnimateTowerPillarTiles1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, every 4 frames, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8, 2
	rrca

	add LOW(.TowerPillarTiles1Pointers)
	ld l, a
	adc HIGH(.TowerPillarTiles1Pointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	ld a, 1
	ldh [rVBK], a

	jmp WriteFourTilesHLToDE

.TowerPillarTiles1Pointers:
	dw vTiles5 tile $2d + 4 * 0 tiles ; 0
	dw vTiles5 tile $2d + 4 * 1 tiles ; 1
	dw vTiles5 tile $2d + 4 * 2 tiles ; 2
	dw vTiles5 tile $2d + 4 * 3 tiles ; 3
	dw vTiles5 tile $2d + 4 * 4 tiles ; 4
	dw vTiles5 tile $2d + 4 * 3 tiles ; 5
	dw vTiles5 tile $2d + 4 * 2 tiles ; 6
	dw vTiles5 tile $2d + 4 * 1 tiles ; 7

AnimateTowerPillarTiles2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, every 4 frames, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8, 2
	rrca

	add LOW(.TowerPillarTiles2Pointers)
	ld l, a
	adc HIGH(.TowerPillarTiles2Pointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	ld a, 1
	ldh [rVBK], a

	jmp WriteThreeTilesHLToDE

.TowerPillarTiles2Pointers:
	dw vTiles5 tile $41 + 3 * 0 tiles ; 0
	dw vTiles5 tile $41 + 3 * 1 tiles ; 1
	dw vTiles5 tile $41 + 3 * 2 tiles ; 2
	dw vTiles5 tile $41 + 3 * 3 tiles ; 3
	dw vTiles5 tile $41 + 3 * 4 tiles ; 4
	dw vTiles5 tile $41 + 3 * 3 tiles ; 5
	dw vTiles5 tile $41 + 3 * 2 tiles ; 6
	dw vTiles5 tile $41 + 3 * 1 tiles ; 7

AnimateTowerPillarTiles3:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, every 4 frames, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8, 2
	rrca

	add LOW(.TowerPillarTiles3Pointers)
	ld l, a
	adc HIGH(.TowerPillarTiles3Pointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	ld a, 1
	ldh [rVBK], a

	jmp WriteThreeTilesHLToDE

.TowerPillarTiles3Pointers:
	dw vTiles5 tile $51 + 3 * 0 tiles ; 0
	dw vTiles5 tile $51 + 3 * 1 tiles ; 1
	dw vTiles5 tile $51 + 3 * 2 tiles ; 2
	dw vTiles5 tile $51 + 3 * 3 tiles ; 3
	dw vTiles5 tile $51 + 3 * 4 tiles ; 4
	dw vTiles5 tile $51 + 3 * 3 tiles ; 5
	dw vTiles5 tile $51 + 3 * 2 tiles ; 6
	dw vTiles5 tile $51 + 3 * 1 tiles ; 7

AnimateTowerPillarTiles4:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, every 4 frames, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8, 2
	rrca

	add LOW(.TowerPillarTiles4Pointers)
	ld l, a
	adc HIGH(.TowerPillarTiles4Pointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	ld a, 1
	ldh [rVBK], a

	jmp WriteThreeTilesHLToDE

.TowerPillarTiles4Pointers:
	dw vTiles5 tile $61 + 3 * 0 tiles ; 0
	dw vTiles5 tile $61 + 3 * 1 tiles ; 1
	dw vTiles5 tile $61 + 3 * 2 tiles ; 2
	dw vTiles5 tile $61 + 3 * 3 tiles ; 3
	dw vTiles5 tile $61 + 3 * 4 tiles ; 4
	dw vTiles5 tile $61 + 3 * 3 tiles ; 5
	dw vTiles5 tile $61 + 3 * 2 tiles ; 6
	dw vTiles5 tile $61 + 3 * 1 tiles ; 7

AnimateSkyTiles1Left:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles1LPointers)
	ld l, a
	adc HIGH(.SkyTiles1LPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles1LPointers:
	dw SkyTileFrames + 0 * 32 tiles +  0 tiles
	dw SkyTileFrames + 0 * 32 tiles +  4 tiles
	dw SkyTileFrames + 0 * 32 tiles +  8 tiles
	dw SkyTileFrames + 0 * 32 tiles + 12 tiles
	dw SkyTileFrames + 0 * 32 tiles + 16 tiles
	dw SkyTileFrames + 0 * 32 tiles + 20 tiles
	dw SkyTileFrames + 0 * 32 tiles + 24 tiles
	dw SkyTileFrames + 0 * 32 tiles + 28 tiles

AnimateSkyTiles1Right:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles1RPointers)
	ld l, a
	adc HIGH(.SkyTiles1RPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles1RPointers:
	dw SkyTileFrames + 0 * 32 tiles +  0 tiles
	dw SkyTileFrames + 0 * 32 tiles + 28 tiles
	dw SkyTileFrames + 0 * 32 tiles + 24 tiles
	dw SkyTileFrames + 0 * 32 tiles + 20 tiles
	dw SkyTileFrames + 0 * 32 tiles + 16 tiles
	dw SkyTileFrames + 0 * 32 tiles + 12 tiles
	dw SkyTileFrames + 0 * 32 tiles +  8 tiles
	dw SkyTileFrames + 0 * 32 tiles +  4 tiles

AnimateSkyTiles2Left:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles2LPointers)
	ld l, a
	adc HIGH(.SkyTiles2LPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles2LPointers:
	dw SkyTileFrames + 1 * 32 tiles +  0 tiles
	dw SkyTileFrames + 1 * 32 tiles +  4 tiles
	dw SkyTileFrames + 1 * 32 tiles +  8 tiles
	dw SkyTileFrames + 1 * 32 tiles + 12 tiles
	dw SkyTileFrames + 1 * 32 tiles + 16 tiles
	dw SkyTileFrames + 1 * 32 tiles + 20 tiles
	dw SkyTileFrames + 1 * 32 tiles + 24 tiles
	dw SkyTileFrames + 1 * 32 tiles + 28 tiles

AnimateSkyTiles2Right:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles2RPointers)
	ld l, a
	adc HIGH(.SkyTiles2RPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles2RPointers:
	dw SkyTileFrames + 1 * 32 tiles +  0 tiles
	dw SkyTileFrames + 1 * 32 tiles + 28 tiles
	dw SkyTileFrames + 1 * 32 tiles + 24 tiles
	dw SkyTileFrames + 1 * 32 tiles + 20 tiles
	dw SkyTileFrames + 1 * 32 tiles + 16 tiles
	dw SkyTileFrames + 1 * 32 tiles + 12 tiles
	dw SkyTileFrames + 1 * 32 tiles +  8 tiles
	dw SkyTileFrames + 1 * 32 tiles +  4 tiles

AnimateSkyTiles3Left:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles3LPointers)
	ld l, a
	adc HIGH(.SkyTiles3LPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles3LPointers:
	dw SkyTileFrames + 2 * 32 tiles +  0 tiles
	dw SkyTileFrames + 2 * 32 tiles +  4 tiles
	dw SkyTileFrames + 2 * 32 tiles +  8 tiles
	dw SkyTileFrames + 2 * 32 tiles + 12 tiles
	dw SkyTileFrames + 2 * 32 tiles + 16 tiles
	dw SkyTileFrames + 2 * 32 tiles + 20 tiles
	dw SkyTileFrames + 2 * 32 tiles + 24 tiles
	dw SkyTileFrames + 2 * 32 tiles + 28 tiles

AnimateSkyTiles3Right:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles3RPointers)
	ld l, a
	adc HIGH(.SkyTiles3RPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles3RPointers:
	dw SkyTileFrames + 2 * 32 tiles +  0 tiles
	dw SkyTileFrames + 2 * 32 tiles + 28 tiles
	dw SkyTileFrames + 2 * 32 tiles + 24 tiles
	dw SkyTileFrames + 2 * 32 tiles + 20 tiles
	dw SkyTileFrames + 2 * 32 tiles + 16 tiles
	dw SkyTileFrames + 2 * 32 tiles + 12 tiles
	dw SkyTileFrames + 2 * 32 tiles +  8 tiles
	dw SkyTileFrames + 2 * 32 tiles +  4 tiles

AnimateSkyTiles4Left:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles4LPointers)
	ld l, a
	adc HIGH(.SkyTiles4LPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles4LPointers:
	dw SkyTileFrames + 3 * 32 tiles +  0 tiles
	dw SkyTileFrames + 3 * 32 tiles +  4 tiles
	dw SkyTileFrames + 3 * 32 tiles +  8 tiles
	dw SkyTileFrames + 3 * 32 tiles + 12 tiles
	dw SkyTileFrames + 3 * 32 tiles + 16 tiles
	dw SkyTileFrames + 3 * 32 tiles + 20 tiles
	dw SkyTileFrames + 3 * 32 tiles + 24 tiles
	dw SkyTileFrames + 3 * 32 tiles + 28 tiles

AnimateSkyTiles4Right:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	add a

	add LOW(.SkyTiles4RPointers)
	ld l, a
	adc HIGH(.SkyTiles4RPointers)
	sub l
	ld h, a

	ld sp, hl
	pop hl

	jmp WriteFourTilesHLToDE

.SkyTiles4RPointers:
	dw SkyTileFrames + 3 * 32 tiles +  0 tiles
	dw SkyTileFrames + 3 * 32 tiles + 28 tiles
	dw SkyTileFrames + 3 * 32 tiles + 24 tiles
	dw SkyTileFrames + 3 * 32 tiles + 20 tiles
	dw SkyTileFrames + 3 * 32 tiles + 16 tiles
	dw SkyTileFrames + 3 * 32 tiles + 12 tiles
	dw SkyTileFrames + 3 * 32 tiles +  8 tiles
	dw SkyTileFrames + 3 * 32 tiles +  4 tiles
	
SkyTileFrames:
INCBIN "gfx/tilesets/animations/sky.2bpp"
	
AnimateUnovaWaterTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 11, offset to pointer table (2 bytes)
	ld a, [wWaterAnimationTimer]
	add a
	
	add LOW(.UnovaWaterTiles1Pointers)
	ld l, a
	adc HIGH(.UnovaWaterTiles1Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.UnovaWaterTiles1Pointers:
	dw UnovaWaterTileFrames +  0 tiles +  0 tiles
	dw UnovaWaterTileFrames +  0 tiles +  1 tiles
	dw UnovaWaterTileFrames +  0 tiles +  2 tiles
	dw UnovaWaterTileFrames +  0 tiles +  3 tiles
	dw UnovaWaterTileFrames +  0 tiles +  4 tiles
	dw UnovaWaterTileFrames +  0 tiles +  5 tiles
	dw UnovaWaterTileFrames +  0 tiles +  6 tiles
	dw UnovaWaterTileFrames +  0 tiles +  7 tiles
	dw UnovaWaterTileFrames +  0 tiles +  8 tiles
	dw UnovaWaterTileFrames +  0 tiles +  9 tiles
	dw UnovaWaterTileFrames +  0 tiles + 10 tiles
	
AnimateUnovaWaterTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 11, offset to pointer table (2 bytes)
	ld a, [wWaterAnimationTimer]
	add a
	
	add LOW(.UnovaWaterTiles2Pointers)
	ld l, a
	adc HIGH(.UnovaWaterTiles2Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.UnovaWaterTiles2Pointers:
	dw UnovaWaterTileFrames + 11 tiles +  0 tiles
	dw UnovaWaterTileFrames + 11 tiles +  1 tiles
	dw UnovaWaterTileFrames + 11 tiles +  2 tiles
	dw UnovaWaterTileFrames + 11 tiles +  3 tiles
	dw UnovaWaterTileFrames + 11 tiles +  4 tiles
	dw UnovaWaterTileFrames + 11 tiles +  5 tiles
	dw UnovaWaterTileFrames + 11 tiles +  6 tiles
	dw UnovaWaterTileFrames + 11 tiles +  7 tiles
	dw UnovaWaterTileFrames + 11 tiles +  8 tiles
	dw UnovaWaterTileFrames + 11 tiles +  9 tiles
	dw UnovaWaterTileFrames + 11 tiles + 10 tiles
	
AnimateUnovaWaterTile3:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 11, offset to pointer table (2 bytes)
	ld a, [wWaterAnimationTimer]
	add a
	
	add LOW(.UnovaWaterTiles3Pointers)
	ld l, a
	adc HIGH(.UnovaWaterTiles3Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.UnovaWaterTiles3Pointers:
	dw UnovaWaterTileFrames + 22 tiles +  0 tiles
	dw UnovaWaterTileFrames + 22 tiles +  1 tiles
	dw UnovaWaterTileFrames + 22 tiles +  2 tiles
	dw UnovaWaterTileFrames + 22 tiles +  3 tiles
	dw UnovaWaterTileFrames + 22 tiles +  4 tiles
	dw UnovaWaterTileFrames + 22 tiles +  5 tiles
	dw UnovaWaterTileFrames + 22 tiles +  6 tiles
	dw UnovaWaterTileFrames + 22 tiles +  7 tiles
	dw UnovaWaterTileFrames + 22 tiles +  8 tiles
	dw UnovaWaterTileFrames + 22 tiles +  9 tiles
	dw UnovaWaterTileFrames + 22 tiles + 10 tiles
	
AnimateUnovaWaterTile4:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 11, offset to pointer table (2 bytes)
	ld a, [wWaterAnimationTimer]
	add a
	
	add LOW(.UnovaWaterTiles4Pointers)
	ld l, a
	adc HIGH(.UnovaWaterTiles4Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.UnovaWaterTiles4Pointers:
	dw UnovaWaterTileFrames + 33 tiles +  0 tiles
	dw UnovaWaterTileFrames + 33 tiles +  1 tiles
	dw UnovaWaterTileFrames + 33 tiles +  2 tiles
	dw UnovaWaterTileFrames + 33 tiles +  3 tiles
	dw UnovaWaterTileFrames + 33 tiles +  4 tiles
	dw UnovaWaterTileFrames + 33 tiles +  5 tiles
	dw UnovaWaterTileFrames + 33 tiles +  6 tiles
	dw UnovaWaterTileFrames + 33 tiles +  7 tiles
	dw UnovaWaterTileFrames + 33 tiles +  8 tiles
	dw UnovaWaterTileFrames + 33 tiles +  9 tiles
	dw UnovaWaterTileFrames + 33 tiles + 10 tiles
	
UnovaWaterTileFrames:
INCBIN "gfx/tilesets/animations/unova_water.2bpp"

AnimateFountainTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles1Pointers)
	ld l, a
	adc HIGH(.FountainTiles1Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles1Pointers:
	dw FountainTileFrames +  0 tiles + 0 tiles
	dw FountainTileFrames +  0 tiles + 1 tiles
	dw FountainTileFrames +  0 tiles + 2 tiles
	dw FountainTileFrames +  0 tiles + 3 tiles
	dw FountainTileFrames +  0 tiles + 4 tiles

AnimateFountainTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles2Pointers)
	ld l, a
	adc HIGH(.FountainTiles2Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles2Pointers:
	dw FountainTileFrames +  5 tiles + 0 tiles
	dw FountainTileFrames +  5 tiles + 1 tiles
	dw FountainTileFrames +  5 tiles + 2 tiles
	dw FountainTileFrames +  5 tiles + 3 tiles
	dw FountainTileFrames +  5 tiles + 4 tiles

AnimateFountainTile3:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles3Pointers)
	ld l, a
	adc HIGH(.FountainTiles3Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles3Pointers:
	dw FountainTileFrames + 10 tiles + 0 tiles
	dw FountainTileFrames + 10 tiles + 1 tiles
	dw FountainTileFrames + 10 tiles + 2 tiles
	dw FountainTileFrames + 10 tiles + 3 tiles
	dw FountainTileFrames + 10 tiles + 4 tiles

AnimateFountainTile4:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles4Pointers)
	ld l, a
	adc HIGH(.FountainTiles4Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles4Pointers:
	dw FountainTileFrames + 15 tiles + 0 tiles
	dw FountainTileFrames + 15 tiles + 1 tiles
	dw FountainTileFrames + 15 tiles + 2 tiles
	dw FountainTileFrames + 15 tiles + 3 tiles
	dw FountainTileFrames + 15 tiles + 4 tiles

AnimateFountainTile5:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles5Pointers)
	ld l, a
	adc HIGH(.FountainTiles5Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles5Pointers:
	dw FountainTileFrames + 20 tiles + 0 tiles
	dw FountainTileFrames + 20 tiles + 1 tiles
	dw FountainTileFrames + 20 tiles + 2 tiles
	dw FountainTileFrames + 20 tiles + 3 tiles
	dw FountainTileFrames + 20 tiles + 4 tiles

AnimateFountainTile6:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 6, offset to pointer table (2 bytes)
	ld a, [wFountainAnimationTimer]
	add a

	add LOW(.FountainTiles6Pointers)
	ld l, a
	adc HIGH(.FountainTiles6Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FountainTiles6Pointers:
	dw FountainTileFrames + 25 tiles + 0 tiles
	dw FountainTileFrames + 25 tiles + 1 tiles
	dw FountainTileFrames + 25 tiles + 2 tiles
	dw FountainTileFrames + 25 tiles + 3 tiles
	dw FountainTileFrames + 25 tiles + 4 tiles
	
FountainTileFrames:
INCBIN "gfx/tilesets/animations/castelia_fountain.2bpp"

AnimateFanTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	add a

	add LOW(.FanTiles1Pointers)
	ld l, a
	adc HIGH(.FanTiles1Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FanTiles1Pointers:
	dw FanTileFrames + 0 tiles + 0 tiles
	dw FanTileFrames + 0 tiles + 1 tiles

AnimateFanTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	add a

	add LOW(.FanTiles2Pointers)
	ld l, a
	adc HIGH(.FanTiles2Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FanTiles2Pointers:
	dw FanTileFrames + 2 tiles + 0 tiles
	dw FanTileFrames + 2 tiles + 1 tiles

AnimateFanTile3:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	add a

	add LOW(.FanTiles3Pointers)
	ld l, a
	adc HIGH(.FanTiles3Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FanTiles3Pointers:
	dw FanTileFrames + 4 tiles + 0 tiles
	dw FanTileFrames + 4 tiles + 1 tiles

AnimateFanTile4:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 2, offset to pointer table (2 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2
	add a

	add LOW(.FanTiles4Pointers)
	ld l, a
	adc HIGH(.FanTiles4Pointers)
	sub l
	ld h, a
	
	ld sp, hl
	pop hl

	jmp WriteTileHLToDE
	
.FanTiles4Pointers:
	dw FanTileFrames + 6 tiles + 0 tiles
	dw FanTileFrames + 6 tiles + 1 tiles
	
FanTileFrames:
INCBIN "gfx/tilesets/animations/fan.2bpp"

AnimateComputerTile0:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	jr AnimateComputerTile

AnimateComputerTile1:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	inc a
	jr AnimateComputerTile

AnimateComputerTile2:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	inc a
	inc a
	; fallthrough
AnimateComputerTile:
	maskbits 4
	swap a
	add a

	add LOW(.ComputerTileFrames)
	ld l, a
	adc HIGH(.ComputerTileFrames)
	sub l
	ld h, a

	jmp WriteTwoTilesHLToDE
	
.ComputerTileFrames:
INCBIN "gfx/tilesets/animations/computer.2bpp"

AnimateTinyWaterTiles:
	; period 2, every 2 frames, offset to 4 tiles (64 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	swap a
	add a

	ld hl, sp + 0
	ld b, h
	ld c, l

	add LOW(vTiles5 tile $5c)
	ld l, a
	adc HIGH(vTiles5 tile $5c)
	sub l
	ld h, a

	jmp WriteFourTilesHLToDE

AnimateLCDTile:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 8, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 8
	swap a

	add LOW(vTiles5 tile $20)
	ld l, a
	adc HIGH(vTiles5 tile $20)
	sub l
	ld h, a

	jmp WriteTileHLToDE

AnimateWaterfallTiles:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4
	swap a
	add a

	add LOW(.WaterfallTileFrames)
	ld l, a
	adc HIGH(.WaterfallTileFrames)
	sub l
	ld h, a

	jmp WriteTwoTilesHLToDE

.WaterfallTileFrames:
INCBIN "gfx/tilesets/animations/waterfall.2bpp"

AnimateFireTiles:
	ld hl, sp + 0
	ld b, h
	ld c, l

	; period 4, offset to 2 tiles (32 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 4
	swap a
	add a

	add LOW(vTiles2 tile $77)
	ld l, a
	adc HIGH(vTiles2 tile $77)
	sub l
	ld h, a

	jr WriteTwoTilesHLToDE

WriteFourTilesHLToDE:
	ld sp, hl
	ld l, e
	ld h, d
	; fallthrough

WriteFourTiles:
	pop de
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
rept 8
	pop de
	inc hl
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
endr

	jr _FinishWritingThreeTiles

WriteThreeTilesHLToDE:
	ld sp, hl
	ld l, e
	ld h, d
	; fallthrough

WriteThreeTiles:
	pop de
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
_FinishWritingThreeTiles:
rept 8
	pop de
	inc hl
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
endr

	jr _FinishWritingTwoTiles

WriteTwoTilesHLToDE:
	ld sp, hl
	ld l, e
	ld h, d
	; fallthrough

WriteTwoTiles:
	pop de
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
_FinishWritingTwoTiles:
rept 8
	pop de
	inc hl
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
endr

	jr _FinishWritingOneTile

WriteTileHLToDE:
	ld sp, hl
	ld l, e
	ld h, d
	; fallthrough

WriteTile:
	pop de
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
_FinishWritingOneTile:
rept 7
	pop de
	inc hl
	ld [hl], e ; no-optimize *hl++|*hl-- = b|c|d|e
	inc hl
	ld [hl], d
endr

	ld h, b
	ld l, c
	ld sp, hl
	ret

FlickeringCaveEntrancePalette:
	ldh a, [rBGP]
	cp %11100100
	ret nz

	ld a, [wTimeOfDayPalset]
	cp DARKNESS_PALSET
	ret nz

	ldh a, [rWBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rWBK], a

	ld a, BGPI_AUTOINC | (0 palette 4)
	ldh [rBGPI], a

	ldh a, [hVBlankCounter]
	and %10
	ld hl, wBGPals1 palette PAL_BG_YELLOW
	jr z, .okay
	inc hl
	inc hl
.okay

	ld a, [hli]
	ldh [rBGPD], a
	ld a, [hli]
	ldh [rBGPD], a

	pop af
	ldh [rWBK], a
