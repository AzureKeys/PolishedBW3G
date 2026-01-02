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
	tmhm HONE_CLAWS,   \ ;1
	     VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	 ; end
