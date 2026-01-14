	db  60,  90,  55, 110,  90,  80  ; 485 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 75  ; catch rate
	db 122  ; base exp
	db ORAN_BERRY, LIGHT_BALL  ; held items
	dn GENDER_F50, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for RAICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_FAIRY  ; egg groups

	ev_yield 3 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 SURF,         STRENGTH,     \ ;HM
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
