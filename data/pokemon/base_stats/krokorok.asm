	db  60,  82,  45,  74,  45,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, DARK  ; type
	db 90 ; catch rate
	db 123  ; base exp
	db BLACKGLASSES, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KROKOROK, INTIMIDATE, MOXIE, ANGER_POINT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

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
