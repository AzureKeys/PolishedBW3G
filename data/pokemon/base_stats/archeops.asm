	db  75, 140,  65, 110, 112,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, FLYING  ; type
	db 45  ; catch rate
	db 177  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ARCHEOPS, SOLID_ROCK, STURDY, SWIFT_SWIM
	 ;abilities_for ARCHEOPS, DEFEATIST, DEFEATIST, DEFEATIST
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_WATER_3  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
