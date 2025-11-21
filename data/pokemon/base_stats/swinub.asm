	db  50,  50,  40,  50,  30,  30  ; 250 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, GROUND  ; type
	db 225  ; catch rate
	db 78  ; base exp
	db NO_ITEM, RAWST_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWINUB, OBLIVIOUS, SNOW_CLOAK, THICK_FAT
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
