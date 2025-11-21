	db  79, 115,  70, 111, 125,  80   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db FLYING, FLYING   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F0, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for TORNADUS, PRANKSTER, PRANKSTER, DEFIANT
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
