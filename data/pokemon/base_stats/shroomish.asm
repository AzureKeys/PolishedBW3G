	db  60,  40,  60,  35,  40,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 255  ; catch rate
	db 65  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHROOMISH, EFFECT_SPORE, POISON_HEAL, QUICK_FEET
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
