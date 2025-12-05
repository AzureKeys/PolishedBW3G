	db  60, 130,  80,  70,  60,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, FIGHTING  ; type
	db 90  ; catch rate
	db 165  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for BRELOOM, EFFECT_SPORE, POISON_HEAL, TECHNICIAN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm TOXIC,        BULK_UP,      VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  ENERGY_BALL,  FALSE_SWIPE,  \ ;11
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
