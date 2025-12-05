	db  60,  82,  45,  74,  45,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, DARK  ; type
	db 90 ; catch rate
	db 123  ; base exp
	db BLACKGLASSES, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KROKOROK, INTIMIDATE, MOXIE, ANGER_POINT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          STRENGTH
	 ; end
