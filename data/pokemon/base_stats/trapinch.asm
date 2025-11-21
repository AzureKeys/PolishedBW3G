	db  45, 100,  45,  10,  45,  45   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GROUND, GROUND   ; type
	db 255   ; catch rate
	db 73   ; base exp
	db SOFT_SAND, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for TRAPINCH, HYPER_CUTTER, ARENA_TRAP, SHEER_FORCE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
