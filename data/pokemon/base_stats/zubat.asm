	db  40,  45,  35,  55,  30,  40   ; 245 BST
	  ;   hp  atk  def  spe  sat  sdf

	db POISON, FLYING   ; type
	db 255   ; catch rate
	db 54   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for ZUBAT, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_FLYING, EGG_FLYING   ; egg groups

	ev_yield 1 Spe

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
