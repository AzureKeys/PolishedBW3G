	db  45, 100,  45,  10,  45,  45   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GROUND, GROUND   ; type
	db 255   ; catch rate
	db 73   ; base exp
	db SOFT_SAND, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for TRAPINCH, HYPER_CUTTER, ARENA_TRAP, SHEER_FORCE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      \  ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 ROCK_SLIDE,   \ ;10
	     SWAGGER,      \  ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 GIGA_DRAIN,   FIRE_FANG,    \ ;T1
		 THUNDER_FANG, \ ;T2
		 SIGNAL_BEAM,  \ ;T3
		 EARTH_POWER,  \ ;T5
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	  ; end
