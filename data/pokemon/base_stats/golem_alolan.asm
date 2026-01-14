	db  80, 120, 130,  45,  55,  65  ; 495 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ELECTRIC  ; type
	db 45  ; catch rate
	db 177  ; base exp
	db NO_ITEM, EVERSTONE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for GOLEM_ALOLAN, MAGNET_PULL, STURDY, GALVANIZE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 3 Def

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  \ ;12
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   VOLT_SWITCH,  THUNDER_WAVE, GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 SEISMIC_TOSS, \ ;T3
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 SUCKER_PUNCH, IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
