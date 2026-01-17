	db  75,  98,  63, 101,  98,  63  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 75  ; catch rate
	db 174  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SIMIPOUR, GLUTTONY, GLUTTONY, TORRENT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          SURF,         WATERFALL,    \ ;HM
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
