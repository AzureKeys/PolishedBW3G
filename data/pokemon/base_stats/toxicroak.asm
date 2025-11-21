	db  83, 106,  65,  85,  86,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING   ; type
	db 75   ; catch rate
	db 181   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FASTER   ; gender ratio, step cycles to hatch

	abilities_for TOXICROAK, ANTICIPATION, DRY_SKIN, POISON_TOUCH
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE   ; egg groups

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
