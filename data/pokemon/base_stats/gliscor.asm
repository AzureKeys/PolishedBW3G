	db  75,  95, 125,  95,  45,  75  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, FLYING  ; type
	db 30  ; catch rate
	db 192  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GLISCOR, HYPER_CUTTER, SAND_VEIL, POISON_HEAL
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          FLY,          STRENGTH
	 ; end
