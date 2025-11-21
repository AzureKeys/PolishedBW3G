	db  65,  90, 120,  60,  85,  70   ; 490 BST
	  ;   hp  atk  def  spe  sat  sdf

	db POISON, FAIRY   ; type
	db 60   ; catch rate
	db 173   ; base exp
	db NO_ITEM, SMOKE_BALL   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WEEZING_GALARIAN, LEVITATE, NEUTRALIZING_GAS, WHITE_SMOKE
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE   ; egg groups

	ev_yield 2 Def

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
