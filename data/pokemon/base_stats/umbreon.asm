	db  95,  65, 110,  65,  60, 130   ; 525 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK   ; type
	db 45   ; catch rate
	db 197   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_SLOWER   ; gender ratio, step cycles to hatch

	abilities_for UMBREON, SYNCHRONIZE, SYNCHRONIZE, INNER_FOCUS
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 SDf

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
