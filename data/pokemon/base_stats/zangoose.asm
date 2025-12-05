	db  73, 115,  60,  90,  60,  60   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL   ; type
	db 90   ; catch rate
	db 160   ; base exp
	db NO_ITEM, QUICK_CLAW   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	  ;abilities_for ZANGOOSE, IMMUNITY, IMMUNITY, TOXIC_BOOST
	abilities_for ZANGOOSE, IMMUNITY, IMMUNITY, IMMUNITY
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
		 SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \  ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \  ;14
		 THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 CUT,          SURF,         STRENGTH
	  ; end
