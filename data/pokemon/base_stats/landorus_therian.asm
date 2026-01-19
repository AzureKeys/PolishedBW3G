	db  89, 145,  90,  91, 105,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, FLYING  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for LANDORUS_THERIAN, INTIMIDATE, INTIMIDATE, INTIMIDATE
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 ACROBATICS,   EXPLOSION,    \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 FLY,          STRENGTH,     \ ;HM
		 SEISMIC_TOSS, \ ;T3
		 DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  ANCIENTPOWER, OUTRAGE,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
