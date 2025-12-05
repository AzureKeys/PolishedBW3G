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
	tmhm HONE_CLAWS,   \ ;1
	     VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	 ; end
