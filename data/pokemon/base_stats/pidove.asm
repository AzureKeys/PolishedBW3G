	db  50,  55,  50,  43,  36,  30  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 255  ; catch rate
	db 53  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for PIDOVE, BIG_PECKS, SUPER_LUCK, RIVALRY
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   \ ;10
	     U_TURN,       SWAGGER,      \ ;14
		 FLY,          \ ;HM
		 ROOST,        \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
