	db  70, 100, 115,  30,  30,  65  ; 410 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ROCK  ; type
	db 65  ; catch rate
	db 135  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SUDOWOODO, STURDY, ROCK_HEAD, RATTLED
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  ROLLOUT,      \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
