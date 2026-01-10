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
	phone TRAINER_NONE, PHONE_00,                  N_A,                %0000, UnusedPhoneScript,   %0000, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,          PLAYERS_HOUSE_1F,   %1111, MomPhoneScript1,     %0000, MomPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_BILL,         N_A,                %1111, UnusedPhoneScript,   %0000, BillPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_CHEREN,       N_A,                %1111, CherenPhoneScript1,  %0000, CherenPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_BIANCA,       N_A,                %1111, BiancaPhoneScript1,  %0000, BiancaPhoneScript2
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone CYCLISTM,     CYCLISTM_LENTIMAS,         LENTIMAS_OUTSKIRT,  %1111, FreddyPhoneScript,   %0000, UnusedPhoneScript
	phone DANCER,       DANCER_R5_1,               ROUTE_5,            %1111, EricPhoneScript,     %0000, UnusedPhoneScript
	; phone LADY,         LADY_R4,                   ROUTE_4,            %1111, LaceyPhoneScript,    %0000, UnusedPhoneScript
	; phone MAID,         MAID_R19,                  ROUTE_19,           %1111, SophiePhoneScript,   %0000, UnusedPhoneScript
	; phone PKMN_RANGERF, PKMN_RANGERF_R3,           ROUTE_3,            %1111, ArianaPhoneScript,   %0000, UnusedPhoneScript
	; phone LASS_D,       LASS_R2,                   ROUTE_2,            %1111, CarlaPhoneScript,    %0000, UnusedPhoneScript
	; phone MAID,         MAID_R1,                   ROUTE_1,            %1111, ClarissaPhoneScript, %0000, UnusedPhoneScript
	; phone BACKPACKERF,  BACKPACKERF_R18,           ROUTE_18,           %1111, JennyPhoneScript,    %0000, UnusedPhoneScript
	; phone SCIENTISTM,   SCIENTISTM_R6,             ROUTE_6,            %1111, MarcoPhoneScript,    %0000, UnusedPhoneScript
	; phone BACKPACKERM,  BACKPACKERM_R7,            ROUTE_7_NORTH,      %1111, ParkerPhoneScript,   %0000, UnusedPhoneScript
	; phone LINEBACKER,   LINEBACKER_VILLAGE_BRIDGE, VILLAGE_BRIDGE,     %1111, DeanPhoneScript,     %0000, UnusedPhoneScript
	; phone PARASOL_LADY, PARASOL_LADY_R8,           ROUTE_8,            %1111, LoisPhoneScript,     %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	phone YOUNGSTER,    YOUNGSTER_R13,             ROUTE_13,           %1111, DanPhoneScript,      %0000, UnusedPhoneScript
	assert_table_length NUM_PHONE_CONTACTS + 1
