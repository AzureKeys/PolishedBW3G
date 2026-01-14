	db  35,  45, 160,  70,  30,  45  ; 385 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, GROUND  ; type
	db 45  ; catch rate
	db 108  ; base exp
	db LAGGING_TAIL, HARD_STONE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ONIX, ROCK_HEAD, STURDY, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 DRAGON_PULSE, \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
