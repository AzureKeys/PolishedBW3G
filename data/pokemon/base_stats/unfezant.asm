	db  80, 105,  80,  93,  65,  55   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING   ; type
	db 45   ; catch rate
	db 220   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for UNFEZANT, BIG_PECKS, SUPER_LUCK, RIVALRY
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_FLYING, EGG_FLYING   ; egg groups

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
