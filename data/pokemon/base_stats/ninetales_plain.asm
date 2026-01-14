	db  73,  76,  75, 100,  81, 100  ; 505 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 75  ; catch rate
	db 178  ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY  ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for NINETALES, FLASH_FIRE, FLASH_FIRE, DROUGHT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe, 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 FIRE_FANG,    OVERHEAT,     \ ;T1
		 ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	  ; end
