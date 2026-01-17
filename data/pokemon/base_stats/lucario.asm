	db  70, 110,  70,  90, 115,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, STEEL  ; type
	db 45  ; catch rate
	db 204  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for LUCARIO, STEADFAST, INNER_FOCUS, JUSTIFIED
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 STRENGTH,     \ ;HM
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
