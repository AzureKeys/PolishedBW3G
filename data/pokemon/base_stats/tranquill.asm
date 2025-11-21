	db  62,  77,  62,  65,  50,  42   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING   ; type
	db 120   ; catch rate
	db 125   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for TRANQUILL, BIG_PECKS, SUPER_LUCK, RIVALRY
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_FLYING, EGG_FLYING   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
