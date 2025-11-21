	db  95, 105,  85,  45, 125,  75  ; 530 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, DRAGON  ; type
	db 45  ; catch rate
	db 212  ; base exp
	db NO_ITEM, SITRUS_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EXEGGUTOR_ALOLAN, FRISK, FRISK, HARVEST
	db GROWTH_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
