	db 110, 123,  65,  65, 100,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIGHTING  ; type
	db 45  ; catch rate
	db 238  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EMBOAR, BLAZE, BLAZE, RECKLESS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  \ ;13
		 POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 THUNDERPUNCH, \ ;T2
		 SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
