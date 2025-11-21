	db  91,  90,  72, 108,  90, 129   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, GRASS   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for VIRIZION, JUSTIFIED, JUSTIFIED, JUSTIFIED
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 SDf

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
