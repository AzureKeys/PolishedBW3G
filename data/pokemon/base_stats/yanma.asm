	db  65,  65,  45,  95,  75,  45   ; 390 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING   ; type
	db 75   ; catch rate
	db 147   ; base exp
	db NO_ITEM, WIDE_LENS   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for YANMA, SPEED_BOOST, COMPOUND_EYES, FRISK
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Spe

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
