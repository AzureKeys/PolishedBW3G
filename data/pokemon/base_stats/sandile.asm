	db  50,  72,  35,  65,  35,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, DARK  ; type
	db 180 ; catch rate
	db 58  ; base exp
	db BLACKGLASSES, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SANDILE, INTIMIDATE, MOXIE, ANGER_POINT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

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
