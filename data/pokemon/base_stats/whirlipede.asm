	db  40,  55,  99,  47,  40,  79   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, POISON   ; type
	db 120   ; catch rate
	db 126   ; base exp
	db PECHA_BERRY, POISON_BARB   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for WHIRLIPEDE, POISON_POINT, SWARM, SPEED_BOOST
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 2 Def

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
		 GYRO_BALL ;15
	  ; end
