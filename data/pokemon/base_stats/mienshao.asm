	db  65, 125,  60, 105,  95,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, FIGHTING  ; type
	db 45  ; catch rate
	db 179  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MIENSHAO, INNER_FOCUS, REGENERATOR, RECKLESS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 ACROBATICS,   \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 STRENGTH
	 ; end
