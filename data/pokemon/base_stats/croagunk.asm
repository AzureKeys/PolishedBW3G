	db  48,  61,  40,  50,  61,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING  ; type
	db 140  ; catch rate
	db 83  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for CROAGUNK, ANTICIPATION, DRY_SKIN, POISON_TOUCH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm TOXIC,        BULK_UP,      VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 STRENGTH
	 ; end
