MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_BIANCA_INTRO
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_BIANCA_CASTELIA
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_BIANCA_VIRBANK
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_BIANCA_P2
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_BIANCA_MEMBERS_CARD
	specialcall SpecialCallWhereverYouAre,  PHONE_CHEREN, CherenPhoneScript2 ; SPECIALCALL_CHEREN_NIMBASA
	specialcall SpecialCallOnlyWhenOutside, PHONE_CHEREN, CherenPhoneScript2 ; SPECIALCALL_CHEREN_MISTRALTON
	specialcall SpecialCallOnlyWhenOutside, PHONE_MOM,    MomPhoneScript2    ; SPECIALCALL_MOM_LECTURE
	specialcall SpecialCallOnlyWhenOutside, PHONE_BIANCA, BiancaPhoneScript2 ; SPECIALCALL_POKERUS
	assert_table_length NUM_SPECIALCALLS
