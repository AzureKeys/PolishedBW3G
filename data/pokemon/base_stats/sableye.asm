	db  50,  75,  75,  50,  65,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, GHOST  ; type
	db 45  ; catch rate
	db 133  ; base exp
	db NO_ITEM, WIDE_LENS  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for SABLEYE, KEEN_EYE, STALL, PRANKSTER
	abilities_for SABLEYE, KEEN_EYE, KEEN_EYE, PRANKSTER
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 Atk, 1 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 CUT
	 ; end
