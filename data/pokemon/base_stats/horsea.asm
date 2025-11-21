	db  30,  40,  70,  60,  70,  25  ; 295 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 225  ; catch rate
	db 83  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for HORSEA, SWIFT_SWIM, SNIPER, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
