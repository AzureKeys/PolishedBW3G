	db  35,  55,  40,  60,  45,  40   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC   ; type
	db 190   ; catch rate
	db 55   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for TYNAMO, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_SLOW   ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE   ; egg groups

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
