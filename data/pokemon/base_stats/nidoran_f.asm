	db  55,  47,  52,  41,  40,  40  ; 275 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 235  ; catch rate
	db 59  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for NIDORAN_F, POISON_POINT, RIVALRY, HUSTLE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_GROUND  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     POISON_JAB,   SWAGGER,      \ ;14
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 THUNDER_FANG, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 EARTH_POWER,  \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
