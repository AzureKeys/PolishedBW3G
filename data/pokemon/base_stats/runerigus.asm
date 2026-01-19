	db  58,  95, 145,  30,  50, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GROUND  ; type
	db 90  ; catch rate
	db 169  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for RUNERIGUS, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	 ;abilities_for RUNERIGUS, WANDERING_SPIRIT, WANDERING_SPIRIT, WANDERING_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \  ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, HEX,          \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \  ;14
		 STONE_EDGE,   \ ;15
		 GIGA_DRAIN,   \ ;T1
		 ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	  ; end
