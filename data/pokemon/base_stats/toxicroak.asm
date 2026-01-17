	db  83, 106,  65,  85,  86,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING   ; type
	db 75   ; catch rate
	db 181   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FASTER   ; gender ratio, step cycles to hatch

	abilities_for TOXICROAK, ANTICIPATION, DRY_SKIN, POISON_TOUCH
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm TOXIC,        BULK_UP,      VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    ICY_WIND,     GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG,   HYPER_VOICE ;T7
	 ; end
