	db  58,  70,  45,  42,  40,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, GROUND  ; type
	db 45  ; catch rate
	db 60  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	 ;abilities_for GIBLE, SAND_VEIL, SAND_VEIL, ROUGH_SKIN
	abilities_for GIBLE, SAND_VEIL, SAND_VEIL, SAND_VEIL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_DRAGON  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
