	db  50,  72,  35,  65,  35,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, DARK  ; type
	db 180 ; catch rate
	db 58  ; base exp
	db BLACKGLASSES, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SANDILE, INTIMIDATE, MOXIE, ANGER_POINT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          \ ;HM
		 FIRE_FANG,    \ ;T1
		 AQUA_TAIL,    THUNDER_FANG, \ ;T2
		 EARTH_POWER,  \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
