	db  75,  70,  90,  80,  70, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING  ; type
	db 45  ; catch rate
	db 188  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ALTARIA, NATURAL_CURE, NATURAL_CURE, CLOUD_NINE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_DRAGON  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 FALSE_SWIPE,  \ ;11
		 DRAGON_PULSE, \ ;12
		 WILL_O_WISP,  ACROBATICS,   \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 FLY,          \ ;HM
		 ROOST,        \ ;T4
		 OUTRAGE,      \ ;T5
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
