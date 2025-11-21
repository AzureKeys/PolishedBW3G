	db  45,  40,  60,  50,  40,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 255  ; catch rate
	db 74  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWABLU, NATURAL_CURE, NATURAL_CURE, CLOUD_NINE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FLYING, EGG_DRAGON  ; egg groups

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
