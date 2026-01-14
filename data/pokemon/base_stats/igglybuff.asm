	db  90,  30,  15,  15,  40,  20  ; 210 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY  ; type
	db 150  ; catch rate
	db 39  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for IGGLYBUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 WILD_CHARGE,  \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      \ ;T5
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 HYPER_VOICE,  HEAL_BELL,    PAIN_SPLIT ;T7
	 ; end
