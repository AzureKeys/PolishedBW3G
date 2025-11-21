	db  80,  95,  82,  75,  60,  82  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 60  ; catch rate
	db 166  ; base exp
	db SILK_SCARF, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GARBODOR, STENCH, WEAK_ARMOR, AFTERMATH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

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
