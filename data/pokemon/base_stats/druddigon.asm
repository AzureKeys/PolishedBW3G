	db  77, 120,  90,  48,  60,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON  ; type
	db 45  ; catch rate
	db 170  ; base exp
	db NO_ITEM, DRAGON_FANG  ; held items
	dn GENDER_F50, HATCH_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for DRUDDIGON, ROUGH_SKIN, SHEER_FORCE, MOLD_BREAKER
	abilities_for DRUDDIGON, SHEER_FORCE, SHEER_FORCE, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_DRAGON, EGG_MONSTER  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          SURF,         STRENGTH
	 ; end
