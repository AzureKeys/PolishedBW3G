	db  40,  50,  90,  65,  30,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, BUG  ; type
	db 120  ; catch rate
	db 114  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SKORUPI, BATTLE_ARMOR, SNIPER, KEEN_EYE
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_WATER_3  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 AQUA_TAIL,    \ ;T2
		 KNOCK_OFF ;T6
	 ; end
