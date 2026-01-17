	db  90,  75,  85,  55, 115,  90  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 45  ; catch rate
	db 194  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for AMPHAROS, STATIC, STATIC, MOLD_BREAKER
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_GROUND  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  DRAGON_PULSE, \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 OUTRAGE,      \ ;T5
		 DOUBLE_EDGE,  HEAL_BELL ;T7
	 ; end
