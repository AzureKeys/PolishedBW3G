	db  60, 100,  89, 112,  55,  69  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, POISON  ; type
	db 45  ; catch rate
	db 218  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SCOLIPEDE, POISON_POINT, SWARM, SPEED_BOOST
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 3 Spe

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      \  ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 ROCK_SLIDE,   \ ;10
		 X_SCISSOR,    HEX,          \ ;12
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 GYRO_BALL,    SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 AQUA_TAIL,    \ ;T2
		 SIGNAL_BEAM,  GUNK_SHOT,    \ ;T3
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE ;T7
	  ; end
