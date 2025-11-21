	db  90,  55,  65,  70,  95,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, PSYCHIC  ; type
	db 45  ; catch rate
	db 161  ; base exp
	db STARDUST, MOON_STONE  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for LUNATONE, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
