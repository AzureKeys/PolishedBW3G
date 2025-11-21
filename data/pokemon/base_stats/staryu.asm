	db  30,  45,  55,  85,  70,  55  ; 340 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 225  ; catch rate
	db 106  ; base exp
	db STARDUST, STAR_PIECE  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for STARYU, ILLUMINATE, NATURAL_CURE, ANALYTIC
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_3, EGG_WATER_3  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
