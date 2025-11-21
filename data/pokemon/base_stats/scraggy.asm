	db  50,  75,  70,  48,  35,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FIGHTING  ; type
	db 180  ; catch rate
	db 70  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SCRAGGY, SHED_SKIN, MOXIE, INTIMIDATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_DRAGON  ; egg groups

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
