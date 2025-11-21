	db  67,  57,  55, 114,  77,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FLYING  ; type
	db 45  ; catch rate
	db 149  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWOOBAT, UNAWARE, UNAWARE, UNAWARE ;, KLUTZ, SIMPLE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_FLYING  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
