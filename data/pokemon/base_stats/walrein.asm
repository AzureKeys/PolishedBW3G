	db 110,  80,  90,  65,  95,  90   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ICE, WATER   ; type
	db 45   ; catch rate
	db 192   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WALREIN, THICK_FAT, ICE_BODY, OBLIVIOUS
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_WATER_1, EGG_GROUND   ; egg groups

	ev_yield 3 HP

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
