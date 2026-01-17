	db  45,  60,  30,  65,  80,  50  ; 330 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FIRE  ; type
	db 120  ; catch rate
	db 114  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for HOUNDOUR, EARLY_BIRD, FLASH_FIRE, UNNERVE
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        DREAM_EATER,  \ ;10
		 DARK_PULSE,   \ ;12
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      SWAGGER,      \ ;14
		 FIRE_FANG,    OVERHEAT,     \ ;T1
		 THUNDER_FANG, \ ;T2
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG,   HYPER_VOICE,  PAIN_SPLIT ;T7
	 ; end
