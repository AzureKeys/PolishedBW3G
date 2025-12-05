	db  65,  95,  57,  93, 100,  85  ; 495 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 45  ; catch rate
	db 167  ; base exp
	db ASPEAR_BERRY, MAGMARIZER  ; held items
	dn GENDER_F25, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MAGMAR, FLAME_BODY, FLAME_BODY, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILL_O_WISP,  \ ;13
		 POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STRENGTH
	 ; end
