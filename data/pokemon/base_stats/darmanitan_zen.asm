	db 105,  30, 105,  55, 140, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, PSYCHIC  ; type
	db 60  ; catch rate
	db 168  ; base exp
	db RAWST_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DARMANITAN_ZEN, SHEER_FORCE, SHEER_FORCE, SHEER_FORCE  ; ZEN_MODE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 SEISMIC_TOSS, \ ;T3
		 DYNAMICPUNCH, ZEN_HEADBUTT, \  ;T4
		 TRICK,        ROLLOUT,      ANCIENTPOWER, \ ;T5
		 SUCKER_PUNCH, IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
