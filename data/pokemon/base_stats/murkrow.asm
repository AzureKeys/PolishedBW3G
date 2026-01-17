	db  60,  85,  42,  91,  85,  42  ; 405 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING  ; type
	db 30  ; catch rate
	db 107  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MURKROW, INSOMNIA, SUPER_LUCK, PRANKSTER
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   DREAM_EATER,  \ ;10
		 DARK_PULSE,   HEX,          \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 FLY,          \ ;HM
		 ICY_WIND,     \ ;T3
		 ROOST,        \ ;T4
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
