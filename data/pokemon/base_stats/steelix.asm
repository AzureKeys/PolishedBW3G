	db  75,  85, 200,  30,  55,  65  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, GROUND  ; type
	db 25  ; catch rate
	db 196  ; base exp
	db NO_ITEM, METAL_COAT  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for STEELIX, SHEER_FORCE, STURDY, SAND_FORCE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 CUT,          STRENGTH
	 ; end
