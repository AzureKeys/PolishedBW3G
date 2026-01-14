	db  30,  45,  55,  85,  70,  55  ; 340 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 225  ; catch rate
	db 106  ; base exp
	db STARDUST, 0  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for STARYU, ILLUMINATE, NATURAL_CURE, ANALYTIC
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_3, EGG_WATER_3  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 DAZZLINGLEAM, \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
