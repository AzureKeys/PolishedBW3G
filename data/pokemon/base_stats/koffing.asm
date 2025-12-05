	db  40,  65,  95,  35,  60,  45  ; 340 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 190  ; catch rate
	db 114  ; base exp
	db NO_ITEM, SMOKE_BALL  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KOFFING, LEVITATE, NEUTRALIZING_GAS, STENCH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   \ ;12
		 WILL_O_WISP,  EXPLOSION,    \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 GYRO_BALL ;15
	 ; end
