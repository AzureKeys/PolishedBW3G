	db  75,  90,  50,  95, 110,  80  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FIRE  ; type
	db 45  ; catch rate
	db 204  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for HOUNDOOM, EARLY_BIRD, FLASH_FIRE, SOLAR_POWER
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        DREAM_EATER,  \ ;10
		 DARK_PULSE,   \ ;12
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STRENGTH
	 ; end
