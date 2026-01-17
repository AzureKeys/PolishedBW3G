	db  70,  70,  40,  60,  60,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, DARK  ; type
	db 120  ; catch rate
	db 119  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for NUZLEAF, CHLOROPHYLL, EARLY_BIRD, PICKPOCKET
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_PLANT  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 DARK_PULSE,   \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 LOW_KICK,     \ ;T4
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
