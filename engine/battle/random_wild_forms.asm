GenerateWildForm:
	push hl
	push de
	push bc
	ld a, [wWildMonForm]
	ld b, a
	and FORM_MASK
	ld a, b
	jr nz, .done
	ld a, [wTempEnemyMonSpecies]
	ld c, a
	ld hl, RandomWildSpeciesForms
.loop
	; Check species
	ld a, [hli]
	and a
	jr z, .ok
	cp c
	; Load and increase hl before jumping so we have a consistent hl value after
	ld a, [hli]
	jr nz, .next

	; Check extspecies
	xor b
	and EXTSPECIES_MASK
	jr z, .ok
.next
	inc hl
	inc hl
	jr .loop
.ok
	call IndirectHL
.done
	or b
	ld [wCurForm], a
	jmp PopBCDEHL

MACRO random_wild_form
	if _NARG == 3
		dp \1, \2
		dw \3
	else
		dp \1
		dw \2
	endc
ENDM

RandomWildSpeciesForms:
	random_wild_form DUNSPARCE,   .Dudunsparce
	random_wild_form DUDUNSPARCE, .Dudunsparce
	random_wild_form DEERLING,    .Deerling
	random_wild_form SAWSBUCK,    .Deerling
	dbw 0,        .Default

.Deerling:
	; Random Deerling/Sawsbuck form
	ld a, NUM_DEERLING
	; fallthrough
.RandomForm:
	call BattleRandomRange
	inc a
	ret

.Dudunsparce:
	; Random Dudunsparce form (if not already specified)
	ld a, 25
	call BattleRandomRange
	and a
	ld a, DUDUNSPARCE_THREE_SEGMENT_FORM
	ret z
	assert DUDUNSPARCE_THREE_SEGMENT_FORM - 1 == DUDUNSPARCE_TWO_SEGMENT_FORM
	dec a
	ret

.Default:
	ld a, [wWildMonForm]
	and EXTSPECIES_MASK
	inc a ; or PLAIN_FORM
	ret
		
GenerateGenderForm:

	;DEBUG
	;push hl
	;ld hl, SilphScopeRevealText
	;call StdBattleTextbox
	;pop hl
	;DEBUG
	
	push hl
	push de
	push bc
	ld a, [wCurForm]
; All Pokemon with gender-based forms have indexes > $100
; EXCEPT COMBEE, FIX THIS LATER
	assert HIGH(UNFEZANT)
	and EXTSPECIES_MASK
	jr z, .done
	ld a, [wTempEnemyMonSpecies]
	cp LOW(PIDOVE)
	jr z, .Unfezant
	cp LOW(TRANQUILL)
	jr z, .Unfezant
	cp LOW(UNFEZANT)
	jr nz, .done
	
.Unfezant
	; Set form based on gender
	ld a, [wCurForm]
	ld b, a
	and GENDER_MASK
	jr z, .done ; Form is 1 (male) by default
	ld a, b
	inc a ; 2 = female
	ld [wTempEnemyMonForm], a
	ld [wCurForm], a
	; fallthrough
	
	;DEBUG
	push hl
	ld hl, SilphScopeRevealText
	call StdBattleTextbox
	pop hl
	;DEBUG
	
.done
	jmp PopBCDEHL
