	db  60,  70,  55,  90, 125, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 75  ; catch rate
	db 204  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ROSERADE, NATURAL_CURE, POISON_POINT, TECHNICIAN
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
