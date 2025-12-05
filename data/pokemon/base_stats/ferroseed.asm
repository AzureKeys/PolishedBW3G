	db  44,  50,  91,  10,  24,  86  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, STEEL  ; type
	db 255  ; catch rate
	db 61  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FERROSEED, ANTICIPATION, ANTICIPATION, ANTICIPATION
	 ;abilities_for FERROSEED, IRON_BARBS, IRON_BARBS, IRON_BARBS
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   THUNDERBOLT,  \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ENERGY_BALL,  \ ;11
		 EXPLOSION,    \ ;13
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL ;15
	 ; end
