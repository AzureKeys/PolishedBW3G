	db  40,  30,  30,  85,  55,  30   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING   ; type
	db 190   ; catch rate
	db 54   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WINGULL, KEEN_EYE, HYDRATION, RAIN_DISH
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_WATER_1, EGG_FLYING   ; egg groups

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
