	db  38,  55,  85,  30,  30,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GHOST, GROUND   ; type
	db 190   ; catch rate
	db 61   ; base exp
	db SPELL_TAG, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for YAMASK_GALARIAN, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	  ;abilities_for YAMASK_GALARIAN, WANDERING_SPIRIT, WANDERING_SPIRIT, WANDERING_SPIRIT
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
