	db  60, 130,  80,  70,  60,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, FIGHTING  ; type
	db 90  ; catch rate
	db 165  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for BRELOOM, EFFECT_SPORE, POISON_HEAL, TECHNICIAN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

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
