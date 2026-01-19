	db  55, 112,  45,  70,  74,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, FLYING  ; type
	db 45  ; catch rate
	db 71  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ARCHEN, SOLID_ROCK, STURDY, SWIFT_SWIM
	 ;abilities_for ARCHEN, DEFEATIST, DEFEATIST, DEFEATIST
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_WATER_3  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 DRAGON_PULSE, \ ;12
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          \ ;HM
		 AQUA_TAIL,    \ ;T2
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
