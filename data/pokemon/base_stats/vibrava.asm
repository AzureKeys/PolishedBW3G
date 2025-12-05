	db  50,  70,  50,  70,  50,  50   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GROUND, DRAGON   ; type
	db 120   ; catch rate
	db 126   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VIBRAVA, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Atk, 1 Spe

	  ; tm/hm learnset
	tmhm DRAGON_CLAW,  \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      \  ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 DRAGON_PULSE, \ ;12
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 STONE_EDGE,   \ ;15
		 FLY,          STRENGTH
	  ; end
