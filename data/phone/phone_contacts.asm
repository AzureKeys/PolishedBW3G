MACRO phone
	db  \1, \2 ; trainer
	map_id \3 ; map
	db  \4
	dba \5 ; script 1
	db  \6
	dba \7 ; script 2
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	table_width PHONE_CONTACT_SIZE
	phone TRAINER_NONE, PHONE_00,              N_A,                       %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      PLAYERS_HOUSE_1F,          %1111, MomPhoneScript,      %0000, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       %1111, BillPhoneScript1,    %0000, BillPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_CHEREN,   N_A,                       %1111, CherenPhoneScript1,  %0000, CherenPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_BIANCA,   N_A,                       %1111, BiancaPhoneScript1,  %0000, BiancaPhoneScript2
	assert_table_length NUM_PHONE_CONTACTS + 1
