CherenPhoneScript1:
	farwritetext CherenAskEvoText
	yesorno
	iffalsefwd .Refused
	callasm CherenPhone_GetFirstMonEvolutionData
	farwritetext CherenEvoIntroText
	promptbutton
	scalltable CherenPhoneScript_EvolutionMethodsTable
	farwritetext CherenEvoDoneText
	end

.Refused
	farwritetext CherenRefusedEvoText
	end

CherenPhoneScript_EvolutionMethodsTable:
	table_width 2
	dw .EvolveNone
	dw .EvolveLevel
	dw .EvolveItem
	dw .EvolveTrade
	dw .EvolveHolding
	dw .EvolveHappiness
	dw .EvolveStat
	dw .EvolveLocation
	dw .EvolveMove
	dw .EvolveCrit
	dw .EvolveParty
	dw .EvolveEgg
	dw .EvolvePikachu
	dw .EvolvePoliwhirl
	dw .EvolveSlowpokePlain
	dw .EvolveSlowpokeGalarian
	dw .EvolveMagneton
	dw .EvolveExeggcute
	dw .EvolveKoffing
	dw .EvolveScyther
	dw .EvolveEevee
	dw .EvolveMimeJr
	dw .EvolveDunsparce
	dw .EvolveKirlia
	dw .EvolveSnorunt
	dw .EvolveNosepass
	assert_table_length NUM_EVOLVE_METHODS
.EvolveNone:
	farwritetext CherenPhoneEvoText_None
	end
.EvolveLevel:
	farwritetext CherenPhoneEvoText_Level
	end
.EvolveItem:
	farwritetext CherenPhoneEvoText_Item
	end
.EvolveTrade:
	readmem wStringBuffer5
	ifequalfwd LINKING_CORD, .EvolveTradeNoItem
	;ifequalfwd SHELL_STONE, .EvolveTradeNoItem
	farwritetext CherenPhoneEvoText_TradeWithItem
	end
.EvolveTradeNoItem:
	farwritetext CherenPhoneEvoText_TradeNoItem
	end
.EvolveHolding:
	readmem wStringBuffer5
	ifequalfwd TR_MORNDAY, .EvolveHolding_MornDay
	ifequalfwd TR_EVENITE, .EvolveHolding_EveNite
	farwritetext CherenPhoneEvoText_Holding
	end
.EvolveHolding_MornDay:
	farwritetext CherenPhoneEvoText_Holding_MornDay
	end
.EvolveHolding_EveNite:
	farwritetext CherenPhoneEvoText_Holding_EveNite
	end
.EvolveHappiness:
	readmem wStringBuffer5
	ifequalfwd TR_MORNDAY, .EvolveHappiness_MornDay
	ifequalfwd TR_EVENITE, .EvolveHappiness_EveNite
	farwritetext CherenPhoneEvoText_Happiness
	end
.EvolveHappiness_MornDay:
	farwritetext CherenPhoneEvoText_Happiness_MornDay
	end
.EvolveHappiness_EveNite:
	farwritetext CherenPhoneEvoText_Happiness_EveNite
	end
.EvolveStat: ; unused
	farwritetext CherenPhoneEvoText_None
	end
.EvolveLocation:
	farwritetext CherenPhoneEvoText_Location
	end
.EvolveMove:
	farwritetext CherenPhoneEvoText_Move
	end
.EvolveCrit: ; unused
	farwritetext CherenPhoneEvoText_None
	end
.EvolveParty:
	farwritetext CherenPhoneEvoText_Party
	end
.EvolveEgg:
	farwritetext CherenPhoneEvoText_Egg
	end
.EvolvePikachu:
	farwritetext CherenPhoneEvoText_Pikachu
	end
.EvolvePoliwhirl:
	farwritetext CherenPhoneEvoText_Poliwhirl
	end
.EvolveSlowpokePlain:
	farwritetext CherenPhoneEvoText_SlowpokePlain
	end
.EvolveSlowpokeGalarian:
	farwritetext CherenPhoneEvoText_SlowpokeGalarian
	end
.EvolveMagneton:
	farwritetext CherenPhoneEvoText_Magneton
	end
.EvolveExeggcute:
	farwritetext CherenPhoneEvoText_Exeggcute
	end
.EvolveKoffing:
	farwritetext CherenPhoneEvoText_Koffing
	end
.EvolveScyther:
	farwritetext CherenPhoneEvoText_Scyther
	end
.EvolveEevee:
	farwritetext CherenPhoneEvoText_Eevee
	end
.EvolveMimeJr:
	farwritetext CherenPhoneEvoText_MimeJr
	end
.EvolveDunsparce:
	loadmem wStringBuffer4, 32
	farwritetext CherenPhoneEvoText_Level
	farwritetext CherenPhoneEvoText_DunsparceSegments
	end
.EvolveKirlia:
	farwritetext CherenPhoneEvoText_Kirlia
	end
.EvolveSnorunt:
	farwritetext CherenPhoneEvoText_Snorunt
	end
.EvolveNosepass:
	farwritetext CherenPhoneEvoText_Nosepass
	end

CherenPhone_GetFirstMonEvolutionData:
	; wStringBuffer3 = species name
	call EvolutionPhone_GetFirstNonEggPartyMon
	; hScriptVar, wStringBuffer4, wStringBuffer5 = evo data
	farcall GetEvolutionData
	ldh [hScriptVar], a
	ret

EvolutionPhone_GetFirstNonEggPartyMon:
	ld hl, wPartyMon1Species
.first_loop
	ld a, [hl]
	ld bc, MON_IS_EGG - MON_SPECIES
	add hl, bc
	bit MON_IS_EGG_F, [hl]
	jr z, .got_mon
	ld bc, PARTYMON_STRUCT_LENGTH - MON_IS_EGG
	add hl, bc
	jr .first_loop
.got_mon
	ld c, a ; species
	ld [wNamedObjectIndex], a
	assert MON_IS_EGG == MON_FORM
	ld a, [hl]
	ld b, a ; ext species/form
	ld [wNamedObjectIndex+1], a
	push bc
	ld bc, MON_LEVEL - MON_FORM
	add hl, bc
	ld a, [hl]
	ld d, a ; level
	push de
	; wStringBuffer3 = species name
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer3
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	pop de
	pop bc
	ret

CherenPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_CHEREN_NIMBASA, .nimbasa
	ifequalfwd SPECIALCALL_CHEREN_MISTRALTON, .mistralton
	specialphonecall SPECIALCALL_NONE
	end

.nimbasa
	farwritetext CherenPhoneNimbasaText
	specialphonecall SPECIALCALL_NONE
	end

.mistralton
	farwritetext CherenPhoneMistraltonText
	specialphonecall SPECIALCALL_NONE
	;clearevent EVENT_ASPERTIA_CITY_BLOCKER
	;clearevent EVENT_HUMILAU_CITY_GYM_BLOCKER
	;setmapscene MISTRALTON_CITY, SCENE_MISTRALTON_GIVE_PASS
	end
