	db  35,  70,  55,  25,  45,  55  ; 285 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, GRASS  ; type
	db 190  ; catch rate
	db 70  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PARAS, EFFECT_SPORE, DRY_SKIN, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_PLANT  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
