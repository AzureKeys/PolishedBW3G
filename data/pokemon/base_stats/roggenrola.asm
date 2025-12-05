	db  55,  75,  85,  15,  25,  25  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ROCK  ; type
	db 255  ; catch rate
	db 56  ; base exp
	db EVERSTONE, HARD_STONE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for ROGGENROLA, STURDY, WEAK_ARMOR, SAND_FORCE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

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
