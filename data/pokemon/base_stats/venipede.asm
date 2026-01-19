	db  30,  45,  59,  57,  30,  39   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, POISON   ; type
	db 255   ; catch rate
	db 52   ; base exp
	db PECHA_BERRY, POISON_BARB   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for VENIPEDE, POISON_POINT, SWARM, SPEED_BOOST
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Def

	  ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 HEX,          \ ;12
	     PAYBACK,      POISON_JAB,   SWAGGER,      \  ;14
		 GYRO_BALL,    \ ;15
		 SIGNAL_BEAM,  \ ;T3
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE ;T7
	  ; end
