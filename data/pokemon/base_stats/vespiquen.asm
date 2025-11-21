	db  70,  80, 102,  40,  80, 102   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING   ; type
	db 45   ; catch rate
	db 166   ; base exp
	db POISON_BARB, NO_ITEM   ; held items
	dn GENDER_F100, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for VESPIQUEN, PRESSURE, PRESSURE, UNNERVE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Def, 1 SDf

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
