	db  70, 105, 105,  20,  50,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ROCK  ; type
	db 120  ; catch rate
	db 137  ; base exp
	db EVERSTONE, HARD_STONE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for BOLDORE, STURDY, WEAK_ARMOR, SAND_FORCE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Atk, 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 EXPLOSION,    \ ;13
	     SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH
	 ; end
