MACRO battleanimoam
	db \1 ; vtile offset
	db \2 ; data length
	dw \3 ; data pointer
ENDM

BattleAnimOAMData:
; entries correspond to BATTLEANIMOAMSET_* constants
	table_width 4
	battleanimoam $00, 16, .OAMData_00            ; BATTLEANIMOAMSET_00
	battleanimoam $04,  9, .OAMData_01            ; BATTLEANIMOAMSET_01
	battleanimoam $08,  4, .OAMData_02            ; BATTLEANIMOAMSET_02
	battleanimoam $09,  4, .OAMData_03            ; BATTLEANIMOAMSET_03
	battleanimoam $0d,  4, .OAMData_04            ; BATTLEANIMOAMSET_04
	battleanimoam $0f,  4, .OAMData_03            ; BATTLEANIMOAMSET_05
	battleanimoam $13,  4, .OAMData_04            ; BATTLEANIMOAMSET_06
	battleanimoam $04, 16, .OAMData_00            ; BATTLEANIMOAMSET_07
	battleanimoam $08, 16, .OAMData_00            ; BATTLEANIMOAMSET_08
	battleanimoam $08, 16, .OAMData_09            ; BATTLEANIMOAMSET_09
	battleanimoam $00,  4, .OAMData_04            ; BATTLEANIMOAMSET_0A
	battleanimoam $02,  4, .OAMData_03            ; BATTLEANIMOAMSET_0B
	battleanimoam $06,  2, .OAMData_0c            ; BATTLEANIMOAMSET_0C
	battleanimoam $07,  2, .OAMData_0c            ; BATTLEANIMOAMSET_0D
	battleanimoam $02,  4, .OAMData_04            ; BATTLEANIMOAMSET_0E
	battleanimoam $04,  1, .OAMData_0f            ; BATTLEANIMOAMSET_0F
	battleanimoam $05,  1, .OAMData_0f            ; BATTLEANIMOAMSET_10
	battleanimoam $00,  2, .OAMData_11            ; BATTLEANIMOAMSET_11
	battleanimoam $02,  2, .OAMData_11            ; BATTLEANIMOAMSET_12
	battleanimoam $00,  4, .OAMData_13            ; BATTLEANIMOAMSET_13
	battleanimoam $00,  1, .OAMData_0f            ; BATTLEANIMOAMSET_14
	battleanimoam $01,  1, .OAMData_0f            ; BATTLEANIMOAMSET_15
	battleanimoam $02,  1, .OAMData_0f            ; BATTLEANIMOAMSET_16
	battleanimoam $03,  1, .OAMData_0f            ; BATTLEANIMOAMSET_17
	battleanimoam $00,  4, .OAMData_02            ; BATTLEANIMOAMSET_18
	battleanimoam $01, 16, .OAMData_00            ; BATTLEANIMOAMSET_19
	battleanimoam $05, 16, .OAMData_00            ; BATTLEANIMOAMSET_1A
	battleanimoam $00,  4, .OAMData_03            ; BATTLEANIMOAMSET_1B
	battleanimoam $05, 12, .OAMData_1c            ; BATTLEANIMOAMSET_1C
	battleanimoam $02,  4, .OAMData_02            ; BATTLEANIMOAMSET_1D
	battleanimoam $06,  1, .OAMData_0f            ; BATTLEANIMOAMSET_1E
	battleanimoam $07,  1, .OAMData_0f            ; BATTLEANIMOAMSET_1F
	battleanimoam $08,  1, .OAMData_0f            ; BATTLEANIMOAMSET_20
	battleanimoam $04,  4, .OAMData_03            ; BATTLEANIMOAMSET_21
	battleanimoam $09, 22, .OAMData_22            ; BATTLEANIMOAMSET_22
	battleanimoam $04,  2, .OAMData_11            ; BATTLEANIMOAMSET_23
	battleanimoam $06,  2, .OAMData_11            ; BATTLEANIMOAMSET_24
	battleanimoam $0c,  1, .OAMData_0f            ; BATTLEANIMOAMSET_25
	battleanimoam $0a,  1, .OAMData_0f            ; BATTLEANIMOAMSET_26
	battleanimoam $0b,  4, .OAMData_02            ; BATTLEANIMOAMSET_27
	battleanimoam $08,  4, .OAMData_04            ; BATTLEANIMOAMSET_28
	battleanimoam $06,  4, .OAMData_04            ; BATTLEANIMOAMSET_29
	battleanimoam $00,  5, .OAMData_2a            ; BATTLEANIMOAMSET_2A
	battleanimoam $03,  6, .OAMData_2b            ; BATTLEANIMOAMSET_2B
	battleanimoam $00,  7, .OAMData_2c            ; BATTLEANIMOAMSET_2C
	battleanimoam $03,  8, .OAMData_2d            ; BATTLEANIMOAMSET_2D
	battleanimoam $00,  9, .OAMData_2e            ; BATTLEANIMOAMSET_2E
	battleanimoam $00,  4, .OAMData_2f            ; BATTLEANIMOAMSET_2F
	battleanimoam $02,  4, .OAMData_30            ; BATTLEANIMOAMSET_30
	battleanimoam $04,  6, .OAMData_31            ; BATTLEANIMOAMSET_31
	battleanimoam $00,  2, .OAMData_32            ; BATTLEANIMOAMSET_32
	battleanimoam $00,  7, .OAMData_33            ; BATTLEANIMOAMSET_33
	battleanimoam $00, 14, .OAMData_32            ; BATTLEANIMOAMSET_34
	battleanimoam $00, 21, .OAMData_33            ; BATTLEANIMOAMSET_35
	battleanimoam $00,  2, .OAMData_36            ; BATTLEANIMOAMSET_36
	battleanimoam $00,  6, .OAMData_36            ; BATTLEANIMOAMSET_37
	battleanimoam $00, 10, .OAMData_36            ; BATTLEANIMOAMSET_38
	battleanimoam $00, 14, .OAMData_36            ; BATTLEANIMOAMSET_39
	battleanimoam $00,  2, .OAMData_3a            ; BATTLEANIMOAMSET_3A
	battleanimoam $00,  6, .OAMData_3a            ; BATTLEANIMOAMSET_3B
	battleanimoam $00, 10, .OAMData_3a            ; BATTLEANIMOAMSET_3C
	battleanimoam $00, 14, .OAMData_3a            ; BATTLEANIMOAMSET_3D
	battleanimoam $00,  4, .OAMData_3e            ; BATTLEANIMOAMSET_3E
	battleanimoam $00, 16, .OAMData_3e            ; BATTLEANIMOAMSET_3F
	battleanimoam $00, 26, .OAMData_3e            ; BATTLEANIMOAMSET_40
	battleanimoam $00, 26, .OAMData_41            ; BATTLEANIMOAMSET_41
	battleanimoam $0e,  4, .OAMData_42            ; BATTLEANIMOAMSET_42
	battleanimoam $0e,  8, .OAMData_42            ; BATTLEANIMOAMSET_43
	battleanimoam $0e,  4, .OAMData_44            ; BATTLEANIMOAMSET_44
	battleanimoam $0e,  8, .OAMData_44            ; BATTLEANIMOAMSET_45
	battleanimoam $0e,  4, .OAMData_46            ; BATTLEANIMOAMSET_46
	battleanimoam $0e,  4, .OAMData_47            ; BATTLEANIMOAMSET_47
	battleanimoam $00,  6, .OAMData_48            ; BATTLEANIMOAMSET_48
	battleanimoam $03,  4, .OAMData_49            ; BATTLEANIMOAMSET_49
	battleanimoam $03,  2, .OAMData_4a            ; BATTLEANIMOAMSET_4A
	battleanimoam $01,  5, .OAMData_0f            ; BATTLEANIMOAMSET_4B
	battleanimoam $01,  6, .OAMData_4c            ; BATTLEANIMOAMSET_4C
	battleanimoam $01,  7, .OAMData_4d            ; BATTLEANIMOAMSET_4D
	battleanimoam $01,  3, .OAMData_4d            ; BATTLEANIMOAMSET_4E
	battleanimoam $01,  8, .OAMData_4f            ; BATTLEANIMOAMSET_4F
	battleanimoam $01,  9, .OAMData_50            ; BATTLEANIMOAMSET_50
	battleanimoam $01, 10, .OAMData_51            ; BATTLEANIMOAMSET_51
	battleanimoam $01,  6, .OAMData_51            ; BATTLEANIMOAMSET_52
	battleanimoam $00,  9, .OAMData_01            ; BATTLEANIMOAMSET_53
	battleanimoam $04,  4, .OAMData_02            ; BATTLEANIMOAMSET_54
	battleanimoam $05,  4, .OAMData_02            ; BATTLEANIMOAMSET_55
	battleanimoam $00,  2, .OAMData_56            ; BATTLEANIMOAMSET_56
	battleanimoam $02,  2, .OAMData_56            ; BATTLEANIMOAMSET_57
	battleanimoam $04,  2, .OAMData_56            ; BATTLEANIMOAMSET_58
	battleanimoam $02,  4, .OAMData_59            ; BATTLEANIMOAMSET_59
	battleanimoam $02,  4, .OAMData_5a            ; BATTLEANIMOAMSET_5A
	battleanimoam $02,  2, .OAMData_0c            ; BATTLEANIMOAMSET_5B
	battleanimoam $04,  2, .OAMData_0c            ; BATTLEANIMOAMSET_5C
	battleanimoam $06,  4, .OAMData_5d            ; BATTLEANIMOAMSET_5D
	battleanimoam $08,  2, .OAMData_0c            ; BATTLEANIMOAMSET_5E
	battleanimoam $09,  2, .OAMData_0c            ; BATTLEANIMOAMSET_5F
	battleanimoam $05,  2, .OAMData_60            ; BATTLEANIMOAMSET_60
	battleanimoam $00,  2, .OAMData_61            ; BATTLEANIMOAMSET_61
	battleanimoam $00,  5, .OAMData_61            ; BATTLEANIMOAMSET_62
	battleanimoam $00,  9, .OAMData_61            ; BATTLEANIMOAMSET_63
	battleanimoam $09,  9, .OAMData_61            ; BATTLEANIMOAMSET_64
	battleanimoam $00,  4, .OAMData_65            ; BATTLEANIMOAMSET_65
	battleanimoam $00,  7, .OAMData_65            ; BATTLEANIMOAMSET_66
	battleanimoam $00,  9, .OAMData_65            ; BATTLEANIMOAMSET_67
	battleanimoam $09,  9, .OAMData_65            ; BATTLEANIMOAMSET_68
	battleanimoam $04,  1, .OAMData_69            ; BATTLEANIMOAMSET_69
	battleanimoam $05,  2, .OAMData_6a            ; BATTLEANIMOAMSET_6A
	battleanimoam $06,  4, .OAMData_03            ; BATTLEANIMOAMSET_6B
	battleanimoam $0a,  4, .OAMData_03            ; BATTLEANIMOAMSET_6C
	battleanimoam $0e,  4, .OAMData_03            ; BATTLEANIMOAMSET_6D
	battleanimoam $08,  5, .OAMData_6e            ; BATTLEANIMOAMSET_6E
	battleanimoam $0d,  3, .OAMData_6f            ; BATTLEANIMOAMSET_6F
	battleanimoam $01,  8, .OAMData_70            ; BATTLEANIMOAMSET_70
	battleanimoam $03,  8, .OAMData_70            ; BATTLEANIMOAMSET_71
	battleanimoam $05,  8, .OAMData_70            ; BATTLEANIMOAMSET_72
	battleanimoam $07,  8, .OAMData_70            ; BATTLEANIMOAMSET_73
	battleanimoam $06,  4, .OAMData_02            ; BATTLEANIMOAMSET_74
	battleanimoam $07,  4, .OAMData_02            ; BATTLEANIMOAMSET_75
	battleanimoam $0a,  2, .OAMData_76            ; BATTLEANIMOAMSET_76
	battleanimoam $00,  1, .OAMData_77            ; BATTLEANIMOAMSET_77
	battleanimoam $00,  3, .OAMData_78            ; BATTLEANIMOAMSET_78
	battleanimoam $00,  6, .OAMData_79            ; BATTLEANIMOAMSET_79
	battleanimoam $00,  9, .OAMData_7a            ; BATTLEANIMOAMSET_7A
	battleanimoam $00, 12, .OAMData_7b            ; BATTLEANIMOAMSET_7B
	battleanimoam $00, 14, .OAMData_7c            ; BATTLEANIMOAMSET_7C
	battleanimoam $00, 15, .OAMData_7d            ; BATTLEANIMOAMSET_7D
	battleanimoam $04,  4, .OAMData_03            ; BATTLEANIMOAMSET_7E
	battleanimoam $08,  4, .OAMData_03            ; BATTLEANIMOAMSET_7F
	battleanimoam $0d,  1, .OAMData_0f            ; BATTLEANIMOAMSET_80
	battleanimoam $0e,  4, .OAMData_81            ; BATTLEANIMOAMSET_81
	battleanimoam $10,  1, .OAMData_0f            ; BATTLEANIMOAMSET_82
	battleanimoam $11,  1, .OAMData_0f            ; BATTLEANIMOAMSET_83
	battleanimoam $04,  2, .OAMData_6a            ; BATTLEANIMOAMSET_84
	battleanimoam $00, 14, .OAMData_85            ; BATTLEANIMOAMSET_85
	battleanimoam $0a,  4, .OAMData_04            ; BATTLEANIMOAMSET_86
	battleanimoam $00,  8, .OAMData_87            ; BATTLEANIMOAMSET_87
	battleanimoam $00, 12, .OAMData_88            ; BATTLEANIMOAMSET_88
	battleanimoam $00, 16, .OAMData_87            ; BATTLEANIMOAMSET_89
	battleanimoam $09,  2, .OAMData_8a            ; BATTLEANIMOAMSET_8A
	battleanimoam $09,  4, .OAMData_8a            ; BATTLEANIMOAMSET_8B
	battleanimoam $09,  6, .OAMData_8a            ; BATTLEANIMOAMSET_8C
	battleanimoam $09,  8, .OAMData_8a            ; BATTLEANIMOAMSET_8D
	battleanimoam $12,  5, .OAMData_8e            ; BATTLEANIMOAMSET_8E
	battleanimoam $00,  4, .OAMData_8f            ; BATTLEANIMOAMSET_8F
	battleanimoam $04,  4, .OAMData_8f            ; BATTLEANIMOAMSET_90
	battleanimoam $08,  4, .OAMData_8f            ; BATTLEANIMOAMSET_91
	battleanimoam $0c,  4, .OAMData_8f            ; BATTLEANIMOAMSET_92
	battleanimoam $00,  6, .OAMData_93            ; BATTLEANIMOAMSET_93
	battleanimoam $04,  4, .OAMData_03            ; BATTLEANIMOAMSET_94
	battleanimoam $0e, 13, .OAMData_95            ; BATTLEANIMOAMSET_95
	battleanimoam $15,  4, .OAMData_30            ; BATTLEANIMOAMSET_96
	battleanimoam $04,  4, .OAMData_30            ; BATTLEANIMOAMSET_97
	battleanimoam $0c,  4, .OAMData_04            ; BATTLEANIMOAMSET_98
	battleanimoam $0a,  4, .OAMData_99            ; BATTLEANIMOAMSET_99
	battleanimoam $0c,  4, .OAMData_03            ; BATTLEANIMOAMSET_9A
	battleanimoam $00, 36, .OAMData_9b            ; BATTLEANIMOAMSET_9B
	battleanimoam $0d,  2, .OAMData_9c            ; BATTLEANIMOAMSET_9C
	battleanimoam $0d,  4, .OAMData_9c            ; BATTLEANIMOAMSET_9D
	battleanimoam $0d,  6, .OAMData_9c            ; BATTLEANIMOAMSET_9E
	battleanimoam $02,  8, .OAMData_9f            ; BATTLEANIMOAMSET_9F
	battleanimoam $08,  7, .OAMData_a0            ; BATTLEANIMOAMSET_A0
	battleanimoam $08,  5, .OAMData_a0            ; BATTLEANIMOAMSET_A1
	battleanimoam $08,  3, .OAMData_a0            ; BATTLEANIMOAMSET_A2
	battleanimoam $00, 16, .OAMData_1c            ; BATTLEANIMOAMSET_A3
	battleanimoam $00,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A4
	battleanimoam $06,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A5
	battleanimoam $0c,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A6
	battleanimoam $12,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A7
	battleanimoam $18,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A8
	battleanimoam $1e,  9, .OAMData_a4            ; BATTLEANIMOAMSET_A9
	battleanimoam $24,  9, .OAMData_a4            ; BATTLEANIMOAMSET_AA
	battleanimoam $2a,  9, .OAMData_a4            ; BATTLEANIMOAMSET_AB
	battleanimoam $00,  4, .OAMData_59            ; BATTLEANIMOAMSET_AC
	battleanimoam $12,  4, .OAMData_03            ; BATTLEANIMOAMSET_AD
	battleanimoam $10,  4, .OAMData_04            ; BATTLEANIMOAMSET_AE
	battleanimoam $16,  1, .OAMData_0f            ; BATTLEANIMOAMSET_AF
	battleanimoam $17,  4, .OAMData_02            ; BATTLEANIMOAMSET_B0
	battleanimoam $18,  4, .OAMData_03            ; BATTLEANIMOAMSET_B1
	battleanimoam $1c,  4, .OAMData_03            ; BATTLEANIMOAMSET_B2
	battleanimoam $20,  3, .OAMData_03            ; BATTLEANIMOAMSET_B3
	battleanimoam $23,  4, .OAMData_04            ; BATTLEANIMOAMSET_B4
	battleanimoam $25,  3, .OAMData_03            ; BATTLEANIMOAMSET_B5
	battleanimoam $17,  4, .OAMData_03            ; BATTLEANIMOAMSET_B6
	battleanimoam $0a, 16, .OAMData_00            ; BATTLEANIMOAMSET_B7
	battleanimoam $10, 16, .OAMData_1c            ; BATTLEANIMOAMSET_B8
	battleanimoam $1b, 14, .OAMData_b9            ; BATTLEANIMOAMSET_B9
	battleanimoam $04,  4, .OAMData_03            ; BATTLEANIMOAMSET_BA
	battleanimoam $08,  2, .OAMData_11            ; BATTLEANIMOAMSET_BB
	battleanimoam $20,  6, .OAMData_bc            ; BATTLEANIMOAMSET_BC
	battleanimoam $29, 14, .OAMData_bd            ; BATTLEANIMOAMSET_BD
	battleanimoam $04,  4, .OAMData_03            ; BATTLEANIMOAMSET_BE
	battleanimoam $1a,  4, .OAMData_30            ; BATTLEANIMOAMSET_BF
	battleanimoam $16,  9, .OAMData_01            ; BATTLEANIMOAMSET_C0
	battleanimoam $10, 16, .OAMData_c1            ; BATTLEANIMOAMSET_C1
	battleanimoam $09,  6, .OAMData_c2            ; BATTLEANIMOAMSET_C2
	battleanimoam $11,  9, .OAMData_c3            ; BATTLEANIMOAMSET_C3
	battleanimoam $0e,  4, .OAMData_03            ; BATTLEANIMOAMSET_C4
	battleanimoam $0b,  4, .OAMData_30            ; BATTLEANIMOAMSET_C5
	battleanimoam $1c,  6, .OAMData_02            ; BATTLEANIMOAMSET_C6
	battleanimoam $20, 16, .OAMData_c1            ; BATTLEANIMOAMSET_C7
	battleanimoam $05,  6, .OAMData_c8            ; BATTLEANIMOAMSET_C8
	battleanimoam $0b,  4, .OAMData_03            ; BATTLEANIMOAMSET_C9
	battleanimoam $09,  4, .OAMData_ca            ; BATTLEANIMOAMSET_CA
	battleanimoam $0b,  4, .OAMData_04            ; BATTLEANIMOAMSET_CB
	battleanimoam $11, 13, .OAMData_cc            ; BATTLEANIMOAMSET_CC
	battleanimoam $00,  9, .OAMData_c3            ; BATTLEANIMOAMSET_CD
	battleanimoam $09,  9, .OAMData_c3            ; BATTLEANIMOAMSET_CE
	battleanimoam $00, 12, .OAMData_cf            ; BATTLEANIMOAMSET_CF
	battleanimoam $06, 12, .OAMData_cf            ; BATTLEANIMOAMSET_D0
	battleanimoam $0c, 12, .OAMData_cf            ; BATTLEANIMOAMSET_D1
	battleanimoam $12, 12, .OAMData_cf            ; BATTLEANIMOAMSET_D2
	battleanimoam $00, 13, .OAMData_cc            ; BATTLEANIMOAMSET_D3
	battleanimoam $00,  7, .OAMData_d4            ; BATTLEANIMOAMSET_D4
	battleanimoam $00,  6, .OAMData_d5            ; BATTLEANIMOAMSET_D5
	battleanimoam $00, 14, .OAMData_d6            ; BATTLEANIMOAMSET_D6
	battleanimoam $00, 12, .OAMData_d7            ; BATTLEANIMOAMSET_D7
	battleanimoam $00, 16, .OAMData_d8            ; BATTLEANIMOAMSET_D8
	battleanimoam $08, 16, .OAMData_d8            ; BATTLEANIMOAMSET_D9
	battleanimoam $10, 16, .OAMData_d8            ; BATTLEANIMOAMSET_DA
	battleanimoam $18, 16, .OAMData_d8            ; BATTLEANIMOAMSET_DB
	battleanimoam $09, 16, .OAMData_00            ; BATTLEANIMOAMSET_DC
	battleanimoam $00, 29, .OAMData_dd            ; BATTLEANIMOAMSET_DD
	battleanimoam $00,  8, .OAMData_de            ; BATTLEANIMOAMSET_DE
	battleanimoam $00, 24, .OAMData_df            ; BATTLEANIMOAMSET_DF
	battleanimoam $02,  2, .OAMData_e0            ; BATTLEANIMOAMSET_E0
	battleanimoam $07,  4, .OAMData_03            ; BATTLEANIMOAMSET_E1
	battleanimoam $02,  5, .OAMData_e2            ; BATTLEANIMOAMSET_E2
	battleanimoam $02,  6, .OAMData_e3            ; BATTLEANIMOAMSET_E3
	battleanimoam $02,  7, .OAMData_e4            ; BATTLEANIMOAMSET_E4
	battleanimoam $02,  8, .OAMData_e5            ; BATTLEANIMOAMSET_E5
	battleanimoam $02,  9, .OAMData_e6            ; BATTLEANIMOAMSET_E6
	battleanimoam $02, 10, .OAMData_e7            ; BATTLEANIMOAMSET_E7
	battleanimoam $02, 11, .OAMData_e8            ; BATTLEANIMOAMSET_E8
	battleanimoam $02,  7, .OAMData_e8            ; BATTLEANIMOAMSET_E9
	battleanimoam $03,  4, .OAMData_02            ; BATTLEANIMOAMSET_EA
	battleanimoam $01,  4, .OAMData_02            ; BATTLEANIMOAMSET_EB
	battleanimoam $00,  9, .OAMData_ec            ; BATTLEANIMOAMSET_EC
	battleanimoam $06,  9, .OAMData_ed            ; BATTLEANIMOAMSET_ED
	battleanimoam $09,  4, .OAMData_02            ; BATTLEANIMOAMSET_EE
	battleanimoam $00, 18, .OAMData_ef            ; BATTLEANIMOAMSET_EF
	battleanimoam $09, 18, .OAMData_ef            ; BATTLEANIMOAMSET_F0
	battleanimoam $00, 20, .OAMData_f1            ; BATTLEANIMOAMSET_F1
	battleanimoam $05, 16, .OAMData_f2            ; BATTLEANIMOAMSET_F2
	battleanimoam $0a,  9, .OAMData_f3            ; BATTLEANIMOAMSET_F3
	battleanimoam $06,  6, .OAMData_BigWhip3      ; BATTLEANIMOAMSET_BIG_WHIP_3
	battleanimoam $0c,  6, .OAMData_BigWhip1      ; BATTLEANIMOAMSET_BIG_WHIP_1
	battleanimoam $00, 17, .OAMData_ClawTear      ; BATTLEANIMOAMSET_CLAW_TEAR
	battleanimoam $00, 12, .OAMData_f7            ; BATTLEANIMOAMSET_F7
	battleanimoam $06, 16, .OAMData_f8            ; BATTLEANIMOAMSET_F8
	battleanimoam $0e, 16, .OAMData_f8            ; BATTLEANIMOAMSET_F9
	battleanimoam $16, 12, .OAMData_f7            ; BATTLEANIMOAMSET_FA
	battleanimoam $00, 12, .OAMData_fb            ; BATTLEANIMOAMSET_FB
	battleanimoam $04,  6, .OAMData_93            ; BATTLEANIMOAMSET_FC
	battleanimoam $11,  2, .OAMData_StoneEdge     ; BATTLEANIMOAMSET_STONE_EDGE
	battleanimoam $1b,  4, .OAMData_03            ; BATTLEANIMOAMSET_BRICK_BREAK
	battleanimoam $07, 10, .OAMData_HyperVoice    ; BATTLEANIMOAMSET_HYPER_VOICE
	battleanimoam $fc,  3, .OAMData_BugBuzz1      ; BATTLEANIMOAMSET_BUG_BUZZ1
	battleanimoam $f8,  5, .OAMData_BugBuzz2      ; BATTLEANIMOAMSET_BUG_BUZZ2
	battleanimoam $1f,  4, .OAMData_03            ; BATTLEANIMOAMSET_BULLET_PUNCH
	battleanimoam $20, 16, .OAMData_1c            ; BATTLEANIMOAMSET_U_TURN_FALL
	battleanimoam $00,  9, .OAMData_SwirlShort    ; BATTLEANIMOAMSET_SWIRL_SHORT_1
	battleanimoam $0c,  9, .OAMData_SwirlShort    ; BATTLEANIMOAMSET_SWIRL_SHORT_2
	battleanimoam $06,  9, .OAMData_SwirlShort    ; BATTLEANIMOAMSET_SWIRL_SHORT_3
	battleanimoam $12,  9, .OAMData_SwirlShort    ; BATTLEANIMOAMSET_SWIRL_SHORT_4
	battleanimoam $00,  9, .OAMData_Mushroom1     ; BATTLEANIMOAMSET_MUSHROOM_1
	battleanimoam $06,  9, .OAMData_Mushroom1     ; BATTLEANIMOAMSET_MUSHROOM_2
	battleanimoam $0c,  9, .OAMData_Mushroom1     ; BATTLEANIMOAMSET_MUSHROOM_3
	battleanimoam $00, 16, .OAMData_Stats         ; BATTLEANIMOAMSET_STAT
	battleanimoam $00,  6, .OAMData_IcicleCrash   ; BATTLEANIMOAMSET_ICICLE_CRASH
	battleanimoam $00,  6, .OAMData_BigWhip2      ; BATTLEANIMOAMSET_BIG_WHIP_2
	battleanimoam $00, 16, .OAMData_VoltSwitch1   ; BATTLEANIMOAMSET_VOLT_SWITCH_1
	battleanimoam $00, 16, .OAMData_VoltSwitch2   ; BATTLEANIMOAMSET_VOLT_SWITCH_2
	battleanimoam $00, 16, .OAMData_VoltSwitch3   ; BATTLEANIMOAMSET_VOLT_SWITCH_3
	battleanimoam $00, 16, .OAMData_VoltSwitch4   ; BATTLEANIMOAMSET_VOLT_SWITCH_4
	battleanimoam $00, 16, .OAMData_VoltSwitch5   ; BATTLEANIMOAMSET_VOLT_SWITCH_5
	battleanimoam $00, 16, .OAMData_VoltSwitch6   ; BATTLEANIMOAMSET_VOLT_SWITCH_6
	battleanimoam $0f,  1, .OAMData_0f            ; BATTLEANIMOAMSET_DISCHARGE_SPARKS_N_1
	battleanimoam $0e,  1, .OAMData_0f            ; BATTLEANIMOAMSET_DISCHARGE_SPARKS_N_2
	battleanimoam $01, 15, .OAMData_HoneClaws1    ; BATTLEANIMOAMSET_HONE_CLAWS_1
	battleanimoam $01, 18, .OAMData_HoneClaws2    ; BATTLEANIMOAMSET_HONE_CLAWS_2
	battleanimoam $01, 21, .OAMData_HoneClaws3    ; BATTLEANIMOAMSET_HONE_CLAWS_3
	battleanimoam $01,  9, .OAMData_HoneClaws3    ; BATTLEANIMOAMSET_HONE_CLAWS_4
	battleanimoam $00, 18, .OAMData_Hurricane  ; BATTLEANIMOAMSET_HURRICANE
	assert_table_length NUM_BATTLEANIMOAMSETS

.OAMData_11:
	dsprite  -1, 0,  -1, 4, $00, $0
	dsprite   0, 0,  -1, 4, $01, $0

.OAMData_56:
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $01, $0

.OAMData_03:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $02, $0
	dsprite   0, 0,   0, 0, $03, $0

.OAMData_02:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, $0 | OAM_XFLIP
	dsprite   0, 0,  -1, 0, $00, $0 | OAM_YFLIP
	dsprite   0, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_c3:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $05, $0
	dsprite   0, 4,  -2, 4, $06, $0
	dsprite   0, 4,  -1, 4, $07, $0
	dsprite   0, 4,   0, 4, $08, $0

.OAMData_01:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $00, $0 | OAM_XFLIP
	dsprite  -1, 4,  -2, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $03, $0
	dsprite  -1, 4,   0, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 4,  -2, 4, $00, $0 | OAM_YFLIP
	dsprite   0, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 4,   0, 4, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_cf:
	dsprite  -2, 0,  -2, 4, $00, $0
	dsprite  -2, 0,  -1, 4, $01, $0
	dsprite  -2, 0,   0, 4, $02, $0
	dsprite  -1, 0,  -2, 4, $03, $0
	dsprite  -1, 0,  -1, 4, $04, $0
	dsprite  -1, 0,   0, 4, $05, $0
	dsprite   0, 0,  -2, 4, $05, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,  -1, 4, $04, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,   0, 4, $03, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,  -2, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   0, 4, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_1c:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $02, $0
	dsprite  -2, 0,   1, 0, $03, $0
	dsprite  -1, 0,  -2, 0, $04, $0
	dsprite  -1, 0,  -1, 0, $05, $0
	dsprite  -1, 0,   0, 0, $06, $0
	dsprite  -1, 0,   1, 0, $07, $0
	dsprite   0, 0,  -2, 0, $08, $0
	dsprite   0, 0,  -1, 0, $09, $0
	dsprite   0, 0,   0, 0, $0a, $0
	dsprite   0, 0,   1, 0, $0b, $0
	dsprite   1, 0,  -2, 0, $0c, $0
	dsprite   1, 0,  -1, 0, $0d, $0
	dsprite   1, 0,   0, 0, $0e, $0
	dsprite   1, 0,   1, 0, $0f, $0

.OAMData_00:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -1, 0,  -2, 0, $02, $0
	dsprite  -1, 0,  -1, 0, $03, $0
	dsprite  -2, 0,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -2, 0,   1, 0, $00, $0 | OAM_XFLIP
	dsprite  -1, 0,   0, 0, $03, $0 | OAM_XFLIP
	dsprite  -1, 0,   1, 0, $02, $0 | OAM_XFLIP
	dsprite   0, 0,  -2, 0, $02, $0 | OAM_YFLIP
	dsprite   0, 0,  -1, 0, $03, $0 | OAM_YFLIP
	dsprite   1, 0,  -2, 0, $00, $0 | OAM_YFLIP
	dsprite   1, 0,  -1, 0, $01, $0 | OAM_YFLIP
	dsprite   0, 0,   0, 0, $03, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,   1, 0, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   0, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_09:
	dsprite  -3, 4,  -3, 4, $00, $0
	dsprite  -3, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -3, 4, $02, $0
	dsprite  -2, 4,  -2, 4, $03, $0
	dsprite  -3, 4,   0, 4, $01, $0 | OAM_XFLIP
	dsprite  -3, 4,   1, 4, $00, $0 | OAM_XFLIP
	dsprite  -2, 4,   0, 4, $03, $0 | OAM_XFLIP
	dsprite  -2, 4,   1, 4, $02, $0 | OAM_XFLIP
	dsprite   0, 4,  -3, 4, $02, $0 | OAM_YFLIP
	dsprite   0, 4,  -2, 4, $03, $0 | OAM_YFLIP
	dsprite   1, 4,  -3, 4, $00, $0 | OAM_YFLIP
	dsprite   1, 4,  -2, 4, $01, $0 | OAM_YFLIP
	dsprite   0, 4,   0, 4, $03, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 4,   1, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 4,   1, 4, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_0c:
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $00, $0 | OAM_XFLIP

.OAMData_6a:
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $00, $0 | OAM_XFLIP

.OAMData_04:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, $0 | OAM_XFLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $01, $0 | OAM_XFLIP

.OAMData_5d:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $00, $0 | OAM_YFLIP
	dsprite   0, 0,   0, 0, $01, $0 | OAM_YFLIP

.OAMData_13:
	dsprite  -1, 2,  -1, 0, $02, $0
	dsprite   0, 2,  -1, 0, $03, $0
	dsprite  -2, 6,   0, 0, $02, $0
	dsprite  -1, 6,   0, 0, $03, $0

.OAMData_22:
	dsprite   1, 0, -11, 0, $01, $0
	dsprite   0, 0, -10, 0, $02, $0
	dsprite   0, 0,  -9, 0, $03, $0
	dsprite   0, 0,  -8, 0, $00, $0
	dsprite   0, 0,  -7, 0, $03, $0
	dsprite   0, 0,  -6, 0, $00, $0
	dsprite   0, 0,  -5, 0, $03, $0
	dsprite   0, 0,  -4, 0, $00, $0
	dsprite   0, 0,  -3, 0, $03, $0
	dsprite   0, 0,  -2, 0, $00, $0
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $02, $0
	dsprite  -1, 0,   1, 0, $03, $0
	dsprite  -1, 0,   2, 0, $00, $0
	dsprite  -1, 0,   3, 0, $03, $0
	dsprite  -1, 0,   4, 0, $00, $0
	dsprite  -1, 0,   5, 0, $03, $0
	dsprite  -1, 0,   6, 0, $00, $0
	dsprite  -1, 0,   7, 0, $03, $0
	dsprite  -1, 0,   8, 0, $00, $0
	dsprite  -1, 0,   9, 0, $01, $0
	dsprite  -2, 0,  10, 0, $02, $0

.OAMData_2a:
	dsprite  -3, 4,  -1, 0, $00, $0
	dsprite  -3, 4,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -2, 4,  -1, 0, $01, $0
	dsprite  -2, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2b:
	dsprite  -4, 4,  -1, 0, $00, $0
	dsprite  -4, 4,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -3, 4,  -1, 0, $01, $0
	dsprite  -3, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2c:
	dsprite  -5, 4,  -1, 0, $00, $0
	dsprite  -5, 4,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -4, 4,  -1, 0, $01, $0
	dsprite  -4, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2d:
	dsprite  -6, 4,  -1, 0, $00, $0
	dsprite  -6, 4,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -5, 4,  -1, 0, $01, $0
	dsprite  -5, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -4, 4,  -1, 4, $02, $0
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2e:
	dsprite  -7, 4,  -1, 0, $00, $0
	dsprite  -7, 4,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -6, 4,  -1, 0, $01, $0
	dsprite  -6, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -5, 4,  -1, 4, $02, $0
	dsprite  -4, 4,  -1, 4, $02, $0
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2f:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, $0 | OAM_XFLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_30:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_31:
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $03, $0
	dsprite   0, 4,  -1, 0, $04, $0
	dsprite   0, 4,   0, 0, $05, $0

.OAMData_76:
	dsprite  -1, 5,  -1, 0, $00, $0
	dsprite  -1, 1,   0, 0, $00, $0

.OAMData_32:
	dsprite  -1, 0,  -2, 4, $00, $0
	dsprite  -1, 0,   0, 4, $00, $0
	dsprite  -3, 0,  -2, 4, $00, $0
	dsprite  -3, 0,   0, 4, $00, $0
	dsprite  -2, 0,  -3, 4, $00, $0
	dsprite  -2, 0,  -2, 4, $01, $0
	dsprite  -2, 0,  -1, 4, $00, $0
	dsprite  -2, 0,   0, 4, $01, $0
	dsprite  -2, 0,   1, 4, $00, $0
	dsprite  -1, 0,  -4, 4, $00, $0
	dsprite  -1, 0,  -3, 4, $01, $0
	dsprite  -1, 0,  -1, 4, $01, $0
	dsprite  -1, 0,   1, 4, $01, $0
	dsprite  -1, 0,   2, 4, $00, $0

.OAMData_33:
	dsprite  -2, 0,  -2, 4, $00, $0
	dsprite  -2, 0,   0, 4, $00, $0
	dsprite  -1, 0,  -3, 4, $00, $0
	dsprite  -1, 0,  -2, 4, $01, $0
	dsprite  -1, 0,  -1, 4, $00, $0
	dsprite  -1, 0,   0, 4, $01, $0
	dsprite  -1, 0,   1, 4, $00, $0
	dsprite  -4, 0,  -2, 4, $00, $0
	dsprite  -4, 0,   0, 4, $00, $0
	dsprite  -3, 0,  -3, 4, $00, $0
	dsprite  -3, 0,  -2, 4, $01, $0
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -3, 0,   0, 4, $01, $0
	dsprite  -3, 0,   1, 4, $00, $0
	dsprite  -2, 0,  -4, 4, $00, $0
	dsprite  -2, 0,  -3, 4, $01, $0
	dsprite  -2, 0,  -1, 4, $01, $0
	dsprite  -2, 0,   1, 4, $01, $0
	dsprite  -2, 0,   2, 4, $00, $0
	dsprite  -1, 0,  -4, 4, $01, $0
	dsprite  -1, 0,   2, 4, $01, $0

.OAMData_36:
	dsprite  -7, 4,  -1, 0, $00, $0
	dsprite  -7, 4,   0, 0, $01, $0
	dsprite  -6, 4,  -1, 0, $02, $0
	dsprite  -6, 4,   0, 0, $03, $0
	dsprite  -5, 4,  -1, 0, $04, $0
	dsprite  -5, 4,   0, 0, $05, $0
	dsprite  -4, 4,  -1, 0, $06, $0
	dsprite  -4, 4,   0, 0, $07, $0
	dsprite  -3, 4,  -1, 0, $08, $0
	dsprite  -3, 4,   0, 0, $09, $0
	dsprite  -2, 4,  -1, 0, $0a, $0
	dsprite  -2, 4,   0, 0, $0b, $0
	dsprite  -1, 4,  -1, 0, $0c, $0
	dsprite  -1, 4,   0, 0, $0d, $0

.OAMData_3a:
	dsprite  -7, 4,  -1, 0, $0c, $0
	dsprite  -7, 4,   0, 0, $0d, $0
	dsprite  -6, 4,  -1, 0, $08, $0
	dsprite  -6, 4,   0, 0, $09, $0
	dsprite  -5, 4,  -1, 0, $04, $0
	dsprite  -5, 4,   0, 0, $05, $0
	dsprite  -4, 4,  -1, 0, $00, $0
	dsprite  -4, 4,   0, 0, $01, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $03, $0
	dsprite  -2, 4,   0, 0, $02, $0
	dsprite  -2, 4,   1, 0, $03, $0
	dsprite  -1, 4,   0, 0, $0a, $0
	dsprite  -1, 4,   1, 0, $0b, $0

.OAMData_3e:
	dsprite   1, 4,  -2, 0, $00, $0 | OAM_YFLIP
	dsprite   1, 4,  -1, 0, $02, $0 | OAM_YFLIP
	dsprite   1, 4,   0, 0, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 4,   1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,  -3, 0, $09, $0 | OAM_XFLIP
	dsprite  -1, 4,  -2, 0, $08, $0 | OAM_XFLIP
	dsprite  -1, 4,  -1, 0, $06, $0
	dsprite  -1, 4,   0, 0, $07, $0
	dsprite  -1, 4,   1, 0, $08, $0
	dsprite  -1, 4,   2, 0, $09, $0
	dsprite   0, 4,  -3, 0, $01, $0 | OAM_XFLIP
	dsprite   0, 4,  -2, 0, $00, $0 | OAM_XFLIP
	dsprite   0, 4,  -1, 0, $0c, $0
	dsprite   0, 4,   0, 0, $0d, $0
	dsprite   0, 4,   1, 0, $00, $0
	dsprite   0, 4,   2, 0, $01, $0
	dsprite  -3, 4,  -2, 0, $00, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $02, $0 | OAM_XFLIP
	dsprite  -3, 4,   1, 0, $00, $0 | OAM_XFLIP
	dsprite  -2, 4,  -3, 0, $03, $0 | OAM_XFLIP
	dsprite  -2, 4,  -2, 0, $02, $0 | OAM_XFLIP
	dsprite  -2, 4,  -1, 0, $04, $0
	dsprite  -2, 4,   0, 0, $05, $0
	dsprite  -2, 4,   1, 0, $02, $0
	dsprite  -2, 4,   2, 0, $03, $0

.OAMData_41:
	dsprite  -3, 4,  -2, 0, $00, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $02, $0 | OAM_XFLIP
	dsprite  -3, 4,   1, 0, $00, $0 | OAM_XFLIP
	dsprite  -2, 4,  -3, 4, $00, $0
	dsprite  -2, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -1, 0, $05, $0 | OAM_XFLIP
	dsprite  -2, 4,   0, 0, $04, $0 | OAM_XFLIP
	dsprite  -2, 4,   0, 4, $01, $0 | OAM_XFLIP
	dsprite  -2, 4,   1, 4, $00, $0 | OAM_XFLIP
	dsprite  -1, 4,  -3, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 0, $07, $0 | OAM_XFLIP
	dsprite  -1, 4,   0, 0, $06, $0 | OAM_XFLIP
	dsprite  -1, 4,   0, 4, $03, $0 | OAM_XFLIP
	dsprite  -1, 4,   1, 4, $02, $0 | OAM_XFLIP
	dsprite   0, 4,  -3, 4, $04, $0
	dsprite   0, 4,  -2, 4, $05, $0
	dsprite   0, 4,  -1, 0, $0d, $0 | OAM_XFLIP
	dsprite   0, 4,   0, 0, $0c, $0 | OAM_XFLIP
	dsprite   0, 4,   0, 4, $05, $0 | OAM_XFLIP
	dsprite   0, 4,   1, 4, $04, $0 | OAM_XFLIP
	dsprite   1, 4,  -2, 0, $00, $0 | OAM_YFLIP
	dsprite   1, 4,  -1, 0, $02, $0 | OAM_YFLIP
	dsprite   1, 4,   0, 0, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 4,   1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_42:
	dsprite  -3, 0,  -1, 4, $02, $0
	dsprite   2, 0,  -1, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,  -3, 0, $01, $0
	dsprite  -1, 4,   2, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -4, 0,  -1, 4, $02, $0
	dsprite   3, 0,  -1, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,  -4, 0, $01, $0
	dsprite  -1, 4,   3, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_44:
	dsprite  -3, 5,  -3, 5, $00, $0 | OAM_XFLIP
	dsprite  -3, 5,   1, 3, $00, $0
	dsprite   1, 3,  -3, 5, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 3,   1, 3, $00, $0 | OAM_YFLIP
	dsprite  -4, 5,  -4, 5, $00, $0 | OAM_XFLIP
	dsprite  -4, 5,   2, 3, $00, $0
	dsprite   2, 3,  -4, 5, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   2, 3,   2, 3, $00, $0 | OAM_YFLIP

.OAMData_46:
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite   1, 4,  -1, 4, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,  -3, 4, $01, $0
	dsprite  -1, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_47:
	dsprite  -2, 0,  -2, 0, $00, $0 | OAM_XFLIP
	dsprite  -2, 0,   1, 0, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   1, 0, $00, $0 | OAM_YFLIP

.OAMData_48:
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -2, 0,  -1, 2, $00, $0
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   1, 0,  -1, 2, $00, $0
	dsprite   2, 0,  -1, 4, $00, $0

.OAMData_49:
	dsprite  -1, 4,  -2, 0, $00, $0 | OAM_XFLIP
	dsprite  -1, 2,  -1, 0, $00, $0 | OAM_XFLIP
	dsprite  -1, 2,   0, 0, $00, $0
	dsprite  -1, 4,   1, 0, $00, $0

.OAMData_4a:
	dsprite  -1, 4,  -1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,   0, 0, $00, $0 | OAM_YFLIP

.OAMData_0f:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $01, $0 | OAM_XFLIP
	dsprite   0, 4,  -2, 4, $01, $0 | OAM_YFLIP
	dsprite   0, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_4c:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   0, 2,  -3, 6, $01, $0
	dsprite   0, 2,  -2, 6, $01, $0 | OAM_XFLIP
	dsprite   1, 2,  -3, 6, $01, $0 | OAM_YFLIP
	dsprite   1, 2,  -2, 6, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_4d:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 0,  -3, 0, $01, $0
	dsprite   1, 0,  -2, 0, $01, $0 | OAM_XFLIP
	dsprite   2, 0,  -3, 0, $01, $0 | OAM_YFLIP
	dsprite   2, 0,  -2, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_4f:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   1, 6,  -4, 2, $01, $0
	dsprite   1, 6,  -3, 2, $01, $0 | OAM_XFLIP
	dsprite   2, 6,  -4, 2, $01, $0 | OAM_YFLIP
	dsprite   2, 6,  -3, 2, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_50:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   2, 4,  -4, 4, $00, $0
	dsprite   2, 4,  -5, 4, $01, $0
	dsprite   2, 4,  -4, 4, $01, $0 | OAM_XFLIP
	dsprite   3, 4,  -5, 4, $01, $0 | OAM_YFLIP
	dsprite   3, 4,  -4, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_51:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   2, 4,  -4, 4, $00, $0
	dsprite   3, 2,  -5, 6, $00, $0
	dsprite   3, 2,  -6, 6, $01, $0
	dsprite   3, 2,  -5, 6, $01, $0 | OAM_XFLIP
	dsprite   4, 2,  -6, 6, $01, $0 | OAM_YFLIP
	dsprite   4, 2,  -5, 6, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_59:
	dsprite  -1, 4,  -2, 0, $00, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -1, 4,   1, 0, $00, $0 | OAM_XFLIP

.OAMData_5a:
	dsprite  -1, 4,  -2, 0, $02, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -1, 4,   1, 0, $02, $0 | OAM_XFLIP

.OAMData_60:
	dsprite  -1, 0,  -1, 4, $00, $0

.OAMData_69:
	dsprite   0, 0,  -1, 4, $00, $0

.OAMData_61:
	dsprite  -1, 4,  -4, 4, $00, $0
	dsprite  -1, 4,  -3, 4, $01, $0
	dsprite  -1, 4,  -2, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $03, $0
	dsprite  -1, 4,   0, 4, $04, $0
	dsprite  -1, 4,   1, 4, $05, $0
	dsprite  -1, 4,   2, 4, $06, $0
	dsprite  -2, 4,   1, 4, $07, $0
	dsprite  -2, 4,   2, 4, $08, $0

.OAMData_65:
	dsprite  -2, 4,  -4, 4, $08, $0 | OAM_XFLIP
	dsprite  -2, 4,  -3, 4, $07, $0 | OAM_XFLIP
	dsprite  -1, 4,  -4, 4, $06, $0 | OAM_XFLIP
	dsprite  -1, 4,  -3, 4, $05, $0 | OAM_XFLIP
	dsprite  -1, 4,  -2, 4, $04, $0 | OAM_XFLIP
	dsprite  -1, 4,  -1, 4, $03, $0 | OAM_XFLIP
	dsprite  -1, 4,   0, 4, $02, $0 | OAM_XFLIP
	dsprite  -1, 4,   1, 4, $01, $0 | OAM_XFLIP
	dsprite  -1, 4,   2, 4, $00, $0 | OAM_XFLIP

.OAMData_d4:
	dsprite   0, 0,  -4, 4, $00, $0
	dsprite   0, 0,  -3, 4, $01, $0
	dsprite   0, 0,  -2, 4, $02, $0
	dsprite   0, 0,  -1, 4, $03, $0
	dsprite   0, 0,   0, 4, $04, $0
	dsprite   0, 0,   1, 4, $05, $0
	dsprite   0, 0,   2, 4, $06, $0

.OAMData_d6:
	dsprite  -1, 0,  -4, 4, $00, $0
	dsprite   0, 0,  -4, 4, $01, $0
	dsprite  -1, 0,  -3, 4, $02, $0
	dsprite   0, 0,  -3, 4, $03, $0
	dsprite  -1, 0,  -2, 4, $04, $0
	dsprite   0, 0,  -2, 4, $05, $0
	dsprite  -1, 0,  -1, 4, $06, $0
	dsprite   0, 0,  -1, 4, $07, $0
	dsprite  -1, 0,   0, 4, $08, $0
	dsprite   0, 0,   0, 4, $09, $0
	dsprite  -1, 0,   1, 4, $0a, $0
	dsprite   0, 0,   1, 4, $0b, $0
	dsprite  -1, 0,   2, 4, $0c, $0
	dsprite   0, 0,   2, 4, $0d, $0

.OAMData_d5:
	dsprite   0, 0,  -3, 0, $00, $1
	dsprite   0, 0,  -2, 0, $01, $1
	dsprite   0, 0,  -1, 0, $02, $1
	dsprite   0, 0,   0, 0, $03, $1
	dsprite   0, 0,   1, 0, $04, $1
	dsprite   0, 0,   2, 0, $05, $1

.OAMData_d7:
	dsprite   0, 0,  -3, 0, $00, $1
	dsprite   1, 0,  -3, 0, $01, $1
	dsprite   0, 0,  -2, 0, $02, $1
	dsprite   1, 0,  -2, 0, $03, $1
	dsprite   0, 0,  -1, 0, $04, $1
	dsprite   1, 0,  -1, 0, $05, $1
	dsprite   0, 0,   0, 0, $06, $1
	dsprite   1, 0,   0, 0, $07, $1
	dsprite   0, 0,   1, 0, $08, $1
	dsprite   1, 0,   1, 0, $09, $1
	dsprite   0, 0,   2, 0, $0a, $1
	dsprite   1, 0,   2, 0, $0b, $1

.OAMData_6e:
	dsprite  -2, 4,   0, 4, $00, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $02, $0
	dsprite  -1, 4,   0, 4, $03, $0
	dsprite   0, 4,  -2, 4, $04, $0

.OAMData_6f:
	dsprite  -1, 4,  -2, 4, $00, $0
	dsprite  -1, 4,  -1, 4, $01, $0
	dsprite  -1, 4,   0, 4, $02, $0

.OAMData_77:
	dsprite  -4, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_78:
	dsprite  -4, 4,   1, 4, $00, $0
	dsprite  -4, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -3, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_79:
	dsprite  -4, 4,   1, 4, $01, $0
	dsprite  -4, 4,   0, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -3, 4,   1, 4, $00, $0
	dsprite  -3, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -2, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_7a:
	dsprite  -4, 4,  -2, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -4, 4,  -1, 4, $00, $0
	dsprite  -4, 4,   0, 4, $01, $0
	dsprite  -3, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -3, 4,   0, 4, $00, $0
	dsprite  -3, 4,   1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -2, 4,   1, 4, $00, $0
	dsprite  -1, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_7b:
	dsprite  -4, 4,  -3, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -4, 4,  -2, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $01, $0
	dsprite  -3, 4,  -2, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite  -3, 4,   0, 4, $01, $0
	dsprite  -2, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -2, 4,   0, 4, $00, $0
	dsprite  -2, 4,   1, 4, $01, $0
	dsprite  -1, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,   1, 4, $00, $0
	dsprite   0, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_7c:
	dsprite  -4, 4,  -3, 4, $00, $0
	dsprite  -4, 4,  -2, 4, $01, $0
	dsprite  -3, 4,  -3, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -3, 4,  -2, 4, $00, $0
	dsprite  -3, 4,  -1, 4, $01, $0
	dsprite  -2, 4,  -2, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -2, 4,  -1, 4, $00, $0
	dsprite  -2, 4,   0, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,   0, 4, $00, $0
	dsprite  -1, 4,   1, 4, $01, $0
	dsprite   0, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 4,   1, 4, $00, $0
	dsprite   1, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_7d:
	dsprite  -4, 4,  -3, 4, $01, $0
	dsprite  -3, 4,  -3, 4, $00, $0
	dsprite  -3, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -3, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -1, 4,  -2, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 4,   0, 4, $01, $0
	dsprite   0, 4,  -1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 4,   0, 4, $00, $0
	dsprite   0, 4,   1, 4, $01, $0
	dsprite   1, 4,   0, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 4,   1, 4, $00, $0
	dsprite   2, 4,   1, 4, $01, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_70:
	dsprite  -2, 0,  -1, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $00, $0 | OAM_XFLIP
	dsprite  -1, 0,   0, 0, $01, $0 | OAM_XFLIP
	dsprite   0, 0,  -1, 0, $01, $0 | OAM_YFLIP
	dsprite   1, 0,  -1, 0, $00, $0 | OAM_YFLIP
	dsprite   0, 0,   0, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_81:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_87:
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $03, $0
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $01, $0
	dsprite   0, 4,  -1, 0, $02, $0
	dsprite   0, 4,   0, 0, $03, $0
	dsprite  -3, 4,  -1, 0, $00, $0
	dsprite  -3, 4,   0, 0, $01, $0
	dsprite  -2, 4,  -1, 0, $02, $0
	dsprite  -2, 4,   0, 0, $03, $0
	dsprite   0, 4,  -1, 0, $00, $0
	dsprite   0, 4,   0, 0, $01, $0
	dsprite   1, 4,  -1, 0, $02, $0
	dsprite   1, 4,   0, 0, $03, $0

.OAMData_88:
	dsprite  -2, 0,  -1, 0, $00, $0
	dsprite  -2, 0,   0, 0, $01, $0
	dsprite  -1, 0,  -1, 0, $02, $0
	dsprite  -1, 0,   0, 0, $03, $0
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $02, $0
	dsprite   0, 0,   0, 0, $03, $0
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $01, $0
	dsprite   1, 0,  -1, 0, $02, $0
	dsprite   1, 0,   0, 0, $03, $0

.OAMData_8a:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 0,   0, 4, $00, $0
	dsprite  -2, 4,   1, 4, $00, $0
	dsprite  -2, 0,   2, 4, $00, $0
	dsprite  -3, 4,   3, 4, $00, $0
	dsprite  -3, 0,   4, 4, $00, $0
	dsprite  -4, 0,   5, 4, $00, $0
	dsprite  -5, 4,   6, 4, $00, $0

.OAMData_8e:
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $02, $0
	dsprite   0, 4,  -1, 4, $01, $0 | OAM_YFLIP
	dsprite   1, 4,  -1, 4, $00, $0 | OAM_YFLIP

.OAMData_8f:
	dsprite  -1, 4,  -2, 0, $00, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $02, $0
	dsprite  -1, 4,   1, 0, $03, $0

.OAMData_93:
	dsprite  -1, 0,  -2, 4, $00, $0
	dsprite  -1, 0,  -1, 4, $01, $0
	dsprite  -1, 0,   0, 4, $02, $0
	dsprite   0, 0,  -2, 4, $03, $0
	dsprite   0, 0,  -1, 4, $04, $0
	dsprite   0, 0,   0, 4, $05, $0

.OAMData_99:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $05, $0
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $05, $0

.OAMData_9b:
	dsprite  -4, 4,   1, 0, $00, $0
	dsprite  -4, 4,   2, 0, $01, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $03, $0
	dsprite  -3, 4,   1, 0, $04, $0
	dsprite  -3, 4,   2, 0, $05, $0
	dsprite  -3, 4,   3, 0, $06, $0
	dsprite  -2, 4,  -2, 0, $07, $0
	dsprite  -2, 4,  -1, 0, $08, $0
	dsprite  -2, 4,   0, 0, $09, $0
	dsprite  -2, 4,   1, 0, $0a, $0
	dsprite  -2, 4,   2, 0, $0b, $0
	dsprite  -2, 4,   3, 0, $0c, $0
	dsprite  -2, 4,   4, 0, $0d, $0
	dsprite  -1, 4,  -3, 0, $0e, $0
	dsprite  -1, 4,  -2, 0, $0f, $0
	dsprite  -1, 4,  -1, 0, $10, $0
	dsprite  -1, 4,   0, 0, $11, $0
	dsprite  -1, 4,   1, 0, $12, $0
	dsprite  -1, 4,   2, 0, $13, $0
	dsprite   0, 4,  -5, 0, $14, $0
	dsprite   0, 4,  -4, 0, $15, $0
	dsprite   0, 4,  -3, 0, $16, $0
	dsprite   0, 4,  -2, 0, $17, $0
	dsprite   0, 4,  -1, 0, $18, $0
	dsprite   0, 4,   0, 0, $19, $0
	dsprite   0, 4,   1, 0, $1a, $0
	dsprite   0, 4,   2, 0, $1b, $0
	dsprite   0, 4,   3, 0, $1c, $0
	dsprite   1, 4,  -5, 0, $1d, $0
	dsprite   1, 4,  -4, 0, $1e, $0
	dsprite   1, 4,  -2, 0, $1f, $0
	dsprite   1, 4,  -1, 0, $20, $0
	dsprite   1, 4,   0, 0, $21, $0
	dsprite   1, 4,   1, 0, $22, $0
	dsprite   2, 4,   0, 0, $23, $0

.OAMData_9c:
	dsprite   0, 4,  -1, 0, $02, $0
	dsprite   0, 4,   0, 0, $03, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, $0 | OAM_XFLIP
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $00, $0 | OAM_XFLIP

.OAMData_9f:
	dsprite  -1, 0,  -2, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $02, $0
	dsprite  -1, 0,   1, 0, $03, $0
	dsprite   0, 0,  -2, 0, $04, $0
	dsprite   0, 0,  -1, 0, $05, $0
	dsprite   0, 0,   0, 0, $06, $0
	dsprite   0, 0,   1, 0, $07, $0

.OAMData_a0:
	dsprite  -2, 4,  -1, 4, $00, $0
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 4,  -1, 4, $00, $0
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite   1, 4,  -1, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $00, $0
	dsprite   2, 4,  -1, 4, $00, $0

.OAMData_a4:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $05, $0
	dsprite   0, 4,  -2, 4, $00, $0 | OAM_YFLIP
	dsprite   0, 4,  -1, 4, $01, $0 | OAM_YFLIP
	dsprite   0, 4,   0, 4, $02, $0 | OAM_YFLIP

.OAMData_bc:
	dsprite  -1, 4,  -3, 0, $00, $0
	dsprite  -1, 4,  -2, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $02, $0 | OAM_XFLIP
	dsprite  -1, 4,   1, 0, $01, $0 | OAM_XFLIP
	dsprite  -1, 4,   2, 0, $00, $0 | OAM_XFLIP

.OAMData_c1:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $02, $0
	dsprite  -2, 0,   1, 0, $00, $0 | OAM_XFLIP
	dsprite  -1, 0,  -2, 0, $03, $0
	dsprite  -1, 0,  -1, 0, $04, $0
	dsprite  -1, 0,   0, 0, $04, $0 | OAM_XFLIP
	dsprite  -1, 0,   1, 0, $05, $0
	dsprite   0, 0,  -2, 0, $05, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,  -1, 0, $04, $0 | OAM_YFLIP
	dsprite   0, 0,   0, 0, $04, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,   1, 0, $03, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,  -2, 0, $00, $0 | OAM_YFLIP
	dsprite   1, 0,  -1, 0, $02, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   0, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_c2:
	dsprite  -1, 0,  -2, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $01, $0
	dsprite   0, 0,   1, 0, $00, $0 | OAM_XFLIP | OAM_YFLIP

.OAMData_c8:
	dsprite  -1, 0,   1, 4, $00, $0
	dsprite  -1, 0,   2, 4, $01, $0
	dsprite   0, 0,  -1, 4, $02, $0
	dsprite   0, 0,   0, 4, $03, $0
	dsprite   0, 0,   1, 4, $04, $0
	dsprite   0, 0,   2, 4, $05, $0

.OAMData_ca:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0 | OAM_XFLIP | OAM_YFLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $01, $0 | OAM_XFLIP

.OAMData_cc:
	dsprite  -2, 0, -13, 4, $00, $0
	dsprite  -4, 0, -11, 4, $00, $0
	dsprite  -1, 0,  -9, 4, $00, $0
	dsprite  -5, 0,  -7, 4, $00, $0
	dsprite  -3, 0,  -5, 4, $00, $0
	dsprite  -5, 0,  -3, 4, $00, $0
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -3, 0,   0, 4, $00, $0
	dsprite  -5, 0,   2, 4, $00, $0
	dsprite   0, 0,   4, 4, $00, $0
	dsprite  -2, 0,   6, 4, $00, $0
	dsprite  -4, 0,   8, 4, $00, $0
	dsprite  -2, 0,  10, 4, $00, $0

.OAMData_d8:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $02, $0
	dbsprite   1,  -2, 0, 0, $03, $0
	dbsprite  -2,  -1, 0, 0, $04, $0
	dbsprite  -1,  -1, 0, 0, $05, $0
	dbsprite   0,  -1, 0, 0, $06, $0
	dbsprite   1,  -1, 0, 0, $07, $0
	dbsprite  -2,   0, 0, 0, $07, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,   0, 0, 0, $06, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 0, 0, $05, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   0, 0, 0, $04, OAM_XFLIP | OAM_YFLIP
	dbsprite  -2,   1, 0, 0, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,   1, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_dd:
	dbsprite  -2,  -4, 0, 7, $01, $0
	dbsprite  -1,  -4, 0, 7, $02, $0
	dbsprite  -3,  -3, 0, 7, $03, $0
	dbsprite  -2,  -3, 0, 7, $04, $0
	dbsprite  -1,  -3, 0, 7, $05, $0
	dbsprite  -3,  -2, 0, 7, $06, $0
	dbsprite  -2,  -2, 0, 7, $07, $0
	dbsprite   1,  -4, 0, 7, $01, OAM_XFLIP
	dbsprite   0,  -4, 0, 7, $02, OAM_XFLIP
	dbsprite   2,  -3, 0, 7, $03, OAM_XFLIP
	dbsprite   1,  -3, 0, 7, $04, OAM_XFLIP
	dbsprite   0,  -3, 0, 7, $05, OAM_XFLIP
	dbsprite   2,  -2, 0, 7, $06, OAM_XFLIP
	dbsprite   1,  -2, 0, 7, $07, OAM_XFLIP
	dbsprite  -2,   1, 0, 7, $01, OAM_YFLIP
	dbsprite  -1,   1, 0, 7, $02, OAM_YFLIP
	dbsprite  -3,   0, 0, 7, $03, OAM_YFLIP
	dbsprite  -2,   0, 0, 7, $04, OAM_YFLIP
	dbsprite  -1,   0, 0, 7, $05, OAM_YFLIP
	dbsprite  -3,  -1, 0, 7, $06, OAM_YFLIP
	dbsprite  -2,  -1, 0, 7, $07, OAM_YFLIP
	dbsprite   1,   1, 0, 7, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   1, 0, 7, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,   0, 0, 7, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   0, 0, 7, $04, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 0, 7, $05, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 7, $06, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 7, $07, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,  -1, 0, 7, $08, OAM_XFLIP | OAM_YFLIP

.OAMData_de:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, OAM_XFLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite   0,  -1, 4, 4, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite  -2,   0, 4, 4, $00, OAM_YFLIP
	dbsprite  -1,   0, 4, 4, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 4, 4, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_df:
	dbsprite  -3,  -4, 0, 7, $00, $0
	dbsprite  -2,  -4, 0, 7, $01, $0
	dbsprite  -1,  -4, 0, 7, $02, $0
	dbsprite  -3,  -3, 0, 7, $03, $0
	dbsprite  -2,  -3, 0, 7, $04, $0
	dbsprite  -3,  -2, 0, 7, $06, $0
	dbsprite   2,  -4, 0, 7, $00, OAM_XFLIP
	dbsprite   1,  -4, 0, 7, $01, OAM_XFLIP
	dbsprite   0,  -4, 0, 7, $02, OAM_XFLIP
	dbsprite   2,  -3, 0, 7, $03, OAM_XFLIP
	dbsprite   1,  -3, 0, 7, $04, OAM_XFLIP
	dbsprite   2,  -2, 0, 7, $06, OAM_XFLIP
	dbsprite  -3,   1, 0, 7, $00, OAM_YFLIP
	dbsprite  -2,   1, 0, 7, $01, OAM_YFLIP
	dbsprite  -1,   1, 0, 7, $02, OAM_YFLIP
	dbsprite  -3,   0, 0, 7, $03, OAM_YFLIP
	dbsprite  -2,   0, 0, 7, $04, OAM_YFLIP
	dbsprite  -3,  -1, 0, 7, $06, OAM_YFLIP
	dbsprite   2,   1, 0, 7, $00, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   1, 0, 7, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   1, 0, 7, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,   0, 0, 7, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   0, 0, 7, $04, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 7, $06, OAM_XFLIP | OAM_YFLIP

.OAMData_e0:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite   0,   0, 2, 2, $00, $0

.OAMData_e2:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 0, $00, $0
	dbsprite   0, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -1,  0, -1, 0, $00, OAM_YFLIP
	dbsprite   0,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e3:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 0, $00, $0
	dbsprite  -1, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -2,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -1,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e4:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 0, $00, $0
	dbsprite  -2, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -3,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -2,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e5:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 0, $00, $0
	dbsprite  -3, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -4,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -3,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e6:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 0, $00, $0
	dbsprite  -4, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -5,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -4,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e7:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 4, $04, $0
	dbsprite  -6, -1, -1, 0, $00, $0
	dbsprite  -5, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -6,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -5,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_e8:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 4, $04, $0
	dbsprite  -6, -1, -1, 4, $04, $0
	dbsprite  -7, -1, -1, 0, $00, $0
	dbsprite  -6, -1, -1, 0, $00, OAM_XFLIP
	dbsprite  -7,  0, -1, 0, $00, OAM_YFLIP
	dbsprite  -6,  0, -1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_ec:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, OAM_XFLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $03, $0
	dbsprite   0,  -1, 4, 4, $02, OAM_XFLIP
	dbsprite  -2,   0, 4, 4, $04, $0
	dbsprite  -1,   0, 4, 4, $05, $0
	dbsprite   0,   0, 4, 4, $04, OAM_XFLIP

.OAMData_ed:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $02, $0
	dbsprite  -2,  -1, 4, 4, $03, $0
	dbsprite  -1,  -1, 4, 4, $04, $0
	dbsprite   0,  -1, 4, 4, $05, $0
	dbsprite  -2,   0, 4, 4, $00, OAM_YFLIP
	dbsprite  -1,   0, 4, 4, $01, OAM_YFLIP
	dbsprite   0,   0, 4, 4, $02, OAM_YFLIP

.OAMData_ef:
	dbsprite   0,  -2, 4, 4, $00, $0
	dbsprite   1,  -2, 4, 4, $01, $0
	dbsprite   2,  -2, 4, 4, $02, $0
	dbsprite   0,  -1, 4, 4, $03, $0
	dbsprite   1,  -1, 4, 4, $04, $0
	dbsprite   2,  -1, 4, 4, $05, $0
	dbsprite   0,   0, 4, 4, $06, $0
	dbsprite   1,   0, 4, 4, $07, $0
	dbsprite   2,   0, 4, 4, $08, $0
	dbsprite  -3,  -2, 4, 4, $00, OAM_XFLIP
	dbsprite  -4,  -2, 4, 4, $01, OAM_XFLIP
	dbsprite  -5,  -2, 4, 4, $02, OAM_XFLIP
	dbsprite  -3,  -1, 4, 4, $03, OAM_XFLIP
	dbsprite  -4,  -1, 4, 4, $04, OAM_XFLIP
	dbsprite  -5,  -1, 4, 4, $05, OAM_XFLIP
	dbsprite  -3,   0, 4, 4, $06, OAM_XFLIP
	dbsprite  -4,   0, 4, 4, $07, OAM_XFLIP
	dbsprite  -5,   0, 4, 4, $08, OAM_XFLIP

.OAMData_f1:
	dbsprite  -2,  -3, 0, 7, $00, $0
	dbsprite  -1,  -3, 0, 7, $01, $0
	dbsprite  -3,  -2, 0, 7, $02, $0
	dbsprite  -2,  -2, 0, 7, $03, $0
	dbsprite  -1,  -2, 0, 7, $04, $0
	dbsprite   1,  -3, 0, 7, $00, OAM_XFLIP
	dbsprite   0,  -3, 0, 7, $01, OAM_XFLIP
	dbsprite   2,  -2, 0, 7, $02, OAM_XFLIP
	dbsprite   1,  -2, 0, 7, $03, OAM_XFLIP
	dbsprite   0,  -2, 0, 7, $04, OAM_XFLIP
	dbsprite  -2,   0, 0, 7, $00, OAM_YFLIP
	dbsprite  -1,   0, 0, 7, $01, OAM_YFLIP
	dbsprite  -3,  -1, 0, 7, $02, OAM_YFLIP
	dbsprite  -2,  -1, 0, 7, $03, OAM_YFLIP
	dbsprite  -1,  -1, 0, 7, $04, OAM_YFLIP
	dbsprite   1,   0, 0, 7, $00, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 0, 7, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 7, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 7, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,  -1, 0, 7, $04, OAM_XFLIP | OAM_YFLIP

.OAMData_f2:
	dbsprite  -2,  -3, 0, 7, $00, $0
	dbsprite  -1,  -3, 0, 7, $01, $0
	dbsprite  -2,  -2, 0, 7, $02, $0
	dbsprite  -1,  -2, 0, 7, $03, $0
	dbsprite   1,  -3, 0, 7, $00, OAM_XFLIP
	dbsprite   0,  -3, 0, 7, $01, OAM_XFLIP
	dbsprite   1,  -2, 0, 7, $02, OAM_XFLIP
	dbsprite   0,  -2, 0, 7, $03, OAM_XFLIP
	dbsprite  -2,   0, 0, 7, $00, OAM_YFLIP
	dbsprite  -1,   0, 0, 7, $01, OAM_YFLIP
	dbsprite  -2,  -1, 0, 7, $02, OAM_YFLIP
	dbsprite  -1,  -1, 0, 7, $03, OAM_YFLIP
	dbsprite   1,   0, 0, 7, $00, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 0, 7, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 7, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,  -1, 0, 7, $03, OAM_XFLIP | OAM_YFLIP

.OAMData_f3:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $03, $0
	dsprite  -2, 4,   0, 4, $06, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $07, $0
	dsprite   0, 4,  -2, 4, $02, $0
	dsprite   0, 4,  -1, 4, $05, $0
	dsprite   0, 4,   0, 4, $08, $0

.OAMData_BigWhip3:
	dbsprite  -2,   0, 0, 0, $00, $0
	dbsprite   1,   0, 0, 0, $01, $0
	dbsprite  -2,   1, 0, 0, $02, $0
	dbsprite  -1,   1, 0, 0, $03, $0
	dbsprite   0,   1, 0, 0, $04, $0
	dbsprite   1,   1, 0, 0, $05, $0

.OAMData_BigWhip1:
	dbsprite   1,  -1, 0, 0, $00, $0
	dbsprite   0,   0, 0, 0, $01, $0
	dbsprite   1,   0, 0, 0, $02, $0
	dbsprite  -1,   1, 0, 0, $03, $0
	dbsprite   0,   1, 0, 0, $04, $0
	dbsprite   1,   1, 0, 0, $05, $0

.OAMData_ClawTear:
	dbsprite  -2,  -2, -1, 1, $00, $0
	dbsprite  -1,  -2, -1, 1, $01, $0
	dbsprite   0,  -2, -1, 1, $02, $0
	dbsprite  -2,  -1, -1, 1, $03, $0
	dbsprite  -1,  -1, -1, 1, $04, $0
	dbsprite   0,  -1, -1, 1, $05, $0
	dbsprite  -2,   0, -1, 1, $06, $0
	dbsprite  -1,   0, -1, 1, $07, $0
	dbsprite   0,   0, -1, 1, $08, $0
	dbsprite  -3,  -1, -1, 1, $00, $0
	dbsprite  -3,   0, -3, 3, $05, OAM_XFLIP | OAM_YFLIP
	dbsprite  -3,   1, -3, 3, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite  -2,   1, -3, 3, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -3,   0, -1, 1, $03, $0
	dbsprite  -2,   0, -3, 3, $06, $0
	dbsprite  -2,   1, -1, 1, $07, $0
	dbsprite  -1,   1, -1, 1, $08, $0

.OAMData_f7:
	dbsprite  -2,  -1, 0, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $01, $0
	dbsprite   0,  -1, 0, 0, $01, OAM_XFLIP
	dbsprite   1,  -1, 0, 0, $00, OAM_XFLIP
	dbsprite  -2,   0, 0, 0, $02, $0
	dbsprite  -1,   0, 0, 0, $03, $0
	dbsprite   0,   0, 0, 0, $03, OAM_XFLIP
	dbsprite   1,   0, 0, 0, $02, OAM_XFLIP
	dbsprite  -2,   1, 0, 0, $04, $0
	dbsprite  -1,   1, 0, 0, $05, $0
	dbsprite   0,   1, 0, 0, $05, OAM_XFLIP
	dbsprite   1,   1, 0, 0, $04, OAM_XFLIP

.OAMData_f8:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite   0,  -1, 0, 0, $03, OAM_XFLIP
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP
	dbsprite  -2,   0, 0, 0, $04, $0
	dbsprite  -1,   0, 0, 0, $05, $0
	dbsprite   0,   0, 0, 0, $05, OAM_XFLIP
	dbsprite   1,   0, 0, 0, $04, OAM_XFLIP
	dbsprite  -2,   1, 0, 0, $06, $0
	dbsprite  -1,   1, 0, 0, $07, $0
	dbsprite   0,   1, 0, 0, $07, OAM_XFLIP
	dbsprite   1,   1, 0, 0, $06, OAM_XFLIP

.OAMData_fb:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite   0,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP
	dbsprite  -2,   0, 0, 0, $02, OAM_YFLIP
	dbsprite  -2,   1, 0, 0, $00, OAM_YFLIP
	dbsprite  -1,   1, 0, 0, $01, OAM_YFLIP
	dbsprite   1,   0, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,   1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_StoneEdge:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite   0, 0,  -1, 0, $01, $0

.OAMData_HyperVoice:
	dsprite  -3, 0,   0, 0, $00, $0
	dsprite  -2, 0,   0, 0, $01, $0
	dsprite  -1, 0,   0, 0, $06, $0
	dsprite  -3, 0,   1, 0, $00, OAM_XFLIP
	dsprite  -2, 0,   1, 0, $01, OAM_XFLIP
	dsprite  -1, 0,   1, 0, $06, OAM_XFLIP
	dsprite   0, 0,   0, 0, $01, OAM_YFLIP
	dsprite   1, 0,   0, 0, $00, OAM_YFLIP
	dsprite   0, 0,   1, 0, $01, OAM_XFLIP | OAM_YFLIP
	dsprite   1, 0,   1, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_BugBuzz1:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $03, $0

.OAMData_BugBuzz2:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite   0, 4,  -2, 4, $06, $0

.OAMData_SwirlShort:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $02, $0
	dbsprite  -2,  -1, 4, 4, $03, $0
	dbsprite  -1,  -1, 4, 4, $04, $0
	dbsprite   0,  -1, 4, 4, $05, $0
	dbsprite  -2,   0, 4, 4, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,   0, 4, 4, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   0,   0, 4, 4, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_Mushroom1:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, OAM_XFLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $03, $0
	dbsprite   0,  -1, 4, 4, $02, OAM_XFLIP
	dbsprite  -2,   0, 4, 4, $04, $0
	dbsprite  -1,   0, 4, 4, $05, $0
	dbsprite   0,   0, 4, 4, $04, OAM_XFLIP

.OAMData_Stats:
	dsprite  -1, 0,  -3, 0, $00, $0
	dsprite  -1, 0,  -2, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, $0
	dsprite  -1, 0,   1, 0, $00, $0
	dsprite  -1, 0,   2, 0, $00, $0
	dsprite  -1, 0,   3, 0, $00, $0
	dsprite  -1, 0,   4, 0, $00, $0
	dsprite   0, 0,  -3, 0, $01, $0
	dsprite   0, 0,  -2, 0, $01, $0
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $01, $0
	dsprite   0, 0,   1, 0, $01, $0
	dsprite   0, 0,   2, 0, $01, $0
	dsprite   0, 0,   3, 0, $01, $0
	dsprite   0, 0,   4, 0, $01, $0

.OAMData_IcicleCrash:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $02, $0
	dsprite   0, 0,   0, 0, $03, $0
	dsprite   1, 0,  -1, 0, $04, $0
	dsprite   1, 0,   0, 0, $05, $0

.OAMData_BigWhip2:
	dbsprite   0,  -2, 0, 0, $00, $0
	dbsprite   1,  -2, 0, 0, $01, $0
	dbsprite   1,  -1, 0, 0, $02, $0
	dbsprite   1,   0, 0, 0, $03, $0
	dbsprite   0,   1, 0, 0, $04, $0
	dbsprite   1,   1, 0, 0, $05, $0

.OAMData_VoltSwitch1:
	dbsprite  -4,  -2, 0, 0, $00, $0
	dbsprite  -3,  -2, 0, 0, $01, $0
	dbsprite  -2,  -2, 0, 0, $02, $0
	dbsprite  -1,  -2, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $04, $0
	dbsprite   1,  -2, 0, 0, $05, $0
	dbsprite   2,  -2, 0, 0, $06, $0
	dbsprite   3,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -4,  -1, 0, 0, $00, OAM_YFLIP
	dbsprite  -3,  -1, 0, 0, $01, OAM_YFLIP
	dbsprite  -2,  -1, 0, 0, $02, OAM_YFLIP
	dbsprite  -1,  -1, 0, 0, $03, OAM_YFLIP
	dbsprite   0,  -1, 0, 0, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   3,  -1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_VoltSwitch2:
	dbsprite  -4,  -2, 0, 0, $00, $0
	dbsprite  -3,  -2, 0, 0, $01, $0
	dbsprite  -2,  -2, 0, 0, $02, $0
	dbsprite  -1,  -2, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $03, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $02, OAM_XFLIP
	dbsprite   2,  -2, 0, 0, $07, $0
	dbsprite   3,  -2, 0, 0, $08, $0
	dbsprite  -4,  -1, 0, 0, $00, OAM_YFLIP
	dbsprite  -3,  -1, 0, 0, $01, OAM_YFLIP
	dbsprite  -2,  -1, 0, 0, $02, OAM_YFLIP
	dbsprite  -1,  -1, 0, 0, $03, OAM_YFLIP
	dbsprite   0,  -1, 0, 0, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 0, $09, $0
	dbsprite   2,  -1, 0, 0, $0a, $0
	dbsprite   3,  -1, 0, 0, $0b, $0

.OAMData_VoltSwitch3:
	dbsprite  -4,  -2, 0, 0, $00, $0
	dbsprite  -3,  -2, 0, 0, $01, $0
	dbsprite  -2,  -2, 0, 0, $02, $0
	dbsprite  -1,  -2, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $03, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $02, OAM_XFLIP
	dbsprite   2,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   3,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -4,  -1, 0, 0, $00, OAM_YFLIP
	dbsprite  -3,  -1, 0, 0, $01, OAM_YFLIP
	dbsprite  -2,  -1, 0, 0, $02, OAM_YFLIP
	dbsprite  -1,  -1, 0, 0, $03, OAM_YFLIP
	dbsprite   0,  -1, 0, 0, $0c, $0
	dbsprite   1,  -1, 0, 0, $0d, $0
	dbsprite   2,  -1, 0, 0, $0e, $0
	dbsprite   3,  -1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_VoltSwitch4:
	dbsprite  -4,  -2, 0, 0, $00, $0
	dbsprite  -3,  -2, 0, 0, $01, $0
	dbsprite  -2,  -2, 0, 0, $02, $0
	dbsprite  -1,  -2, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $03, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $02, OAM_XFLIP
	dbsprite   2,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   3,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -4,  -1, 0, 0, $00, OAM_YFLIP
	dbsprite  -3,  -1, 0, 0, $0f, $0
	dbsprite  -2,  -1, 0, 0, $10, $0
	dbsprite  -1,  -1, 0, 0, $11, $0
	dbsprite   0,  -1, 0, 0, $12, $0
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   3,  -1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_VoltSwitch5:
	dbsprite  -4,  -2, 0, 0, $13, $0
	dbsprite  -3,  -2, 0, 0, $14, $0
	dbsprite  -2,  -2, 0, 0, $02, $0
	dbsprite  -1,  -2, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $03, OAM_XFLIP
	dbsprite   1,  -2, 0, 0, $02, OAM_XFLIP
	dbsprite   2,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   3,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -4,  -1, 0, 0, $15, $0
	dbsprite  -3,  -1, 0, 0, $16, $0
	dbsprite  -2,  -1, 0, 0, $17, $0
	dbsprite  -1,  -1, 0, 0, $03, OAM_YFLIP
	dbsprite   0,  -1, 0, 0, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   3,  -1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_VoltSwitch6:
	dbsprite  -4,  -2, 0, 0, $00, $0
	dbsprite  -3,  -2, 0, 0, $18, $0
	dbsprite  -2,  -2, 0, 0, $19, $0
	dbsprite  -1,  -2, 0, 0, $1a, $0
	dbsprite   0,  -2, 0, 0, $1b, $0
	dbsprite   1,  -2, 0, 0, $02, OAM_XFLIP
	dbsprite   2,  -2, 0, 0, $01, OAM_XFLIP
	dbsprite   3,  -2, 0, 0, $00, OAM_XFLIP
	dbsprite  -4,  -1, 0, 0, $00, OAM_YFLIP
	dbsprite  -3,  -1, 0, 0, $01, OAM_YFLIP
	dbsprite  -2,  -1, 0, 0, $02, OAM_YFLIP
	dbsprite  -1,  -1, 0, 0, $03, OAM_YFLIP
	dbsprite   0,  -1, 0, 0, $03, OAM_XFLIP | OAM_YFLIP
	dbsprite   1,  -1, 0, 0, $02, OAM_XFLIP | OAM_YFLIP
	dbsprite   2,  -1, 0, 0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite   3,  -1, 0, 0, $00, OAM_XFLIP | OAM_YFLIP

.OAMData_85:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $02, $0
	dbsprite   1,  -2, 0, 0, $03, $0
	dbsprite  -2,  -1, 0, 0, $04, $0
	dbsprite  -1,  -1, 0, 0, $05, $0
	dbsprite   0,  -1, 0, 0, $06, $0
	dbsprite   1,  -1, 0, 0, $07, $0
	dbsprite  -1,   0, 0, 0, $08, $0
	dbsprite   0,   0, 0, 0, $09, $0
	dbsprite   1,   0, 0, 0, $0a, $0
	dbsprite  -1,   1, 0, 0, $0b, $0
	dbsprite   0,   1, 0, 0, $0c, $0
	dbsprite   1,   1, 0, 0, $0d, $0

.OAMData_95:
	dbsprite   0,  -2, 0, 0, $00, $0
	dbsprite  -2,  -1, 0, 0, $01, $0
	dbsprite  -1,  -1, 0, 0, $02, $0
	dbsprite   0,  -1, 0, 0, $03, $0
	dbsprite   1,  -1, 0, 0, $04, $0
	dbsprite  -2,   0, 0, 0, $05, $0
	dbsprite  -1,   0, 0, 0, $06, $0
	dbsprite   0,   0, 0, 0, $07, $0
	dbsprite   1,   0, 0, 0, $08, $0
	dbsprite  -2,   1, 0, 0, $09, $0
	dbsprite  -1,   1, 0, 0, $0a, $0
	dbsprite   0,   1, 0, 0, $0b, $0
	dbsprite   1,   1, 0, 0, $0c, $0

.OAMData_b9:
	dbsprite  -1,  -2, 0, 0, $00, $0
	dbsprite   0,  -2, 0, 0, $01, $0
	dbsprite   1,  -2, 0, 0, $02, $0
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite   0,  -1, 0, 0, $04, $0
	dbsprite   1,  -1, 0, 0, $05, $0
	dbsprite  -2,   0, 0, 0, $06, $0
	dbsprite  -1,   0, 0, 0, $07, $0
	dbsprite   0,   0, 0, 0, $08, $0
	dbsprite   1,   0, 0, 0, $09, $0
	dbsprite  -2,   1, 0, 0, $0a, $0
	dbsprite  -1,   1, 0, 0, $0b, $0
	dbsprite   0,   1, 0, 0, $0c, $0
	dbsprite   1,   1, 0, 0, $0d, $0

.OAMData_bd:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite   0,  -1, 0, 0, $04, $0
	dbsprite   1,  -1, 0, 0, $05, $0
	dbsprite  -2,   0, 0, 0, $06, $0
	dbsprite  -1,   0, 0, 0, $07, $0
	dbsprite   0,   0, 0, 0, $08, $0
	dbsprite   1,   0, 0, 0, $09, $0
	dbsprite  -2,   1, 0, 0, $0a, $0
	dbsprite  -1,   1, 0, 0, $0b, $0
	dbsprite   0,   1, 0, 0, $0c, $0
	dbsprite   1,   1, 0, 0, $0d, $0

.OAMData_HoneClaws1:
	dbsprite   0,   0,  1,  1, $00, $0
	dbsprite  -1,   0,  1,  1, $01, $0
	dbsprite   0,   0,  1,  1, $01, OAM_XFLIP
	dbsprite  -1,   0,  1,  1, $01, OAM_YFLIP
	dbsprite  -1,   0,  1,  1, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,  -1,  4,  4, $00, $0
	dbsprite  -2,  -1,  4,  4, $01, $0
	dbsprite  -1,  -1,  4,  4, $01, OAM_XFLIP
	dbsprite  -2,   0,  4,  4, $01, OAM_YFLIP
	dbsprite  -1,   0,  4,  4, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,  -1, -1, -1, $00, $0
	dbsprite  -2,  -1, -1, -1, $01, $0
	dbsprite  -1,  -1, -1, -1, $01, OAM_XFLIP
	dbsprite  -2,   0, -1, -1, $01, OAM_YFLIP
	dbsprite  -1,   0, -1, -1, $01, OAM_XFLIP | OAM_YFLIP

.OAMData_HoneClaws2:
	dbsprite   0,   0,  1,  1, $00, $0
	dbsprite  -1,   0,  3,  7, $00, $0
	dbsprite  -2,   0,  3,  7, $01, $0
	dbsprite  -1,   0,  3,  7, $01, OAM_XFLIP
	dbsprite  -2,   1,  3,  7, $01, OAM_YFLIP
	dbsprite  -1,   1,  3,  7, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,  -1,  4,  4, $00, $0
	dbsprite  -2,   0,  6,  2, $00, $0
	dbsprite  -3,   0,  6,  2, $01, $0
	dbsprite  -2,   0,  6,  2, $01, OAM_XFLIP
	dbsprite  -3,   1,  6,  2, $01, OAM_YFLIP
	dbsprite  -2,   1,  6,  2, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -1,  -1, -1, -1, $00, $0
	dbsprite  -2,   0,  1, -3, $00, $0
	dbsprite  -3,   0,  1, -3, $01, $0
	dbsprite  -2,   0,  1, -3, $01, OAM_XFLIP
	dbsprite  -3,   1,  1, -3, $01, OAM_YFLIP
	dbsprite  -2,   1,  1, -3, $01, OAM_XFLIP | OAM_YFLIP

.OAMData_HoneClaws3:
	dbsprite   0,   0,  1,  1, $00, $0
	dbsprite  -1,   0,  3,  7, $00, $0
	dbsprite  -2,   1,  5,  5, $00, $0
	dbsprite  -1,  -1,  4,  4, $00, $0
	dbsprite  -2,   0,  6,  2, $00, $0
	dbsprite  -2,   1,  0,  0, $00, $0
	dbsprite  -1,  -1, -1, -1, $00, $0
	dbsprite  -2,   0,  1, -3, $00, $0
	dbsprite  -2,   1, -5, -5, $00, $0
	dbsprite  -3,   1,  5,  5, $01, $0
	dbsprite  -2,   1,  5,  5, $01, OAM_XFLIP
	dbsprite  -3,   2,  5,  5, $01, OAM_YFLIP
	dbsprite  -2,   2,  5,  5, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -3,   1,  0,  0, $01, $0
	dbsprite  -2,   1,  0,  0, $01, OAM_XFLIP
	dbsprite  -3,   2,  0,  0, $01, OAM_YFLIP
	dbsprite  -2,   2,  0,  0, $01, OAM_XFLIP | OAM_YFLIP
	dbsprite  -3,   1, -5, -5, $01, $0
	dbsprite  -2,   1, -5, -5, $01, OAM_XFLIP
	dbsprite  -3,   2, -5, -5, $01, OAM_YFLIP
	dbsprite  -2,   2, -5, -5, $01, OAM_XFLIP | OAM_YFLIP

.OAMData_Hurricane:
	dbsprite  -2,  -4, 4, 0, $00, $0
	dbsprite  -1,  -4, 4, 0, $01, $0
	dbsprite   0,  -4, 4, 0, $02, $0
	dbsprite  -2,  -3, 4, 0, $03, $0
	dbsprite  -1,  -3, 4, 0, $04, $0
	dbsprite   0,  -3, 4, 0, $05, $0
	dbsprite  -2,  -2, 4, 0, $06, $0
	dbsprite  -1,  -2, 4, 0, $07, $0
	dbsprite   0,  -2, 4, 0, $08, $0
	dbsprite  -2,  -1, 4, 0, $09, $0
	dbsprite  -1,  -1, 4, 0, $0a, $0
	dbsprite   0,  -1, 4, 0, $0b, $0
	dbsprite  -2,   0, 4, 0, $0c, $0
	dbsprite  -1,   0, 4, 0, $0d, $0
	dbsprite   0,   0, 4, 0, $0e, $0
	dbsprite  -2,   1, 4, 0, $0f, $0
	dbsprite  -1,   1, 4, 0, $10, $0
	dbsprite   0,   1, 4, 0, $11, $0
