	db  65, 110, 130,  95,  60,  65  ; 525 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 45  ; catch rate
	db 196  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	abilities_for LEAFEON, LEAF_GUARD, LEAF_GUARD, CHLOROPHYLL
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  \ ;11
		 X_SCISSOR,    \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 STRENGTH,     \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
