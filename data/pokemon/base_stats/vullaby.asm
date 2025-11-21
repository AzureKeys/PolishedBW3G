	db  70,  55,  75,  60,  45,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING   ; type
	db 190   ; catch rate
	db 74   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VULLABY, BIG_PECKS, OVERCOAT, WEAK_ARMOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_FLYING, EGG_FLYING   ; egg groups

	ev_yield 1 Def

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
