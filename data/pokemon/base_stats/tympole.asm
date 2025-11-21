	db  50,  50,  40,  64,  50,  40   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER   ; type
	db 255   ; catch rate
	db 59   ; base exp
	db PERSIM_BERRY, PECHA_BERRY   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for TYMPOLE, SWIFT_SWIM, HYDRATION, WATER_ABSORB
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_WATER_1, EGG_WATER_1   ; egg groups

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
