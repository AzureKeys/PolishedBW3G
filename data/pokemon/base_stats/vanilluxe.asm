	db  71,  95,  85,  79, 110,  95   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE   ; type
	db 45   ; catch rate
	db 241   ; base exp
	db NEVERMELTICE, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VANILLUXE, ICE_BODY, SNOW_WARNING, WEAK_ARMOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_MINERAL, EGG_MINERAL   ; egg groups

	ev_yield 3 SAt

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
