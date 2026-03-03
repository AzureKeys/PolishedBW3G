BattleCommand_lowkick:
	push bc
	push de
	ldh a, [hBattleTurn]
	and a
	ld hl, wBattleMonSpecies
	jr nz, .got_opp_species
	ld hl, wEnemyMonSpecies
.got_opp_species
	ld c, [hl]
	ld de, wBattleMonForm - wBattleMonSpecies
	add hl, de
	ld b, [hl]
	farcall GetSpeciesWeight
	call GetOpponentIgnorableAbility
	cp HEAVY_METAL
	jr z, .heavy_metal
	cp LIGHT_METAL
	jr nz, .got_weight
	srl h
	rr l
	jr .got_weight

.heavy_metal
	add hl, hl

.got_weight
	ld d, h
	ld e, l
	ld hl, LowKickPowerByWeight
.loop2
	ld a, [hli]
	ld c, a
	ld a, [hli]
	sub e
	ld a, [hli]
	sbc d
	jr nc, .loop2
.got_power
	pop de
	ld d, c
	pop bc
	ret

INCLUDE "data/moves/low_kick_power.asm"
