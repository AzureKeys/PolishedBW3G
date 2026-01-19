	db  50,  75,  70,  48,  35,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FIGHTING  ; type
	db 180  ; catch rate
	db 70  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SCRAGGY, SHED_SKIN, MOXIE, INTIMIDATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_DRAGON  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm DRAGON_CLAW,  ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
