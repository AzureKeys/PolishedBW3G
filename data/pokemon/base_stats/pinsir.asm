	db  65, 125, 100,  85,  55,  70  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, BUG  ; type
	db 45  ; catch rate
	db 200  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for PINSIR, HYPER_CUTTER, MOLD_BREAKER, MOXIE
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
