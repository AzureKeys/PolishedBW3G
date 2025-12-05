	db  67,  89, 116,  33,  79, 116  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, PSYCHIC  ; type
	db 90  ; catch rate
	db 175  ; base exp
	db NO_ITEM, METAL_COAT  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	 ;abilities_for BRONZONG, LEVITATE, HEATPROOF, HEAVY_METAL
	abilities_for BRONZONG, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def, 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     SOLAR_BEAM,   \ ;5
		 EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 HEX,          \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
