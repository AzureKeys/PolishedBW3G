	db  80,  95,  82,  75,  60,  82  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON  ; type
	db 60  ; catch rate
	db 166  ; base exp
	db SILK_SCARF, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GARBODOR, STENCH, WEAK_ARMOR, AFTERMATH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
		 SOLAR_BEAM,   THUNDERBOLT,  \ ;5
	     RETURN,       PSYCHIC,      \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \  ;14
		 STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  \ ;T4
		 ROLLOUT,      ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	  ; end
