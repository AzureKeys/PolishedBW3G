	db  40,  50,  90,  65,  30,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, BUG  ; type
	db 120  ; catch rate
	db 114  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SKORUPI, BATTLE_ARMOR, SNIPER, KEEN_EYE
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_WATER_3  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
