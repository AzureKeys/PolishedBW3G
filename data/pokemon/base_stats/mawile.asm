	db  50,  85,  85,  50,  55,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, FAIRY  ; type
	db 45  ; catch rate
	db 98  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MAWILE, HYPER_CUTTER, INTIMIDATE, SHEER_FORCE
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_FAIRY  ; egg groups

	ev_yield 1 Atk, 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   DAZZLINGLEAM, \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 DARK_PULSE,   \ ;12
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 STRENGTH
	 ; end
