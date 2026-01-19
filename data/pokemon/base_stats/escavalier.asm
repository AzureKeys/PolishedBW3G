	db  70, 135, 105,  20,  60, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, STEEL  ; type
	db 75  ; catch rate
	db 173  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for ESCAVALIER, SWARM, SHELL_ARMOR, OVERCOAT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 FOCUS_BLAST,  ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 GIGA_DRAIN,   \ ;T1
		 SIGNAL_BEAM,  \ ;T3
		 KNOCK_OFF,    IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
