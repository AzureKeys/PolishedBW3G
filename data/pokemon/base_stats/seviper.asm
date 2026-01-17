	db  73, 100,  60,  65, 100,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 90  ; catch rate
	db 160  ; base exp
	db PERSIM_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SEVIPER, SHED_SKIN, SHED_SKIN, INFILTRATOR
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_DRAGON  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 X_SCISSOR,    DARK_PULSE,   \ ;12
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   FIRE_FANG,    \ ;T1
		 AQUA_TAIL,    THUNDER_FANG, ICE_FANG,     \ ;T2
		 GUNK_SHOT,    \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
