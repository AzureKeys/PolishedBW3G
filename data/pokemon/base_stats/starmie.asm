	db  60,  75,  85, 115, 100,  85  ; 520 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, PSYCHIC  ; type
	db 60  ; catch rate
	db 207  ; base exp
	db STARDUST, 0  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for STARMIE, ILLUMINATE, NATURAL_CURE, ANALYTIC
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_3, EGG_WATER_3  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm PSYSHOCK,     \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        ROLLOUT,      ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
