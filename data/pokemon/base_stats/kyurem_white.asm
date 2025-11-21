	db 125, 120,  90,  95, 170, 100  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, ICE  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for KYUREM_WHITE, PRESSURE, PRESSURE, PRESSURE
	 ;abilities_for KYUREM_WHITE, TURBOBLAZE, TURBOBLAZE, TURBOBLAZE
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
