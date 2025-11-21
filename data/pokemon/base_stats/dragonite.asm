	db  91, 134,  95,  80, 100, 100  ; 600 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING  ; type
	db 45  ; catch rate
	db 218  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for DRAGONITE, INNER_FOCUS, INNER_FOCUS, MULTISCALE
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
