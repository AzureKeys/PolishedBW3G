	db 100, 134, 110,  61,  95, 100   ; 600 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ROCK, DARK   ; type
	db 45   ; catch rate
	db 218   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for TYRANITAR, SAND_STREAM, SAND_STREAM, UNNERVE
	db GROWTH_SLOW   ; growth rate
	dn EGG_MONSTER, EGG_MONSTER   ; egg groups

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
