	db  74,  94, 131,  20,  54, 116  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, STEEL  ; type
	db 90  ; catch rate
	db 171  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FERROTHORN, ANTICIPATION, ANTICIPATION, ANTICIPATION
	 ;abilities_for FERROTHORN, IRON_BARBS, IRON_BARBS, ANTICIPATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_MINERAL  ; egg groups

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
