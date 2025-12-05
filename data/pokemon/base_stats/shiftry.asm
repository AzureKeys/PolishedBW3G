	db  90, 100,  60,  80,  90,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, DARK  ; type
	db 45  ; catch rate
	db 216  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHIFTRY, CHLOROPHYLL, EARLY_BIRD, PICKPOCKET
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_PLANT  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  EXPLOSION,    \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
