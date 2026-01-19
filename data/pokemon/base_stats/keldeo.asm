	db  91,  72,  90, 108, 129,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, WATER  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for KELDEO, JUSTIFIED, JUSTIFIED, JUSTIFIED
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     HAIL,         BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 FOCUS_BLAST,  FALSE_SWIPE,  SCALD,        \ ;11
		 X_SCISSOR,    \ ;12
		 WATER_PULSE,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 AQUA_TAIL,    \ ;T2
		 ICY_WIND,     \ ;T3
		 LOW_KICK,     ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
