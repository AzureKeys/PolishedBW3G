	db  65,  90, 115,  58,  45, 115  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FIGHTING  ; type
	db 90  ; catch rate
	db 171  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SCRAFTY, SHED_SKIN, MOXIE, INTIMIDATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_DRAGON  ; egg groups

	ev_yield 1 Def, 1 SDf

	 ; tm/hm learnset
	tmhm DRAGON_CLAW,  ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 STRENGTH
	 ; end
