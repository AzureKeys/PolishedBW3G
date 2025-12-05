	db  70, 100,  70,  40, 105,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, GROUND  ; type
	db 150  ; catch rate
	db 175  ; base exp
	db RAWST_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CAMERUPT, MAGMA_ARMOR, SOLID_ROCK, ANGER_POINT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     ROCK_SLIDE,   \ ;10
		 WILL_O_WISP,  EXPLOSION,    \ ;13
		 GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH
	 ; end
