	db  55,  95, 115,  35,  45,  45  ; 390 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, GROUND  ; type
	db 120  ; catch rate
	db 134  ; base exp
	db NO_ITEM, EVERSTONE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for GRAVELER, ROCK_HEAD, STURDY, SAND_VEIL
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 EXPLOSION,    \ ;13
	     SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
