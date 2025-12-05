	db  85, 135, 130,  25,  60,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ROCK  ; type
	db 45  ; catch rate
	db 232  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for GIGALITH, STURDY, SAND_STREAM, SAND_FORCE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH
	 ; end
