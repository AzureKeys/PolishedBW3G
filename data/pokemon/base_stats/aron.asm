	db  50,  70, 100,  30,  40,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, ROCK  ; type
	db 180  ; catch rate
	db 96  ; base exp
	db HARD_STONE, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	 ;abilities_for ARON, STURDY, ROCK_HEAD, HEAVY_METAL
	abilities_for ARON, STURDY, ROCK_HEAD, ROCK_HEAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_MONSTER  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     SWAGGER,      \ ;14
		 CUT,          STRENGTH,     \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
