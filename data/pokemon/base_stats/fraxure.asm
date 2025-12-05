	db  66, 117,  70,  67,  40,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON  ; type
	db 60  ; catch rate
	db 144  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for FRAXURE, RIVALRY, MOLD_BREAKER, UNNERVE
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_DRAGON  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          SURF,         STRENGTH
	 ; end
