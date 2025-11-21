	db  50,  65,  65, 100,  90,  90  ; 460 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, PSYCHIC  ; type
	db 45  ; catch rate
	db 136  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch

	abilities_for MR__MIME_GALARIAN, VITAL_SPIRIT, SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

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
