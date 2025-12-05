	db 140,  70,  45,  45,  85,  50   ; 435 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY   ; type
	db 50   ; catch rate
	db 109   ; base exp
	db ORAN_BERRY, ORAN_BERRY   ; held items
	dn GENDER_F75, HATCH_FASTER   ; gender ratio, step cycles to hatch

	abilities_for WIGGLYTUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST   ; growth rate
	dn EGG_FAIRY, EGG_FAIRY   ; egg groups

	ev_yield 3 HP

	  ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
		 WILD_CHARGE,  DARK_PULSE,   \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
