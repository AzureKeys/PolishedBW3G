	db 105, 105,  75,  50,  65, 100  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 75  ; catch rate
	db 157  ; base exp
	db BLACK_SLUDGE, NUGGET  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MUK, STENCH, STICKY_HOLD, POISON_TOUCH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 HP, 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
