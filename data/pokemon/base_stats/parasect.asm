	db  60,  95,  80,  30,  60,  80  ; 405 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, GRASS  ; type
	db 75  ; catch rate
	db 128  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PARASECT, EFFECT_SPORE, DRY_SKIN, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_PLANT  ; egg groups

	ev_yield 2 Atk, 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
