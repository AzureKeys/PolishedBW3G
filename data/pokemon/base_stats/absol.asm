	db  65, 130,  60,  75,  75,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK  ; type
	db 30  ; catch rate
	db 163  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ABSOL, PRESSURE, SUPER_LUCK, JUSTIFIED
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 THUNDER_FANG, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
