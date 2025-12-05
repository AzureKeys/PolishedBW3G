	db  70,  90, 110,  95,  60,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, DARK  ; type
	db 45  ; catch rate
	db 204  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DRAPION, BATTLE_ARMOR, SNIPER, KEEN_EYE
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_WATER_3  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
