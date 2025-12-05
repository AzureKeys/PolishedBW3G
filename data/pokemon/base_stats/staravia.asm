	db  55,  75,  50,  80,  40,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 120  ; catch rate
	db 119  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for STARAVIA, INTIMIDATE, INTIMIDATE, RECKLESS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   \ ;10
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 FLY
	 ; end
