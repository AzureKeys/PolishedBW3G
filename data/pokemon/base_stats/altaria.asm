	db  75,  70,  90,  80,  70, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING  ; type
	db 45  ; catch rate
	db 188  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ALTARIA, NATURAL_CURE, NATURAL_CURE, CLOUD_NINE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_DRAGON  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
