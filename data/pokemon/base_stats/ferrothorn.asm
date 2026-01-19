	db  74,  94, 131,  20,  54, 116  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, STEEL  ; type
	db 90  ; catch rate
	db 171  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FERROTHORN, ANTICIPATION, ANTICIPATION, ANTICIPATION
	 ;abilities_for FERROTHORN, IRON_BARBS, IRON_BARBS, ANTICIPATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_MINERAL  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ENERGY_BALL,  \ ;11
		 EXPLOSION,    SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
