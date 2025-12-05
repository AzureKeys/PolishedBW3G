	db  50,  75,  45,  60,  40,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, BUG  ; type
	db 200  ; catch rate
	db 63  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for KARRABLAST, SWARM, SHED_SKIN, NO_GUARD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     POISON_JAB,   SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	 ; end
