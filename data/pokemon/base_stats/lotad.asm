	db  40,  30,  30,  30,  40,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GRASS  ; type
	db 255  ; catch rate
	db 44  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for LOTAD, SWIFT_SWIM, RAIN_DISH, OWN_TEMPO
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_PLANT  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
