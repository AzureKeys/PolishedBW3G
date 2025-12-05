	db  50,  40,  85,  25,  40,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, BUG  ; type
	db 200  ; catch rate
	db 61  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHELMET, HYDRATION, SHELL_ARMOR, OVERCOAT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
	     SWAGGER ;14
	 ; end
