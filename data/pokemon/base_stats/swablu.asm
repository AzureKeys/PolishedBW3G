	db  45,  40,  60,  50,  40,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 255  ; catch rate
	db 74  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWABLU, NATURAL_CURE, NATURAL_CURE, CLOUD_NINE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_DRAGON  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 FALSE_SWIPE,  \ ;11
		 DRAGON_PULSE, \ ;12
		 ACROBATICS,   \ ;13
	     SWAGGER,      \ ;14
		 FLY,          \ ;HM
		 ROOST,        \ ;T4
		 OUTRAGE,      \ ;T5
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
