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
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, ELMS_LAB,                  %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       %1111, BillPhoneScript1,    %0000, BillPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_ELM,      ELMS_LAB,                  %1111, ElmPhoneScript1,     %0000, ElmPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_LYRA,     LYRAS_HOUSE_1F,            %1111, LyraPhoneScript,     %0000, LyraPhoneScript2
	phone TRAINER_NONE, PHONE_00,              N_A,                       %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	phone JUGGLER,      IRWIN1,                ROUTE_35,                  %1111, IrwinPhoneScript1,   %1111, IrwinPhoneScript2
	phone BUG_CATCHER,  ARNIE1,                ROUTE_35,                  %1111, ArniePhoneScript1,   %1111, ArniePhoneScript2
	phone SCHOOLBOY,    ALAN1,                 ROUTE_36,                  %1111, AlanPhoneScript1,    %1111, AlanPhoneScript2
	phone TRAINER_NONE, PHONE_00,              N_A,                       %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	assert_table_length NUM_PHONE_CONTACTS + 1
