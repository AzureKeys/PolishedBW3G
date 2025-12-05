	db  91, 129,  90, 108,  72,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, ROCK  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for TERRAKION, JUSTIFIED, JUSTIFIED, JUSTIFIED
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
