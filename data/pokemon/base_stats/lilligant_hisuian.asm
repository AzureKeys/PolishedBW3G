	db  70, 105,  75, 105,  50,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, FIGHTING  ; type
	db 75 ; catch rate
	db 168  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for LILLIGANT_HISUIAN, CHLOROPHYLL, HUSTLE, LEAF_GUARD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 1 Atk, 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
		 ACROBATICS,   \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
