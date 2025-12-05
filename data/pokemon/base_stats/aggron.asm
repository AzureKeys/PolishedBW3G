	db  70, 110, 180,  50,  60,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, ROCK  ; type
	db 45  ; catch rate
	db 205  ; base exp
	db HARD_STONE, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	 ;abilities_for AGGRON, STURDY, ROCK_HEAD, HEAVY_METAL
	abilities_for AGGRON, STURDY, ROCK_HEAD, ROCK_HEAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_MONSTER  ; egg groups

	ev_yield 3 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 CUT,          SURF,         STRENGTH
	 ; end
