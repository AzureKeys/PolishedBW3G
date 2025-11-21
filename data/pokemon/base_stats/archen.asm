	db  55, 112,  45,  70,  74,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, FLYING  ; type
	db 45  ; catch rate
	db 71  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOW  ; gender ratio, step cycles to hatch

	abilities_for ARCHEN, SOLID_ROCK, STURDY, SWIFT_SWIM
	 ;abilities_for ARCHEN, DEFEATIST, DEFEATIST, DEFEATIST
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_WATER_3  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
