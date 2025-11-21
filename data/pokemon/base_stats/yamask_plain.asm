	db  38,  30,  85,  30,  55,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GHOST, GHOST   ; type
	db 190   ; catch rate
	db 61   ; base exp
	db SPELL_TAG, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for YAMASK, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	  ;abilities_for YAMASK, MUMMY, MUMMY, MUMMY
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE   ; egg groups

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
