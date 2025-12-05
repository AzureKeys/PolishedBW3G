	db  55,  40,  85,  40,  80, 105  ; 405 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FLYING  ; type
	db 75  ; catch rate
	db 114  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for TOGETIC, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST  ; growth rate
	dn EGG_FLYING, EGG_FAIRY  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 FLY
	 ; end
