	db 105,  95,  75,  74,  85,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GROUND  ; type
	db 45  ; catch rate
	db 229  ; base exp
	db PERSIM_BERRY, PECHA_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SEISMITOAD, SWIFT_SWIM, POISON_TOUCH, WATER_ABSORB
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 3 HP

	 ; tm/hm learnset
	tmhm TOXIC,        HAIL,         VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \  ;14
		 SURF,         STRENGTH,     WATERFALL
	  ; end
