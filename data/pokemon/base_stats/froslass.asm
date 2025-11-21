	db  70,  80,  70, 110,  80,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, GHOST  ; type
	db 75  ; catch rate
	db 187  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FROSLASS, SNOW_CLOAK, SNOW_CLOAK, CURSED_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_MINERAL  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
