	db  45,  63,  37,  95,  65,  55  ; 360 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 45  ; catch rate
	db 106  ; base exp
	db PERSIM_BERRY, ELECTIRIZER  ; held items
	dn GENDER_F25, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ELEKID, STATIC, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  \ ;12
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
