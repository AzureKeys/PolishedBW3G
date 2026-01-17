	db  35,  20,  65,  20,  40,  65  ; 245 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FAIRY  ; type
	db 190  ; catch rate
	db 74  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for TOGEPI, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        ROLLOUT,      ANCIENTPOWER, \ ;T5
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
