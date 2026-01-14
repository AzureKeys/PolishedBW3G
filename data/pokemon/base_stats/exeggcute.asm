	db  60,  40,  80,  40,  60,  45  ; 325 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, PSYCHIC  ; type
	db 90  ; catch rate
	db 98  ; base exp
	db NO_ITEM, MARANGABERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EXEGGCUTE, CHLOROPHYLL, CHLOROPHYLL, HARVEST
	db GROWTH_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm PSYSHOCK,     \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      TRICK_ROOM,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 EXPLOSION,    \ ;13
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        ROLLOUT,      ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
