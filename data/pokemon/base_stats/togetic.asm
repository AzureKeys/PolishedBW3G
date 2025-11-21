	db  55,  40,  85,  40,  80, 105  ; 405 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FLYING  ; type
	db 75  ; catch rate
	db 114  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for TOGETIC, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST  ; growth rate
	dn EGG_FLYING, EGG_FAIRY  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
