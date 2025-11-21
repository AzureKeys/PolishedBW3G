	db 105, 140,  55,  95,  30,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 60  ; catch rate
	db 168  ; base exp
	db ASPEAR_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DARMANITAN_GALARIAN, GORILLA_TACTICS, GORILLA_TACTICS, GORILLA_TACTICS
	 ;abilities_for DARMANITAN_GALARIAN, GORILLA_TACTICS, GORILLA_TACTICS, ZEN_MODE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

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
