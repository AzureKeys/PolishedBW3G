	db  65,  83,  57, 105,  95,  85  ; 490 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 45  ; catch rate
	db 156  ; base exp
	db PERSIM_BERRY, ELECTIRIZER  ; held items
	dn GENDER_F25, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ELECTABUZZ, STATIC, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm BULK_UP,      HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
