	db  60,  85,  69,  77,  60,  69   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL   ; type
	db 255   ; catch rate
	db 147   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for WATCHOG, ILLUMINATE, KEEN_EYE, ANALYTIC
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
