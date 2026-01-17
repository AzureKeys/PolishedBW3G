	db  65,  63,  45,  45,  45,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 45  ; catch rate
	db 62  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for TEPIG, BLAZE, BLAZE, THICK_FAT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  \ ;13
		 SWAGGER,      \ ;14
		 GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
