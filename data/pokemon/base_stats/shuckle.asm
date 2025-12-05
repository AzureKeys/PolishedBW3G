	db  20,  10, 230,  05,  10, 230  ; 505 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, ROCK  ; type
	db 190  ; catch rate
	db 80  ; base exp
	db ALWAYS_ITEM_2, BERRY_JUICE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHUCKLE, STURDY, GLUTTONY, CONTRARY
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 1 Def, 1 SDf

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
	     SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
