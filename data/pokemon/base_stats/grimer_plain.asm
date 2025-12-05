	db  80,  80,  50,  25,  40,  50  ; 325 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 190  ; catch rate
	db 90  ; base exp
	db BLACK_SLUDGE, NUGGET  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GRIMER, STENCH, STICKY_HOLD, POISON_TOUCH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 HEX,          \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 STRENGTH
	 ; end
