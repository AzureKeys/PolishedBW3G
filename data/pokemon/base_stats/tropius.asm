	db  99,  68,  83,  51,  72,  87   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GRASS, FLYING   ; type
	db 200   ; catch rate
	db 169   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for TROPIUS, CHLOROPHYLL, SOLAR_POWER, HARVEST
	db GROWTH_SLOW   ; growth rate
	dn EGG_MONSTER, EGG_PLANT   ; egg groups

	ev_yield 2 HP

	  ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \  ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 STEEL_WING,   \ ;10
		 ENERGY_BALL,  \ ;11
		 DRAGON_PULSE, \ ;12
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          FLY,          STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ROOST,        \ ;T4
		 OUTRAGE,      \ ;T5
		 DOUBLE_EDGE ;T7
	  ; end
