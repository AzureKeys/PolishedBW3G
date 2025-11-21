	db  65,  95, 100,  50,  60,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON  ; type
	db 45  ; catch rate
	db 147  ; base exp
	db NO_ITEM, DRAGON_FANG  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for SHELGON, ROCK_HEAD, ROCK_HEAD, OVERCOAT
	db GROWTH_SLOW  ; growth rate
	dn EGG_DRAGON, EGG_DRAGON  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
