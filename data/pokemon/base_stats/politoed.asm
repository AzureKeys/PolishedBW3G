	db  90,  75,  75,  70,  90, 100  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 45  ; catch rate
	db 185  ; base exp
	db NO_ITEM, KINGS_ROCK  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for POLITOED, WATER_ABSORB, DAMP, DRIZZLE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 3 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
