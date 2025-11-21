	db  90,  92,  75,  60,  92,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, ICE  ; type
	db 60  ; catch rate
	db 173  ; base exp
	db NO_ITEM, NEVERMELTICE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ABOMASNOW, SNOW_WARNING, SNOW_WARNING, SOUNDPROOF
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_PLANT  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
