	db  70,  90, 110,  95,  60,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, DARK  ; type
	db 45  ; catch rate
	db 204  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DRAPION, BATTLE_ARMOR, SNIPER, KEEN_EYE
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_WATER_3  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
