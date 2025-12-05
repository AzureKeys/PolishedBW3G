	db  75, 100, 120,  65,  25,  65  ; 450 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, STEEL  ; type
	db 90  ; catch rate
	db 163  ; base exp
	db NO_ITEM, GRIP_CLAW  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SANDSLASH_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SLUSH_RUSH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 X_SCISSOR,    \ ;12
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 GYRO_BALL,    SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
