GiveANickname_YesNo:
	ld hl, TextJump_GiveANickname
	call PrintText
	jmp YesNoBox

TextJump_GiveANickname:
	; Give a nickname to the @  you received?
	text_far _CaughtAskNicknameText
	text_end

SetCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtData
	call GetPartyLocation
SetBoxmonOrEggmonCaughtData:
	; CaughtTime
	ld a, [wTimeOfDay]
	inc a
	rrca
	rrca
	rrca
	and CAUGHT_TIME_MASK
	ld b, a
	; CaughtBall
	ld a, [wCurItem]
	and CAUGHT_BALL_MASK
	or b
	ld [hli], a
	; CaughtLevel
	ld a, [wCurPartyLevel]
	ld [hli], a
	; CaughtLocation
	call GetCurrentLandmark
	ld [hl], a
	ret

SetBoxMonCaughtData:
	ld hl, wTempMonCaughtData
	call SetBoxmonOrEggmonCaughtData
	farjp UpdateStorageBoxMonFromTemp

SetGiftPartyMonCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtData
	call GetPartyLocation
SetGiftMonCaughtData:
	; CaughtTime
	ld a, [wTimeOfDay]
	inc a
	rrca
	rrca
	rrca
	and CAUGHT_TIME_MASK ; no-optimize a = (a & MASK) | (b|c|d|e|h|l & ~MASK) (false detection)
	ld b, a
	; CaughtBall
	; c contains it
	ld a, c
	and CAUGHT_BALL_MASK
	or b
	ld [hli], a
	; CaughtLevel
	; Met in a trade
	xor a
	ld [hli], a
	; CaughtLocation
	; Unknown location
	ld [hl], a
	ret

SetEggMonCaughtData:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1CaughtData
	call GetPartyLocation
	ld a, [wCurPartyLevel]
	push af
	ld a, -1 ; marks that the mon is hatched
	ld [wCurPartyLevel], a
	ld a, [hl] ; reused poke ball data
	ld [wCurItem], a
	call SetBoxmonOrEggmonCaughtData
	pop af
	ld [wCurPartyLevel], a
	ret
