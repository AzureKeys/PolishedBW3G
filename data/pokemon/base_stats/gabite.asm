	db  68,  90,  65,  82,  50,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, GROUND  ; type
	db 45  ; catch rate
	db 144  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	 ;abilities_for GABITE, SAND_VEIL, SAND_VEIL, ROUGH_SKIN
	abilities_for GABITE, SAND_VEIL, SAND_VEIL, SAND_VEIL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_DRAGON  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
