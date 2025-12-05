	db  36,  50,  50,  44,  65,  60   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE   ; type
	db 255   ; catch rate
	db 61   ; base exp
	db NEVERMELTICE, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VANILLITE, ICE_BODY, SNOW_CLOAK, WEAK_ARMOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_MINERAL, EGG_MINERAL   ; egg groups

	ev_yield 1 SAt

	  ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \  ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  REFLECT,      \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 WATER_PULSE,  EXPLOSION,    \ ;13
	     SWAGGER  ;14
	  ; end
