	db  91,  90, 129, 108,  90,  72  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, STEEL  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for COBALION, JUSTIFIED, JUSTIFIED, JUSTIFIED
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   VOLT_SWITCH,  THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 ZEN_HEADBUTT, \ ;T4
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
