	db  99,  68,  83,  51,  72,  87   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GRASS, FLYING   ; type
	db 200   ; catch rate
	db 169   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for TROPIUS, CHLOROPHYLL, SOLAR_POWER, HARVEST
	db GROWTH_SLOW   ; growth rate
	dn EGG_MONSTER, EGG_PLANT   ; egg groups

	ev_yield 2 HP

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
