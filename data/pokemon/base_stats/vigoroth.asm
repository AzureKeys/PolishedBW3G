	db  80,  80,  80,  90,  55,  55   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL   ; type
	db 120   ; catch rate
	db 154   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for VIGOROTH, VITAL_SPIRIT, VITAL_SPIRIT, VITAL_SPIRIT
	db GROWTH_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Spe

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     POISON_JAB,   SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          STRENGTH
	 ; end
